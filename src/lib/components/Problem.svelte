<script lang="ts">
  import { Scale, Clock, FileText } from "lucide-svelte";
  import FeatureCard from "./ui/FeatureCard.svelte";
</script>

<section id="problema" class="py-24 bg-white/50">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    
    <div class="text-center max-w-3xl mx-auto mb-16">
      <h2 class="font-display font-bold text-3xl md:text-4xl text-primary mb-6">
        El problema no es solo la cantidad de trabajo. <br/>
        <span class="text-accent italic">Es la complejidad de gestionarlo bien.</span>
      </h2>
      <p class="font-body text-xl text-text-dark/70">
        Cuando la información está fragmentada, el equipo legal trabaja más lento, con más esfuerzo y menos visibilidad.
      </p>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
      
      <FeatureCard 
        title="Expedientes y documentos dispersos"
        text="Múltiples escritos, fojas y pruebas en diferentes lugares. Riesgo de perder contexto o tiempo valioso buscando lo que necesitás."
        icon={FileText}
      />
      
      <FeatureCard 
        title="Tareas operativas repetitivas"
        text="Adaptar terminología, buscar antecedentes y organizar la información te roba horas que no son facturables."
        icon={Clock}
      />

      <FeatureCard 
        title="Seguimiento manual y riesgoso"
        text="Llevar el control de plazos y actuaciones sin un sistema automatizado aumenta el margen de error humano."
        icon={Scale}
      />

    </div>

  </div>
</section>
