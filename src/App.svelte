<script lang="ts">
  import Landing from "./lib/components/Landing.svelte";
  import Dashboard from "./lib/components/Dashboard.svelte";
  import GoogleAnalytics from "./lib/components/GoogleAnalytics.svelte";

  let view = "landing";

  function goToDashboard() {
    view = "dashboard";
    window.scrollTo(0, 0);
  }
</script>

<GoogleAnalytics />

{#if view === "landing"}
  <Landing onLogin={goToDashboard} />
{:else}
  <Dashboard />
{/if}
