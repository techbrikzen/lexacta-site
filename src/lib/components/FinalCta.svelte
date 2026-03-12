<script lang="ts">
  import { ArrowRight } from "lucide-svelte";
</script>

<section class="py-24 bg-primary text-white relative overflow-hidden">
  
  <!-- Texture overlay -->
  <div class="absolute inset-0 opacity-20 bg-[url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI0IiBoZWlnaHQ9IjQiPjxyZWN0IHdpZHRoPSI0IiBoZWlnaHQ9IjQiIGZpbGw9IiNmZmYiIGZpbGwtb3BhY2l0eT0iMC4wNSIvPjwvc3ZnPg==')]"></div>

  <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center relative z-10">
    
    <h2 class="font-display font-bold text-4xl md:text-5xl lg:text-6xl mb-8 leading-tight">
      Tu próximo caso difícil <br class="hidden md:block"/>
      <span class="text-accent italic">ya tiene solución.</span>
    </h2>
    
    <p class="font-body text-xl md:text-2xl text-gray-300 mb-12 max-w-2xl mx-auto">
      Probá LEXACTA 7 días gratis — sin tarjeta, sin compromiso.
    </p>
    
    <a href="#registro" class="inline-flex flex-col sm:flex-row items-center justify-center gap-2 bg-accent hover:bg-yellow-600 text-white px-10 py-5 rounded-xl text-xl font-bold transition-all shadow-xl hover:shadow-2xl hover:-translate-y-1 font-ui mb-6">
      Empezar ahora
      <ArrowRight size={24} class="hidden sm:block" />
    </a>
    
    <p class="font-ui text-sm text-gray-400">
      Más de <strong class="text-white">1,200</strong> abogados ya confían en LEXACTA. Únete a la comunidad.
    </p>

  </div>
</section>
