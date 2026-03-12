<script lang="ts">
  import { ArrowRight, Check, PlayCircle } from "lucide-svelte";
  import Button from "./ui/Button.svelte";
  import VideoModal from "./VideoModal.svelte";
  
  let showVideo = false;
</script>

<div class="relative bg-base pt-32 pb-20 lg:pt-40 lg:pb-32 overflow-hidden">
  
  <div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
    
    <!-- Text Content -->
    <div class="flex flex-col items-start text-left z-10">
      
      <h1 class="font-display font-bold text-5xl md:text-6xl text-primary leading-tight mb-6">
        ¿Tomaste un caso fuera de tu especialidad?
      </h1>
      
      <p class="font-body text-xl md:text-2xl text-text-dark/80 mb-10 leading-relaxed max-w-2xl">
        LEXACTA es el asistente legal que te guía paso a paso para que no cometas errores costosos. Como tener un senior a tu lado, sin el costo de uno.
      </p>

      <!-- CTAs -->
      <div class="flex flex-col sm:flex-row gap-4 w-full sm:w-auto mb-10 font-ui">
        <Button href="#registro" variant="accent" size="lg">
          Empezar gratis — 7 días sin tarjeta
        </Button>
        <Button onclick={() => showVideo = true} variant="outline" size="lg">
          <PlayCircle size={20} />
          Ver cómo funciona
        </Button>
      </div>

      <!-- Trust Indicators -->
      <div class="flex flex-wrap gap-x-6 gap-y-3 text-sm md:text-base text-text-dark/70 font-ui font-medium">
        <div class="flex items-center gap-2">
          <Check size={18} class="text-success" />
          <span>Sin permanencia</span>
        </div>
        <div class="flex items-center gap-2">
          <Check size={18} class="text-success" />
          <span>Configuración en 15 minutos</span>
        </div>
        <div class="flex items-center gap-2">
          <Check size={18} class="text-success" />
          <span>Soporte en lenguaje de abogados</span>
        </div>
      </div>
      
    </div>

    <!-- Visual Mockup -->
    <div class="relative z-10 w-full">
      <div class="absolute inset-0 bg-accent/10 blur-[100px] rounded-full"></div>
      
      <!-- Dashboard Mockup Card -->
      <div class="relative bg-white rounded-2xl shadow-2xl border border-gray-100 overflow-hidden transform rotate-1 hover:rotate-0 transition-transform duration-500">
        <!-- Mockup Header -->
        <div class="bg-primary px-4 py-3 flex items-center justify-between">
          <div class="flex items-center gap-2">
            <div class="w-3 h-3 rounded-full bg-danger"></div>
            <div class="w-3 h-3 rounded-full bg-warning"></div>
            <div class="w-3 h-3 rounded-full bg-success"></div>
          </div>
          <div class="text-white/80 text-xs font-ui font-medium">lexacta.com/dashboard</div>
          <div class="w-8 h-8 rounded-full bg-white/10 flex items-center justify-center text-white text-xs font-bold">AB</div>
        </div>
        
        <!-- Mockup Body -->
        <div class="p-6">
          <div class="flex items-center justify-between mb-6">
            <h3 class="font-display font-bold text-xl text-primary">Expedientes Recientes</h3>
            <span class="bg-primary/5 text-primary text-xs font-bold px-3 py-1 rounded-full uppercase tracking-wider">Modo Primer Caso: ON</span>
          </div>
          
          <div class="space-y-4">
            <!-- Mockup Items -->
            <div class="bg-white border-2 border-gray-100 rounded-xl p-4 flex justify-between items-center shadow-sm">
              <div>
                <div class="flex items-center gap-2 mb-1">
                  <span class="font-bold text-text-dark">Garcia c/ Municipalidad de BA</span>
                  <span class="bg-warning/10 text-warning text-xs font-bold px-2 py-0.5 rounded">Urgente</span>
                </div>
                <div class="text-sm text-text-dark/60">Vence 15/03 · Civil · Juzgado 12</div>
              </div>
              <div class="w-2 h-10 bg-warning rounded-full"></div>
            </div>
            
            <div class="bg-white border-2 border-gray-100 rounded-xl p-4 flex justify-between items-center shadow-sm">
              <div>
                <div class="flex items-center gap-2 mb-1">
                  <span class="font-bold text-text-dark">Rodríguez Sucesión</span>
                  <span class="bg-primary/10 text-primary text-xs font-bold px-2 py-0.5 rounded">En proceso</span>
                </div>
                <div class="text-sm text-text-dark/60">Última actividad: hoy · Notarial</div>
              </div>
              <div class="w-2 h-10 bg-primary rounded-full"></div>
            </div>
            
            <!-- AI Suggestion Box -->
            <div class="mt-6 bg-primary/5 border border-primary/20 rounded-xl p-4 flex gap-4 items-start">
              <div class="bg-primary text-accent w-8 h-8 rounded flex items-center justify-center shrink-0">
                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M12 2l3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01L12 2z"></path></svg>
              </div>
              <div>
                <p class="text-sm font-medium text-primary leading-snug"><strong>Lexacta Asistente:</strong> He redactado el borrador del oficio para Garcia. Revisalo y firmá — está listo para presentar y evitar la caducidad.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
  </div>
</div>

<VideoModal bind:show={showVideo} />
