<script lang="ts">
  import {
    Briefcase,
    ShieldAlert,
    Users,
    LayoutDashboard,
    Calculator,
    CalendarClock,
    FileText,
    Sparkles,
    GitBranch,
    ShieldCheck,
    ListChecks,
    BookOpenText,
    Activity,
    MessageCircle,
    Smartphone,
    PenTool,
    Folders,
    ScanText,
    CircleDollarSign,
    CalendarRange,
    ArrowRight
  } from "lucide-svelte";

  let activeTab = $state(0);

  const modules = [
    {
      id: "laboral",
      tabTitle: "Lex-Laboral",
      icon: Briefcase,
      title: "Para cuando un caso laboral llega a tu estudio",
      features: [
        { icon: Calculator, text: "Calculadora de indemnizaciones actualizada con jurisprudencia local" },
        { icon: CalendarClock, text: "Gestor de plazos con alertas por WhatsApp" },
        { icon: FileText, text: "Generador de escritos adaptados al tipo de caso" },
        { icon: Sparkles, text: "Modo 'Primer Caso': guía como si tuvieras un laboralista al lado", isStar: true },
      ],
      badge: "Modo Primer Caso",
      imageColor: "bg-blue-100",
      imageStroke: "stroke-blue-600",
    },
    {
      id: "penal",
      tabTitle: "Lex-Penal",
      icon: ShieldAlert,
      title: "Para causas penales en un estudio generalista",
      features: [
        { icon: GitBranch, text: "Línea de tiempo penal interactiva", isStar: true },
        { icon: ShieldCheck, text: "Generador de defensas preliminares por tipo de delito" },
        { icon: ListChecks, text: "Checklist de preparación para audiencias" },
        { icon: BookOpenText, text: "Base de estrategias defensivas con historial de éxito" },
      ],
      badge: "Línea de Tiempo Interactiva",
      imageColor: "bg-red-100",
      imageStroke: "stroke-red-600",
    },
    {
      id: "portal",
      tabTitle: "Portal Cliente",
      icon: Users,
      title: "Tus clientes siempre informados, vos siempre tranquilo",
      features: [
        { icon: Activity, text: "Semáforo visual del estado del proceso (Verde / Amarillo / Rojo)" },
        { icon: MessageCircle, text: "Mensajería encriptada directa" },
        { icon: Smartphone, text: "Notificaciones automáticas por WhatsApp" },
        { icon: PenTool, text: "Firma digital de documentos integrada" },
      ],
      badge: "",
      imageColor: "bg-green-100",
      imageStroke: "stroke-green-600",
    },
    {
      id: "despacho",
      tabTitle: "Mi Despacho",
      icon: LayoutDashboard,
      title: "Tu estudio organizado desde un solo lugar",
      features: [
        { icon: Folders, text: "Dashboard con todos los casos de un vistazo" },
        { icon: ScanText, text: "OCR que clasifica documentos automáticamente" },
        { icon: CircleDollarSign, text: "Control de honorarios y facturación por etapas" },
        { icon: CalendarRange, text: "Integración con Google Calendar y Office 365" },
      ],
      badge: "",
      imageColor: "bg-purple-100",
      imageStroke: "stroke-purple-600",
    },
  ];
</script>

<section id="funcionalidades" class="py-24 bg-white">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    
    <div class="text-center max-w-4xl mx-auto mb-16">
      <h2 class="font-display font-bold text-3xl md:text-5xl text-primary mb-6 leading-tight">
        Todo lo que necesitás para trabajar con confianza, <span class="text-accent italic">aunque no seas el experto.</span>
      </h2>
    </div>

    <!-- Tabs Navigation -->
    <div class="flex flex-wrap justify-center gap-2 mb-12">
      {#each modules as mod, i}
        <button
          class="flex items-center gap-2 px-6 py-3 rounded-full font-ui font-bold text-sm transition-all duration-300 {activeTab === i ? 'bg-primary text-white shadow-md scale-105' : 'bg-base text-text-dark/70 hover:bg-gray-100'}"
          onclick={() => activeTab = i}
        >
          <svelte:component this={mod.icon} size={18} />
          {mod.tabTitle}
        </button>
      {/each}
    </div>

    <!-- Active Tab Content -->
    <div class="bg-base border border-gray-200 rounded-3xl p-8 md:p-12 shadow-xl shadow-primary/5">
      <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
        
        <!-- Text Column -->
        <div>
          {#if modules[activeTab].badge}
            <div class="inline-flex items-center gap-1 bg-accent/10 text-accent px-3 py-1 rounded-full text-xs font-bold uppercase tracking-wider mb-6">
              <Sparkles size={14} />
              {modules[activeTab].badge}
            </div>
          {/if}
          
          <h3 class="font-display font-bold text-3xl md:text-4xl text-primary mb-8 leading-tight">
            {modules[activeTab].title}
          </h3>
          
          <div class="space-y-6">
            {#each modules[activeTab].features as feature}
              <div class="flex items-start gap-4">
                <div class="mt-1 flex-shrink-0 w-8 h-8 rounded-full {feature.isStar ? 'bg-accent/20 text-accent' : 'bg-white border border-gray-200 text-primary'} flex items-center justify-center shadow-sm">
                  <svelte:component this={feature.icon} size={16} />
                </div>
                <div>
                  <p class="font-body text-lg text-text-dark leading-snug {feature.isStar ? 'font-semibold' : ''}">
                    {feature.text}
                  </p>
                </div>
              </div>
            {/each}
          </div>
          
          <div class="mt-10">
            <a href="#registro" class="inline-flex items-center gap-2 text-primary font-bold hover:text-accent transition-colors">
              Explorar el módulo completo <ArrowRight size={20} />
            </a>
          </div>
        </div>

        <!-- Visual / Illustration Column (Abstract Representation) -->
        <div class="relative h-96 bg-white rounded-2xl border border-gray-100 flex items-center justify-center p-8 overflow-hidden group shadow-inner">
          <div class="absolute inset-0 bg-gradient-to-br from-transparent to-base/50"></div>
          
          <!-- Decorative abstract graphic -->
          <div class="relative z-10 w-full h-full flex flex-col items-center justify-center gap-6">
            <div class={`w-32 h-32 rounded-full ${modules[activeTab].imageColor} flex items-center justify-center shadow-lg group-hover:scale-110 transition-transform duration-500`}>
               <svelte:component this={modules[activeTab].icon} size={64} class={`${modules[activeTab].imageStroke} opacity-80`} />
            </div>
            
            <div class="w-3/4 h-2 bg-gray-100 rounded-full overflow-hidden">
               <div class="h-full bg-accent/50 w-2/3 rounded-full animate-pulse"></div>
            </div>
            <div class="w-1/2 h-2 bg-gray-100 rounded-full"></div>
            
            <!-- Floating Elements -->
            <div class="absolute top-10 left-10 w-12 h-12 bg-white rounded-xl shadow-md border border-gray-100 flex items-center justify-center animate-bounce" style="animation-delay: 0.2s">
              <svelte:component this={modules[activeTab].features[0].icon} size={20} class="text-primary" />
            </div>
            <div class="absolute bottom-10 right-10 w-12 h-12 bg-white rounded-xl shadow-md border border-gray-100 flex items-center justify-center animate-bounce" style="animation-delay: 0.5s">
              <svelte:component this={modules[activeTab].features[1].icon} size={20} class="text-primary" />
            </div>
          </div>
        </div>

      </div>
    </div>

  </div>
</section>
