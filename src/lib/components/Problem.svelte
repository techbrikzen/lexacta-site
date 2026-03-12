<script lang="ts">
  import { Scale, Clock, FileText } from "lucide-svelte";
  import FeatureCard from "./ui/FeatureCard.svelte";
</script>

<section id="problema" class="py-24 bg-white/50">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    
    <div class="text-center max-w-3xl mx-auto mb-16">
      <h2 class="font-display font-bold text-3xl md:text-4xl text-primary mb-6">
        La realidad del ejercicio profesional que nadie te enseñó
      </h2>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
      
      <FeatureCard 
        title="Te llega un caso laboral y sos civilista"
        text="Errores de plazos, términos incorrectos, estrategias equivocadas. Sin guía, el riesgo es tuyo."
        icon={Scale}
      />
      
      <FeatureCard 
        title="Los plazos no esperan"
        text="Una fecha vencida puede hundir el mejor caso. ¿Estás 100% seguro de todos tus vencimientos de hoy?"
        icon={Clock}
      />

      <FeatureCard 
        title="Escribir el escrito correcto lleva horas"
        text="Buscar plantillas, adaptar terminología, revisar jurisprudencia... tiempo que no te pagan."
        icon={FileText}
      />

    </div>

  </div>
</section>
