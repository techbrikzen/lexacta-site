<script lang="ts">
  import { ArrowRight, Gift } from "lucide-svelte";
</script>

<div class="bg-gradient-to-r from-accent to-yellow-600 text-white py-12 px-4 shadow-inner relative overflow-hidden">
  
  <div class="absolute inset-0 opacity-10 bg-[url('data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGNpcmNsZSBjeD0iMiIgY3k9IjIiIHI9IjIiIGZpbGw9IiNmZmYiLz48L3N2Zz4=')]"></div>

  <div class="max-w-4xl mx-auto text-center relative z-10">
    <div class="inline-flex items-center justify-center gap-2 bg-white/20 px-4 py-1.5 rounded-full text-sm font-bold uppercase tracking-widest mb-6 shadow-sm font-ui text-white">
      <Gift size={16} />
      Oferta de lanzamiento
    </div>
    
    <h3 class="font-display font-bold text-3xl md:text-5xl mb-6 leading-tight">
      Primer mes GRATIS + 50% de descuento <br class="hidden md:block"/>por 6 meses
    </h3>
    
    <p class="font-body text-xl text-white/90 mb-8 max-w-2xl mx-auto">
      Oferta válida exclusivamente para los primeros 100 inscriptos. <br />
      Sin compromiso. Sin permanencia.
    </p>
    
    <a href="https://www.brikzen.ar/contacto/" target="_blank" rel="noopener noreferrer" class="inline-flex items-center justify-center gap-2 bg-primary hover:bg-primary-light text-white px-8 py-4 rounded-lg text-lg font-bold transition-all shadow-xl hover:shadow-2xl hover:-translate-y-0.5 font-ui">
      Quiero aprovechar la oferta
      <ArrowRight size={20} />
    </a>
  </div>
</div>
