<script lang="ts">
  import type { Snippet } from 'svelte';

  export let href: string | undefined = undefined;
  export let onclick: (() => void) | undefined = undefined;
  export let variant: 'primary' | 'secondary' | 'accent' | 'outline' = 'primary';
  export let size: 'sm' | 'md' | 'lg' = 'md';
  export let width: 'auto' | 'full' = 'auto';
  export let shadow: boolean = true;
  export let extraClasses: string = '';

  const baseClasses = 'inline-flex items-center justify-center gap-2 font-ui font-bold rounded-lg transition-all focus:outline-none focus:ring-2 focus:ring-offset-2';
  
  const variantClasses = {
    primary: 'bg-primary hover:bg-primary-light text-white focus:ring-primary shadow-xl hover:shadow-2xl text-shadow',
    accent: 'bg-accent hover:bg-yellow-600 text-white focus:ring-accent shadow-xl hover:shadow-2xl shadow-accent/20 hover:-translate-y-0.5',
    secondary: 'bg-white/10 hover:bg-white/20 text-white border border-white/20 backdrop-blur-md',
    outline: 'bg-transparent hover:bg-primary/5 text-primary border-2 border-primary/10 hover:border-primary/20',
  };

  const sizeClasses = {
    sm: 'px-6 py-2.5 text-sm',
    md: 'px-8 py-4 text-lg',
    lg: 'px-10 py-5 text-xl',
  };

  const widthClasses = {
    auto: '',
    full: 'w-full',
  };

  $: computedClasses = `${baseClasses} ${variantClasses[variant]} ${sizeClasses[size]} ${widthClasses[width]} ${!shadow ? 'shadow-none hover:shadow-none' : ''} ${extraClasses}`;
</script>

{#if href}
  <a {href} class={computedClasses} {...$$restProps}>
    <slot />
  </a>
{:else}
  <button {onclick} class={computedClasses} {...$$restProps}>
    <slot />
  </button>
{/if}
