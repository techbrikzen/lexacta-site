<script lang="ts">
  import { Check, Sparkles } from "lucide-svelte";
  import targetPlans from "$lib/data/pricing.json";

  let isAnnual = $state(true);

  // We can treat it as the same structure
  const plans = targetPlans;
</script>

<section id="precios" class="py-24 bg-white">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    
    <div class="text-center max-w-3xl mx-auto mb-16">
      <h2 class="font-display font-bold text-3xl md:text-5xl text-primary mb-6 leading-tight">
        Precios claros, sin sorpresas, <br class="hidden md:block"/>
        <span class="italic text-text-dark/80">sin letra chica.</span>
      </h2>
      <p class="font-body text-xl text-text-dark/70 mb-8">
        Todo incluido. Sin costo por usuario extra. Garantía de satisfacción 30 días.
      </p>

      <!-- Toggle Switch -->
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
    </div>

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
      {#each plans as plan}
        <div class={`relative flex flex-col rounded-3xl p-8 transition-transform duration-300 hover:-translate-y-2 border ${plan.highlight ? 'bg-primary text-white border-primary shadow-2xl shadow-primary/20 scale-105 z-10' : plan.dark ? 'bg-gray-50 border-gray-200' : 'bg-white border-gray-200 shadow-lg shadow-gray-200/50'}`}>
          
          {#if plan.badge}
            <div class="absolute -top-4 left-1/2 -translate-x-1/2 bg-accent text-white font-ui font-bold text-xs uppercase tracking-widest px-4 py-1.5 rounded-full flex items-center gap-1 shadow-md">
              <Sparkles size={14} />
              {plan.badge}
            </div>
          {/if}

          <div class="mb-6">
            <h3 class={`font-ui font-bold text-sm tracking-wider uppercase mb-2 ${plan.highlight ? 'text-accent' : 'text-primary'}`}>
              {plan.name}
            </h3>
            <div class="flex items-baseline gap-1">
              {#if plan.prefix}
                <span class={`text-sm ${plan.highlight ? 'text-gray-300' : 'text-gray-500'}`}>{plan.prefix}</span>
              {/if}
              <span class="text-2xl font-bold font-display">$</span>
              <span class="text-5xl font-bold font-display tracking-tight">{isAnnual ? plan.priceAnnual : plan.priceMonthly}</span>
              <span class={`text-sm ${plan.highlight ? 'text-gray-300' : 'text-gray-500'}`}>/mes</span>
            </div>
            <p class={`mt-3 text-sm font-medium ${plan.highlight ? 'text-gray-300' : 'text-primary/70'}`}>
              {plan.audience}
            </p>
          </div>

          <div class={`flex-1 pt-6 border-t ${plan.highlight ? 'border-white/20' : 'border-gray-100'}`}>
            <ul class="space-y-4 mb-8">
              {#each plan.features as feature}
                <li class="flex items-start gap-3">
                  <span class={`mt-0.5 flex-shrink-0 ${plan.highlight ? 'text-accent' : 'text-success'}`}>
                    <Check size={18} />
                  </span>
                  <span class={`font-body text-sm leading-snug ${plan.highlight ? 'text-gray-100' : 'text-text-dark/80'}`}>
                    {@html feature}
                  </span>
                </li>
              {/each}
            </ul>
          </div>

          <a href="#registro" class={`mt-auto w-full py-4 rounded-xl text-center font-bold transition-colors ${plan.highlight ? 'bg-accent hover:bg-yellow-600 text-white shadow-lg' : plan.dark ? 'bg-primary hover:bg-primary-light text-white' : 'bg-gray-100 hover:bg-gray-200 text-primary'}`}>
            {plan.cta}
          </a>
          <!-- Friction-zero microcopy -->
          <p class={`text-center text-xs mt-4 font-ui opacity-70 ${plan.highlight || plan.dark ? 'text-white' : 'text-text-dark'}`}>
            Sin tarjeta. Cancelás con 1 clic.
          </p>

        </div>
      {/each}
    </div>

  </div>
</section>
