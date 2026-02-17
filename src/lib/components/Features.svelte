<script lang="ts">
    import {
        FileText,
        Cpu,
        Gavel,
        Shield,
        Network,
        Clock,
    } from "lucide-svelte";
</script>

<section class="py-24 bg-surface-muted">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-20">
            <h2
                class="text-accent font-semibold tracking-wide uppercase text-sm mb-3"
            >
                Plataforma Unificada
            </h2>
            <h3 class="text-4xl font-bold text-primary mb-6">
                El poder de dos capas integradas
            </h3>
            <p class="text-xl text-gray-600 max-w-3xl mx-auto">
                Lexacta fusiona la gestión de expedientes tradicional con una
                capa de inteligencia agencial auditable.
            </p>
        </div>

        <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 lg:gap-24">
            <!-- Core Layer -->
            <div class="space-y-8">
                <div class="flex items-center gap-4 mb-4">
                    <div
                        class="p-3 bg-white border border-gray-200 rounded-lg shadow-sm"
                    >
                        <Gavel class="text-primary w-8 h-8" />
                    </div>
                    <h4 class="text-2xl font-bold text-primary">
                        Core de Gestión
                    </h4>
                </div>
                <p class="text-gray-600 leading-relaxed mb-8">
                    La base sólida para su firma. Control total sobre
                    expedientes, partes, movimientos y agenda procesal con
                    permisos granulares.
                </p>

                <div class="grid grid-cols-1 sm:grid-cols-2 gap-6">
                    <div
                        class="bg-white p-6 rounded-xl border border-gray-100 shadow-sm hover:shadow-md transition-shadow"
                    >
                        <FileText class="w-6 h-6 text-accent mb-4" />
                        <h5 class="font-semibold text-primary mb-2">
                            Expedientes
                        </h5>
                        <p class="text-sm text-gray-500">
                            Trazabilidad completa de movimientos y escritos
                            vinculados.
                        </p>
                    </div>
                    <div
                        class="bg-white p-6 rounded-xl border border-gray-100 shadow-sm hover:shadow-md transition-shadow"
                    >
                        <Shield class="w-6 h-6 text-accent mb-4" />
                        <h5 class="font-semibold text-primary mb-2">
                            Seguridad RBAC
                        </h5>
                        <p class="text-sm text-gray-500">
                            Control de acceso basado en roles por documento.
                        </p>
                    </div>
                </div>
            </div>

            <!-- AI Layer -->
            <div class="space-y-8">
                <div class="flex items-center gap-4 mb-4">
                    <div
                        class="p-3 bg-primary/5 border border-primary/10 rounded-lg shadow-sm"
                    >
                        <Cpu class="text-accent w-8 h-8" />
                    </div>
                    <h4 class="text-2xl font-bold text-primary">
                        Inteligencia Agencial
                    </h4>
                </div>
                <p class="text-gray-600 leading-relaxed mb-8">
                    Agentes autónomos que trabajan 24/7 para detectar novedades,
                    proponer escritos y asistir a clientes, siempre bajo su
                    supervisión.
                </p>

                <div class="grid grid-cols-1 sm:grid-cols-2 gap-6">
                    <div
                        class="bg-white p-6 rounded-xl border border-gray-100 shadow-sm hover:shadow-md transition-shadow"
                    >
                        <Network class="w-6 h-6 text-accent mb-4" />
                        <h5 class="font-semibold text-primary mb-2">
                            Procuración Auto
                        </h5>
                        <p class="text-sm text-gray-500">
                            Detecta novedades y sugiere acciones inmediatas.
                        </p>
                    </div>
                    <div
                        class="bg-white p-6 rounded-xl border border-gray-100 shadow-sm hover:shadow-md transition-shadow"
                    >
                        <Clock class="w-6 h-6 text-accent mb-4" />
                        <h5 class="font-semibold text-primary mb-2">
                            Human-in-the-loop
                        </h5>
                        <p class="text-sm text-gray-500">
                            Validación experta de cada sugerencia de la IA.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
