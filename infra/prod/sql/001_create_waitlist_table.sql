-- 1. Create the schema (Idempotent)
create schema if not exists lxa_demo;

-- 2. Create the table inside lxa_demo (Idempotent)
create table if not exists lxa_demo.waitlist (
  id uuid not null default gen_random_uuid(),
  name text not null,
  email text not null,
  created_at timestamp with time zone not null default now(),
  
  constraint waitlist_pkey primary key (id),
  constraint waitlist_email_key unique (email)
);

-- 3. Enable Row Level Security (RLS) (Idempotent-ish, safe to run multiple times)
alter table lxa_demo.waitlist enable row level security;

-- 4. Create Policy: Allow read access only to authenticated users (admins) to the TABLE
-- We drop it first to ensure idempotency if we change the definition later.
drop policy if exists "Allow read access to authenticated users" on lxa_demo.waitlist;

create policy "Allow read access to authenticated users"
on lxa_demo.waitlist
for select
to authenticated
using (true);

-- 5. Create Function to register interest inside lxa_demo
-- This function is inherently safe from SQL Injection because it uses parameters (p_name, p_email).
-- We add explicit sanitization (TRIM, LOWER) and validation.

create or replace function lxa_demo.register_interest(
  p_name text,
  p_email text
)
returns void
language plpgsql
security definer
-- Set search_path to ensure function uses lxa_demo schema securely
set search_path = lxa_demo, public
as $$
declare
  v_safe_email text;
  v_safe_name text;
begin
  -- Sanitization: Trim whitespace and lowercase email
  v_safe_name := trim(p_name);
  v_safe_email := lower(trim(p_email));

  -- Validation: Basic email format check
  if v_safe_email !~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$' then
    raise exception 'Formato de email inválido';
  end if;

  if length(v_safe_name) < 2 then
    raise exception 'El nombre es muy corto';
  end if;

  -- Insert (Parameter binding prevents SQL Injection)
  insert into lxa_demo.waitlist (name, email)
  values (v_safe_name, v_safe_email)
  on conflict (email) do nothing;
end;
$$;

-- 6. Permissions (Idempotent grants)
-- Grant usage on the schema to anon/authenticated so they can access objects inside
grant usage on schema lxa_demo to anon, authenticated;

-- Grant execute permission on the function to anon/authenticated
grant execute on function lxa_demo.register_interest(text, text) to anon, authenticated;

-- Grant select permission on the table to authenticated (for reading via dashboard/admin tools)
grant select on table lxa_demo.waitlist to authenticated;
