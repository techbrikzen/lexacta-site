<script lang="ts">
    import {
        ShieldCheck,
        Link,
        AlertTriangle,
        ArrowRight,
        FileText,
    } from "lucide-svelte";

    export let onValidate: () => void;
</script>

<div
    class="bg-primary rounded-xl overflow-hidden shadow-2xl border border-white/10 text-white relative"
>
    <!-- Header -->
    <div
        class="bg-primary-dark/50 px-6 py-4 flex items-center justify-between border-b border-white/5"
    >
        <div class="flex items-center gap-2">
            <span class="w-2 h-2 rounded-full bg-accent animate-pulse"></span>
            <h3 class="font-semibold text-lg">Oportunidad Detectada por IA</h3>
        </div>
        <div class="flex gap-2">
            <span
                class="inline-flex items-center gap-1.5 px-3 py-1 rounded-full bg-white/5 text-xs text-gray-300 border border-white/5"
            >
                <ShieldCheck size={12} /> Trail Audit
            </span>
            <span
                class="inline-flex items-center gap-1.5 px-3 py-1 rounded-full bg-white/5 text-xs text-gray-300 border border-white/5"
            >
                <Link size={12} /> Evidencia Vinculada
            </span>
        </div>
    </div>

    <div class="p-6 grid grid-cols-1 md:grid-cols-3 gap-8">
        <!-- Impact Analysis -->
        <div class="md:col-span-1 border-r border-white/5 pr-0 md:pr-8">
            <h4
                class="text-sm font-medium text-gray-400 uppercase tracking-wider mb-4"
            >
                Análisis de Impacto
            </h4>

            <div class="space-y-4">
                <div>
                    <div class="flex justify-between text-sm mb-1">
                        <span class="text-gray-300">Relevancia Procesal</span>
                        <span class="text-accent font-bold">Alta</span>
                    </div>
                    <div class="h-1.5 bg-white/10 rounded-full overflow-hidden">
                        <div class="h-full bg-accent w-[85%]"></div>
                    </div>
                </div>

                <div>
                    <div class="flex justify-between text-sm mb-1">
                        <span class="text-gray-300">Riesgo de Demora</span>
                        <span class="text-orange-400 font-bold">Medio</span>
                    </div>
                    <div class="h-1.5 bg-white/10 rounded-full overflow-hidden">
                        <div class="h-full bg-orange-400 w-[45%]"></div>
                    </div>
                </div>

                <p class="text-xs text-gray-500 mt-4 leading-relaxed">
                    La IA ha detectado una cédula de notificación que habilita
                    un plazo perentorio de 5 días. No responder podría causar
                    caducidad de instancia.
                </p>
            </div>
        </div>

        <!-- Suggested Action -->
        <div class="md:col-span-2">
            <h4
                class="text-sm font-medium text-gray-400 uppercase tracking-wider mb-4"
            >
                Acción Sugerida
            </h4>

            <div class="bg-white/5 rounded-lg p-4 border border-white/5 mb-6">
                <div class="flex items-start gap-4">
                    <div class="p-2 bg-accent/20 rounded-lg text-accent">
                        <FileText size={20} />
                    </div>
                    <div>
                        <h5 class="font-semibold text-white mb-1">
                            Generar Escrito: "Contesta Traslado"
                        </h5>
                        <p class="text-sm text-gray-400">
                            Basado en los hechos del expediente y jurisprudencia
                            vinculada. Se adjuntará la prueba documental #4412.
                        </p>
                    </div>
                </div>
            </div>

            <div class="space-y-2 mb-6">
                <div class="flex items-center gap-2 text-sm text-gray-300">
                    <ShieldCheck size={14} class="text-green-400" />
                    <span>Cita legal verificada en Art. 356 CPCC</span>
                </div>
                <div class="flex items-center gap-2 text-sm text-gray-300">
                    <ShieldCheck size={14} class="text-green-400" />
                    <span>Plazos calculados sin feriados</span>
                </div>
            </div>

            <button
                onclick={onValidate}
                class="w-full bg-accent hover:bg-accent-hover text-white py-3 px-4 rounded-lg font-bold text-center transition-all shadow-lg hover:shadow-accent/20 flex items-center justify-center gap-2"
            >
                Revisar y Validar Acción
                <ArrowRight size={18} />
            </button>

            <p class="text-center text-xs text-gray-500 mt-3">
                Esta acción requiere confirmación humana obligatoria.
            </p>
        </div>
    </div>
</div>
