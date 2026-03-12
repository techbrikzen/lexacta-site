<script lang="ts">
  import { ShieldQuestion, Lightbulb, BellRing } from "lucide-svelte";
  import FeatureCard from "./ui/FeatureCard.svelte";
</script>

<section class="py-24 bg-primary text-white relative overflow-hidden">
  
  <!-- Abstract background pattern -->
  <div class="absolute inset-0 opacity-10">
    <svg width="100%" height="100%" xmlns="http://www.w3.org/2000/svg">
      <defs>
        <pattern id="gridPattern" width="60" height="60" patternUnits="userSpaceOnUse">
          <path d="M 60 0 L 0 0 0 60" fill="none" stroke="currentColor" stroke-width="1"/>
        </pattern>
      </defs>
      <rect width="100%" height="100%" fill="url(#gridPattern)" />
    </svg>
  </div>
  
  <!-- Subtle Glow -->
  <div class="absolute top-0 right-0 w-96 h-96 bg-accent/20 blur-[120px] rounded-full"></div>

  <div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 z-10">
    
    <div class="text-center max-w-3xl mx-auto mb-16">
      <h2 class="font-display font-bold text-3xl md:text-5xl mb-6 leading-tight">
        Inteligencia artificial auditable, diseñada para <br class="hidden md:block" />
        <span class="text-accent italic">el trabajo jurídico real.</span>
      </h2>
      <p class="font-body text-xl text-white/80">
        Lexacta no busca reemplazar tu criterio profesional. Busca fortalecerlo.
      </p>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
      
      <FeatureCard 
        title="Asistencia y análisis inteligente"
        text="Analizamos casos complejos, procesamos miles de fojas y te sugerimos estrategias concretas basadas en información estructurada."
        icon={Lightbulb}
        darkTheme={true}
      />

      <FeatureCard 
        title="Validación y revisión profesional"
        text="Vos siempre tenés la última palabra. La tecnología acompaña y propone, pero el abogado dispone, aprueba y firma."
        icon={ShieldQuestion}
        darkTheme={true}
      />

      <FeatureCard 
        title="Trazabilidad y visibilidad total"
        text="Mantené el control sobre la información generada. Cada sugerencia de la IA está vinculada al documento original para facilitar tu revisión."
        icon={BellRing}
        darkTheme={true}
      />

    </div>

  </div>
</section>
