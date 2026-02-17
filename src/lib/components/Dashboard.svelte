<script lang="ts">
    import Sidebar from "./Sidebar.svelte";
    import TimelineWidget from "./dashboard/TimelineWidget.svelte";
    import AiSuggestionWidget from "./dashboard/AiSuggestionWidget.svelte";
    import { Bell, HelpCircle } from "lucide-svelte";

    let showSuggestion = true;
</script>

<div class="flex h-screen bg-surface-muted overflow-hidden font-sans">
    <Sidebar activePage="expedientes" />

    <main class="flex-1 overflow-y-auto">
        <!-- Header -->
        <header
            class="bg-white border-b border-gray-200 h-16 flex items-center justify-between px-8 sticky top-0 z-20"
        >
            <div class="flex items-center gap-2 text-sm text-gray-500">
                <span class="hover:text-primary cursor-pointer"
                    >Expedientes</span
                >
                <span>/</span>
                <span class="text-primary font-semibold"
                    >#4920: "García c/ Perez s/ Daños"</span
                >
                <span
                    class="px-2 py-0.5 rounded-full bg-blue-100 text-blue-700 text-xs font-bold uppercase"
                    >En Prueba</span
                >
            </div>

            <div class="flex items-center gap-4">
                <button
                    class="text-gray-400 hover:text-primary transition-colors"
                >
                    <HelpCircle size={20} />
                </button>
                <button
                    class="relative text-gray-400 hover:text-primary transition-colors"
                >
                    <Bell size={20} />
                    <span
                        class="absolute -top-1 -right-1 w-2 h-2 bg-red-500 rounded-full"
                    ></span>
                </button>
            </div>
        </header>

        <div class="p-8 max-w-7xl mx-auto space-y-8">
            <div class="flex flex-col md:flex-row gap-8">
                <div class="flex-1 space-y-8">
                    <!-- Timeline -->
                    <TimelineWidget
                        onSelectEvent={(e) => (showSuggestion = true)}
                    />

                    <!-- AI Suggestion -->
                    {#if showSuggestion}
                        <div
                            class="animate-in fade-in slide-in-from-bottom-4 duration-500"
                        >
                            <AiSuggestionWidget
                                onValidate={() => alert("Validado")}
                            />
                        </div>
                    {/if}

                    <!-- Repository Preview (Placeholder) -->
                    <div
                        class="bg-white rounded-xl border border-gray-200 p-6 shadow-sm"
                    >
                        <h3 class="font-semibold text-lg text-primary mb-4">
                            Repositorio Documental
                        </h3>
                        <!-- Placeholder content -->
                        <div class="space-y-3">
                            {#each [1, 2, 3] as i}
                                <div
                                    class="flex items-center justify-between p-3 hover:bg-gray-50 rounded-lg border border-transparent hover:border-gray-100 transition-colors cursor-pointer"
                                >
                                    <div class="flex items-center gap-3">
                                        <div
                                            class="w-8 h-8 rounded bg-blue-50 flex items-center justify-center text-blue-600 font-bold text-xs"
                                        >
                                            PDF
                                        </div>
                                        <div>
                                            <p
                                                class="text-sm font-medium text-primary"
                                            >
                                                Escrito_Presentacion_{i}.pdf
                                            </p>
                                            <p class="text-xs text-gray-400">
                                                Hace 2 días • 2.4 MB
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            {/each}
                        </div>
                    </div>
                </div>

                <!-- Right Column: Agenda/Context -->
                <div class="w-full md:w-80 space-y-8">
                    <div
                        class="bg-white rounded-xl border border-gray-200 p-6 shadow-sm"
                    >
                        <h3 class="font-semibold text-lg text-primary mb-4">
                            Próximos Vencimientos
                        </h3>
                        <div class="space-y-4">
                            <div
                                class="flex items-start gap-3 pb-3 border-b border-gray-100"
                            >
                                <div class="flex-shrink-0 w-10 text-center">
                                    <span
                                        class="block text-xs text-gray-400 uppercase"
                                        >Feb</span
                                    >
                                    <span
                                        class="block text-lg font-bold text-primary"
                                        >15</span
                                    >
                                </div>
                                <div>
                                    <p class="text-sm font-medium text-primary">
                                        Audiencia Testimonial
                                    </p>
                                    <p class="text-xs text-gray-500">
                                        10:00 AM • Juzgado 4
                                    </p>
                                </div>
                            </div>
                            <div class="flex items-start gap-3">
                                <div class="flex-shrink-0 w-10 text-center">
                                    <span
                                        class="block text-xs text-gray-400 uppercase"
                                        >Feb</span
                                    >
                                    <span
                                        class="block text-lg font-bold text-primary"
                                        >20</span
                                    >
                                </div>
                                <div>
                                    <p class="text-sm font-medium text-primary">
                                        Vence Plazo Pericia
                                    </p>
                                    <p class="text-xs text-red-500 font-medium">
                                        Crítico
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>
