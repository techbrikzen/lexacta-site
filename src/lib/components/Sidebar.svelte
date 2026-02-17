<script lang="ts">
    import {
        LayoutDashboard,
        FolderOpen,
        Calendar,
        FileText,
        ShieldAlert,
        Settings,
        LogOut,
        Search,
    } from "lucide-svelte";

    export let activePage = "dashboard";
</script>

<aside
    class="w-64 bg-primary text-gray-300 flex flex-col h-full border-r border-white/5"
>
    <!-- Header -->
    <div class="h-20 flex items-center px-6 border-b border-white/5 gap-3">
        <img src="/logo.svg" alt="Lexacta" class="h-7 w-auto" />
        <span
            class="ml-auto px-1.5 py-0.5 rounded bg-accent/20 text-accent text-[10px] font-bold"
            >PRO</span
        >
    </div>

    <!-- Search -->
    <div class="px-4 py-6">
        <div class="relative">
            <Search class="absolute left-3 top-2.5 text-gray-500 w-4 h-4" />
            <input
                type="text"
                placeholder="Buscar expediente..."
                class="w-full bg-primary-light border border-white/10 rounded-lg pl-9 pr-4 py-2 text-sm focus:outline-none focus:border-accent text-white placeholder-gray-500"
            />
        </div>
    </div>

    <!-- Navigation -->
    <nav class="flex-1 px-3 space-y-1">
        <button
            class="{activePage === 'dashboard'
                ? 'bg-accent/10 text-accent'
                : 'hover:bg-white/5 hover:text-white'} group flex w-full items-center px-3 py-2.5 text-sm font-medium rounded-lg transition-colors text-left bg-transparent border-0 cursor-pointer"
        >
            <LayoutDashboard
                class="mr-3 flex-shrink-0 h-5 w-5 {activePage === 'dashboard'
                    ? 'text-accent'
                    : 'text-gray-400 group-hover:text-white'}"
            />
            Dashboard
        </button>
        <button
            class="hover:bg-white/5 hover:text-white group flex w-full items-center px-3 py-2.5 text-sm font-medium rounded-lg transition-colors text-left bg-transparent border-0 cursor-pointer text-gray-300"
        >
            <FolderOpen
                class="mr-3 flex-shrink-0 h-5 w-5 text-gray-400 group-hover:text-white"
            />
            Expedientes
        </button>
        <button
            class="hover:bg-white/5 hover:text-white group flex w-full items-center px-3 py-2.5 text-sm font-medium rounded-lg transition-colors text-left bg-transparent border-0 cursor-pointer text-gray-300"
        >
            <Calendar
                class="mr-3 flex-shrink-0 h-5 w-5 text-gray-400 group-hover:text-white"
            />
            Agenda
            <span
                class="ml-auto bg-red-500 text-white text-[10px] px-1.5 rounded-full"
                >2</span
            >
        </button>
        <button
            class="hover:bg-white/5 hover:text-white group flex w-full items-center px-3 py-2.5 text-sm font-medium rounded-lg transition-colors text-left bg-transparent border-0 cursor-pointer text-gray-300"
        >
            <FileText
                class="mr-3 flex-shrink-0 h-5 w-5 text-gray-400 group-hover:text-white"
            />
            Documentos
        </button>
        <button
            class="hover:bg-white/5 hover:text-white group flex w-full items-center px-3 py-2.5 text-sm font-medium rounded-lg transition-colors text-left bg-transparent border-0 cursor-pointer text-gray-300"
        >
            <ShieldAlert
                class="mr-3 flex-shrink-0 h-5 w-5 text-gray-400 group-hover:text-white"
            />
            Auditoría
        </button>
    </nav>

    <!-- Bottom Actions -->
    <div class="p-4 border-t border-white/5 space-y-1">
        <button
            class="hover:bg-white/5 hover:text-white group flex w-full items-center px-3 py-2 text-sm font-medium rounded-lg transition-colors text-left bg-transparent border-0 cursor-pointer text-gray-300"
        >
            <Settings
                class="mr-3 flex-shrink-0 h-5 w-5 text-gray-400 group-hover:text-white"
            />
            Configuración
        </button>
        <div class="flex items-center p-3 mt-2 rounded-lg bg-white/5">
            <div
                class="h-8 w-8 rounded-full bg-gradient-to-tr from-accent to-yellow-500 flex items-center justify-center text-white font-bold text-xs"
            >
                JD
            </div>
            <div class="ml-3">
                <p class="text-sm font-medium text-white">John Doe</p>
                <p class="text-xs text-gray-500">Admin</p>
            </div>
            <LogOut
                class="ml-auto h-4 w-4 text-gray-500 cursor-pointer hover:text-white"
            />
        </div>
    </div>
</aside>
