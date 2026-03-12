<script lang="ts">
  import { MessageCircle, Calendar, Briefcase, Bot, Scale } from "lucide-svelte";

  const integrations = [
    {
      name: "WhatsApp",
      description: "Notificaciones al cliente y recepción",
      icon: MessageCircle,
      color: "text-green-500",
      bg: "bg-green-50"
    },
    {
      name: "Google Calendar",
      description: "Sincronización bidireccional",
      icon: Calendar,
      color: "text-blue-500",
      bg: "bg-blue-50"
    },
    {
      name: "Office / Teams",
      description: "Reuniones y documentos",
      icon: Briefcase,
      color: "text-indigo-600",
      bg: "bg-indigo-50"
    },
    {
      name: "Copilot",
      description: "Redacción IA asistida",
      icon: Bot,
      color: "text-purple-500",
      bg: "bg-purple-50"
    },
    {
      name: "Sistemas PJ",
      description: "Jurisprudencia y alertas",
      icon: Scale,
      color: "text-primary",
      bg: "bg-primary/5"
    }
  ];
</script>

<section class="py-20 bg-base border-t border-b border-gray-200 overflow-hidden">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    
    <div class="text-center mb-12">
      <h2 class="font-display font-bold text-2xl md:text-3xl text-primary">
        Funciona con las herramientas que ya usás
      </h2>
    </div>

    <div class="flex flex-wrap justify-center gap-8 md:gap-12">
      {#each integrations as item}
        <div class="group flex flex-col items-center text-center w-36">
          <div class={`w-16 h-16 rounded-2xl ${item.bg} ${item.color} flex items-center justify-center mb-4 transition-transform group-hover:scale-110 shadow-sm border border-gray-200`}>
            <svelte:component this={item.icon} size={32} strokeWidth={1.5} />
          </div>
          <h4 class="font-ui font-bold text-text-dark text-sm mb-1">{item.name}</h4>
          <p class="font-body text-xs text-text-dark/60 leading-tight">{item.description}</p>
        </div>
      {/each}
    </div>

  </div>
</section>
