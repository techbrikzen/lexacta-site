<script lang="ts">
    import { Circle, CheckCircle2, AlertCircle, Sparkles } from "lucide-svelte";

    export let onSelectEvent: (event: any) => void;

    const events = [
        {
            id: 1,
            date: "10 Feb",
            title: "Inicio de Demanda",
            type: "standard",
            status: "completed",
        },
        {
            id: 2,
            date: "12 Feb",
            title: "Sortero de Juzgado",
            type: "standard",
            status: "completed",
        },
        {
            id: 3,
            date: "15 Feb",
            title: "Primer Despacho",
            type: "standard",
            status: "completed",
        },
        {
            id: 4,
            date: "Hoy",
            title: "Novedad Detectada",
            type: "ai",
            status: "action_required",
        },
        {
            id: 5,
            date: "Futuro",
            title: "Audiencia Preliminar",
            type: "standard",
            status: "pending",
        },
    ];
</script>

<div class="bg-white rounded-xl border border-gray-200 shadow-sm p-6">
    <div class="flex items-center justify-between mb-6">
        <h3 class="font-semibold text-lg text-primary">
            Timeline del Expediente #4920
        </h3>
        <button class="text-sm text-accent font-medium hover:underline"
            >Ver completo</button
        >
    </div>

    <div class="relative">
        <div
            class="absolute top-1/2 left-0 right-0 h-0.5 bg-gray-100 -translate-y-1/2 z-0"
        ></div>

        <div class="relative z-10 flex justify-between items-center w-full">
            {#each events as event}
                <button
                    class="flex flex-col items-center group cursor-pointer bg-transparent border-0 p-0"
                    onclick={() => event.type === "ai" && onSelectEvent(event)}
                    onkeydown={(e) =>
                        event.type === "ai" &&
                        e.key === "Enter" &&
                        onSelectEvent(event)}
                    aria-label="{event.title} - {event.date}"
                >
                    <!-- Icon -->
                    <div
                        class="mb-3 transition-transform group-hover:-translate-y-1"
                    >
                        {#if event.type === "ai"}
                            <div
                                class="w-10 h-10 rounded-full bg-accent text-white flex items-center justify-center shadow-lg shadow-accent/30 ring-4 ring-white"
                            >
                                <Sparkles size={18} />
                            </div>
                        {:else if event.status === "completed"}
                            <div
                                class="w-8 h-8 rounded-full bg-primary-light text-white flex items-center justify-center ring-4 ring-white"
                            >
                                <CheckCircle2 size={16} />
                            </div>
                        {:else}
                            <div
                                class="w-4 h-4 rounded-full bg-gray-300 ring-4 ring-white"
                            ></div>
                        {/if}
                    </div>

                    <!-- Label -->
                    <div class="text-center">
                        <span
                            class="block text-xs font-semibold text-gray-400 mb-1"
                            >{event.date}</span
                        >
                        <span
                            class="block text-sm font-medium {event.type ===
                            'ai'
                                ? 'text-accent'
                                : 'text-primary'}"
                        >
                            {event.title}
                        </span>
                        {#if event.type === "ai"}
                            <span
                                class="inline-block mt-1 text-[10px] bg-accent/10 text-accent px-2 py-0.5 rounded-full font-bold"
                            >
                                ACCIÓN REQUERIDA
                            </span>
                        {/if}
                    </div>
                </button>
            {/each}
        </div>
    </div>
</div>
