<script lang="ts">
  import { Check, Sparkles } from "lucide-svelte";

  interface Props {
    name: string;
    priceMonthly: number | string;
    priceAnnual: number | string;
    audience: string;
    features: string[];
    cta: string;
    highlight?: boolean;
    dark?: boolean;
    badge?: string;
    prefix?: string;
    isAnnual?: boolean;
    ctaHref?: string;
  }

  let {
    name,
    priceMonthly,
    priceAnnual,
    audience,
    features,
    cta,
    highlight = false,
    dark = false,
    badge = "",
    prefix = "",
    isAnnual = true,
    ctaHref = "https://www.brikzen.ar/contacto/",
  }: Props = $props();

  const cardClass = $derived(
    `relative flex flex-col rounded-3xl p-8 transition-transform duration-300 hover:-translate-y-2 border ${
      highlight
        ? "bg-primary text-white border-primary shadow-2xl shadow-primary/20 scale-105 z-10"
        : dark
          ? "bg-gray-50 border-gray-200"
          : "bg-white border-gray-200 shadow-lg shadow-gray-200/50"
    }`
  );
</script>

<div class={cardClass}>

  {#if badge}
    <div class="absolute -top-4 left-1/2 -translate-x-1/2 bg-accent text-white font-ui font-bold text-xs uppercase tracking-widest px-4 py-1.5 rounded-full flex items-center gap-1 shadow-md">
      <Sparkles size={14} />
      {badge}
    </div>
  {/if}

  <div class="mb-6">
    <h3 class={`font-ui font-bold text-sm tracking-wider uppercase mb-2 ${highlight ? "text-accent" : "text-primary"}`}>
      {name}
    </h3>
    {#if false}
      <!-- Price hidden temporarily — uncomment to restore -->
      <div class="flex items-baseline gap-1">
        {#if prefix}
          <span class={`text-sm ${highlight ? "text-gray-300" : "text-gray-500"}`}>{prefix}</span>
        {/if}
        <span class="text-2xl font-bold font-display">$</span>
        <span class="text-5xl font-bold font-display tracking-tight">
          {isAnnual ? priceAnnual : priceMonthly}
        </span>
        <span class={`text-sm ${highlight ? "text-gray-300" : "text-gray-500"}`}>/mes</span>
      </div>
      <p class={`mt-3 text-sm font-medium ${highlight ? "text-gray-300" : "text-primary/70"}`}>
        {audience}
      </p>
    {/if}
  </div>

  <!-- Features -->
  <div class={`flex-1 pt-6 border-t ${highlight ? "border-white/20" : "border-gray-100"}`}>
    <ul class="space-y-4 mb-8">
      {#each features as feature}
        <li class="flex items-start gap-3">
          <span class={`mt-0.5 flex-shrink-0 ${highlight ? "text-accent" : "text-success"}`}>
            <Check size={18} />
          </span>
          <span class={`font-body text-sm leading-snug ${highlight ? "text-gray-100" : "text-text-dark/80"}`}>
            {@html feature}
          </span>
        </li>
      {/each}
    </ul>
  </div>

  <!-- CTA -->
  <a
    href={ctaHref}
    target="_blank"
    rel="noopener noreferrer"
    class={`mt-auto w-full py-4 rounded-xl text-center font-bold transition-colors ${
      highlight
        ? "bg-accent hover:bg-yellow-600 text-white shadow-lg"
        : dark
          ? "bg-primary hover:bg-primary-light text-white"
          : "bg-gray-100 hover:bg-gray-200 text-primary"
    }`}
  >
    {cta}
  </a>
  <p class={`text-center text-xs mt-4 font-ui opacity-70 ${highlight || dark ? "text-white" : "text-text-dark"}`}>
    Cancelás con 1 clic.
  </p>

</div>
