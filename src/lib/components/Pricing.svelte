<script lang="ts">
  import targetPlans from "$lib/data/pricing.json";
  import PricingCard from "$lib/components/ui/PricingCard.svelte";

  let isAnnual = $state(true);

  const plans = targetPlans;
</script>

<section id="precios" class="py-24 bg-white">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    
    <div class="text-center max-w-3xl mx-auto mb-16">
      <h2 class="font-display font-bold text-3xl md:text-5xl text-primary mb-4 leading-tight">
        Precios claros, sin sorpresas,<br class="hidden md:block"/>
        <span class="italic text-text-dark/80">sin letra chica.</span>
      </h2>
      <p class="font-body text-lg text-text-dark/60 mb-8">
        Todo incluido desde el primer día.
      </p>

      <!-- Trust badges -->
      <div class="flex flex-wrap items-center justify-center gap-4 mb-10">
        <span class="inline-flex items-center gap-2 bg-green-50 text-green-700 font-ui font-semibold text-sm px-4 py-2 rounded-full border border-green-200">
          ✅ Garantía de satisfacción 30 días
        </span>
        <span class="inline-flex items-center gap-2 bg-primary/5 text-primary font-ui font-semibold text-sm px-4 py-2 rounded-full border border-primary/20">
          🔒 Sin permanencia · Cancelás con 1 clic
        </span>
      </div>

      {#if false}
      <!-- Toggle hidden temporarily — remove {#if false} to restore -->
      <div class="flex items-center justify-center gap-4">
        <span class={`font-ui font-medium ${!isAnnual ? 'text-primary' : 'text-gray-400'}`}>Mensual</span>
        <button 
          class="relative inline-flex h-8 w-16 items-center rounded-full bg-primary transition-colors focus:outline-none focus:ring-2 focus:ring-accent focus:ring-offset-2"
          onclick={() => isAnnual = !isAnnual}
          aria-label="Toggle annual pricing"
        >
          <span class={`inline-block h-6 w-6 transform rounded-full bg-white transition-transform ${isAnnual ? 'translate-x-9' : 'translate-x-1'}`}></span>
        </button>
        <span class={`font-ui font-medium flex items-center gap-2 ${isAnnual ? 'text-primary' : 'text-gray-400'}`}>
          Anual 
          <span class="bg-accent/10 text-accent text-xs font-bold px-2 py-0.5 rounded-full uppercase">2 meses gratis</span>
        </span>
      </div>
      {/if}
    </div>

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
      {#each plans as plan}
        <PricingCard
          name={plan.name}
          priceMonthly={plan.priceMonthly}
          priceAnnual={plan.priceAnnual}
          audience={plan.audience}
          features={plan.features}
          cta={plan.cta}
          highlight={plan.highlight}
          dark={plan.dark}
          badge={plan.badge}
          prefix={plan.prefix}
          {isAnnual}
        />
      {/each}
    </div>

  </div>
</section>
