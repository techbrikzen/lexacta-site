<script lang="ts">
  import Landing from "./lib/components/Landing.svelte";
  import Dashboard from "./lib/components/Dashboard.svelte";

  let view = "landing";

  function goToDashboard() {
    view = "dashboard";
    window.scrollTo(0, 0);
  }
</script>

{#if view === "landing"}
  <Landing onLogin={goToDashboard} />
{:else}
  <Dashboard />
{/if}
