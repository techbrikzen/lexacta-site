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
        Tres asistentes que trabajan mientras vos <br class="hidden md:block" />
        <span class="text-accent italic">te concentrás en tu cliente.</span>
      </h2>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
      
      <FeatureCard 
        title='"No soy especialista en..."'
        text='Seleccioná el fuero que no es el tuyo. LEXACTA te da el checklist de errores a evitar, el glosario del fuero y acceso a consultas con especialistas de la red.'
        icon={ShieldQuestion}
        darkTheme={true}
      />

      <FeatureCard 
        title='"¿Qué haría un experto?"'
        text='Analizamos casos similares exitosos y te sugerimos 3 estrategias con porcentaje histórico de éxito, costos y tiempos estimados.'
        icon={Lightbulb}
        darkTheme={true}
      />

      <FeatureCard 
        title='"Evitá la caducidad"'
        text='Alertas escalonadas a 7 días, 3 días y 24 horas por WhatsApp y email. Verificación automática con feriados judiciales locales.'
        icon={BellRing}
        darkTheme={true}
      />

    </div>

  </div>
</section>
