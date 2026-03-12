<script lang="ts">
  import { CheckCircle2, Circle, Clock } from "lucide-svelte";
</script>

<section class="py-24 bg-base">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="text-center max-w-3xl mx-auto mb-16">
      <h2 class="font-display font-bold text-3xl md:text-4xl text-primary mb-6">
        Nuestro plan de crecimiento — <span class="text-accent italic">ya en marcha</span>
      </h2>
    </div>

    <!-- Timeline Wrapper -->
    <div class="relative max-w-5xl mx-auto">
      
      <!-- Connecting Line -->
      <div class="hidden md:block absolute top-1/2 left-[10%] right-[10%] h-1 bg-gray-200 -translate-y-1/2 rounded-full z-0">
        <div class="absolute left-0 top-0 h-full bg-success w-[20%] rounded-full"></div>
      </div>

      <!-- Vertical line for mobile -->
      <div class="md:hidden absolute top-[5%] bottom-[5%] left-8 w-1 bg-gray-200 rounded-full z-0">
         <div class="absolute top-0 left-0 w-full h-[20%] bg-success rounded-full"></div>
      </div>

      <div class="grid grid-cols-1 md:grid-cols-3 gap-12 md:gap-8 relative z-10">
        
        <!-- Phase 1 -->
        <div class="flex flex-row md:flex-col items-center gap-6 md:gap-4 group">
          <div class="w-16 h-16 bg-success text-white rounded-full flex items-center justify-center shadow-md shadow-success/20 shrink-0 z-10">
            <CheckCircle2 size={28} />
          </div>
          <div class="bg-white p-6 rounded-2xl shadow-sm border border-gray-100 flex-1 md:w-full md:text-center group-hover:shadow-md transition-shadow">
            <span class="text-xs font-bold font-ui text-success uppercase tracking-wider mb-2 block">Fase 1 (Ahora)</span>
            <p class="font-body text-text-dark/80 text-sm md:text-base leading-relaxed">
              Módulo Laboral<br/>Portal Cliente<br/>WhatsApp + Calendar
            </p>
          </div>
        </div>

        <!-- Phase 2 -->
        <div class="flex flex-row md:flex-col items-center gap-6 md:gap-4 group opacity-80 hover:opacity-100 transition-opacity">
          <div class="w-16 h-16 bg-white border-4 border-accent text-accent rounded-full flex items-center justify-center shadow-md shrink-0 z-10 relative">
            <div class="absolute -inset-2 rounded-full border border-accent/30 animate-ping opacity-50"></div>
            <Clock size={28} />
          </div>
          <div class="bg-white p-6 rounded-2xl shadow-sm border border-gray-100 flex-1 md:w-full md:text-center group-hover:shadow-md transition-shadow">
            <span class="text-xs font-bold font-ui text-accent uppercase tracking-wider mb-2 block">Fase 2 (Mes 4)</span>
            <p class="font-body text-text-dark/80 text-sm md:text-base leading-relaxed">
              Módulo Penal<br/>Asistentes Inteligentes<br/>App Móvil PWA
            </p>
          </div>
        </div>

        <!-- Phase 3 -->
        <div class="flex flex-row md:flex-col items-center gap-6 md:gap-4 group opacity-60 hover:opacity-100 transition-opacity">
          <div class="w-16 h-16 bg-white border-4 border-gray-200 text-gray-400 rounded-full flex items-center justify-center shadow-sm shrink-0 z-10">
            <Circle size={24} />
          </div>
          <div class="bg-white p-6 rounded-2xl shadow-sm border border-gray-100 flex-1 md:w-full md:text-center group-hover:shadow-md transition-shadow">
            <span class="text-xs font-bold font-ui text-gray-400 uppercase tracking-wider mb-2 block">Fase 3 (Mes 7)</span>
            <p class="font-body text-text-dark/80 text-sm md:text-base leading-relaxed">
              Portal Corporativo<br/>Microsoft Copilot<br/>Sistemas Judiciales (API)
            </p>
          </div>
        </div>

      </div>
    </div>
  </div>
</section>
