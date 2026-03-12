<script lang="ts">
  import {
    Briefcase,
    ShieldAlert,
    Users,
    LayoutDashboard,
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
    ArrowRight,
    Clock
  } from "lucide-svelte";

  let activeTab = $state(0);

  type Feature = { icon: any; text: string; isStar?: boolean };
  type Module = { id: string; tabTitle: string; icon: any; title: string; features: Feature[]; badge: string; imageColor: string; imageStroke: string; };

  const modules: Module[] = [
    {
      id: "gestion",
      tabTitle: "Gestión Centralizada",
      icon: Folders,
      title: "Todo el contexto del caso en un solo lugar",
      features: [
        { icon: FileText, text: "Reúne expedientes, archivos, notas y antecedentes." },
        { icon: Users, text: "Comparte información clave con tu equipo de trabajo de forma segura." },
        { icon: LayoutDashboard, text: "Visualiza el estado global de todos tus casos en un dashboard." },
        { icon: ScanText, text: "Clasificación automática de documentos ingresados.", isStar: true },
      ],
      badge: "Orden Constante",
      imageColor: "bg-blue-100",
      imageStroke: "stroke-blue-600",
    },
    {
      id: "analisis",
      tabTitle: "IA Auditable",
      icon: Sparkles,
      title: "Convierte volumen en claridad operativa",
      features: [
        { icon: FileText, text: "Resume documentos extensos para acelerar la comprensión.", isStar: true },
        { icon: ShieldCheck, text: "Generación de reportes ejecutivos automáticos." },
        { icon: BookOpenText, text: "Identifica puntos clave para la estrategia legal." },
        { icon: GitBranch, text: "Cada sugerencia mantiene el enlace a la foja original." },
      ],
      badge: "Trazabilidad Total",
      imageColor: "bg-purple-100",
      imageStroke: "stroke-purple-600",
    },
    {
      id: "automatizacion",
      tabTitle: "Automatización",
      icon: Activity,
      title: "Reduce tiempo en tareas operativas",
      features: [
        { icon: Clock, text: "Control y seguimiento automático de vencimientos." },
        { icon: MessageCircle, text: "Notificaciones proactivas de cambios en el expediente." },
        { icon: PenTool, text: "Generación de borradores y plantillas adaptadas al fuero." },
        { icon: CalendarRange, text: "Sincronización directa con tu calendario de trabajo." },
      ],
      badge: "",
      imageColor: "bg-green-100",
      imageStroke: "stroke-green-600",
    },
    {
      id: "procuracion",
      tabTitle: "Procuración",
      icon: Briefcase,
      title: "Control total sobre tus actuaciones",
      features: [
        { icon: ListChecks, text: "Organiza tareas, estados y evolución de cada caso." },
        { icon: CircleDollarSign, text: "Control de honorarios y facturación por etapas procesales." },
        { icon: ShieldAlert, text: "Alertas tempranas de caducidad o inactividad." },
        { icon: Smartphone, text: "Accede y actualiza la información desde cualquier dispositivo." },
      ],
      badge: "",
      imageColor: "bg-red-100",
      imageStroke: "stroke-red-600",
    },
  ];

  let ActiveModuleIcon = $derived(modules[activeTab].icon);
  let ActiveFeature1Icon = $derived(modules[activeTab].features[0].icon);
  let ActiveFeature2Icon = $derived(modules[activeTab].features[1].icon);
</script>

<section id="funcionalidades" class="py-24 bg-white">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    
    <div class="text-center max-w-4xl mx-auto mb-16">
      <h2 class="font-display font-bold text-3xl md:text-5xl text-primary mb-6 leading-tight">
        IA auditable diseñada para <span class="text-accent italic">reducir tu carga operativa.</span>
      </h2>
      <p class="font-body text-xl text-text-dark/70">
        Con trazabilidad total, revisión humana integrada y seguridad documental. Vos siempre mantenés el control del caso.
      </p>
    </div>

    <!-- Tabs Navigation -->
    <div class="flex flex-wrap justify-center gap-2 mb-12">
      {#each modules as mod, i}
        {@const Icon = mod.icon}
        <button
          class="flex items-center gap-2 px-6 py-3 rounded-full font-ui font-bold text-sm transition-all duration-300 {activeTab === i ? 'bg-primary text-white shadow-md scale-105' : 'bg-base text-text-dark/70 hover:bg-gray-100'}"
          onclick={() => activeTab = i}
        >
          <Icon size={18} />
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
              {@const Icon = feature.icon}
              <div class="flex items-start gap-4">
                <div class="mt-1 flex-shrink-0 w-8 h-8 rounded-full {feature.isStar ? 'bg-accent/20 text-accent' : 'bg-white border border-gray-200 text-primary'} flex items-center justify-center shadow-sm">
                  <Icon size={16} />
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
               <ActiveModuleIcon size={64} class={`${modules[activeTab].imageStroke} opacity-80`} />
            </div>
            
            <div class="w-3/4 h-2 bg-gray-100 rounded-full overflow-hidden">
               <div class="h-full bg-accent/50 w-2/3 rounded-full animate-pulse"></div>
            </div>
            <div class="w-1/2 h-2 bg-gray-100 rounded-full"></div>
            
            <!-- Floating Elements -->
            <div class="absolute top-10 left-10 w-12 h-12 bg-white rounded-xl shadow-md border border-gray-100 flex items-center justify-center animate-bounce" style="animation-delay: 0.2s">
              <ActiveFeature1Icon size={20} class="text-primary" />
            </div>
            <div class="absolute bottom-10 right-10 w-12 h-12 bg-white rounded-xl shadow-md border border-gray-100 flex items-center justify-center animate-bounce" style="animation-delay: 0.5s">
              <ActiveFeature2Icon size={20} class="text-primary" />
            </div>
          </div>
        </div>

      </div>
    </div>

  </div>
</section>
