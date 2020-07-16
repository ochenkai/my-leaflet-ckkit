<template>
  <div id="app">
    <my-leaflet style="width: 100%; height: 500px;" :tPoints="points"></my-leaflet>
  </div>
</template>

<script>
import myLeaflet from "../src/myPlugin/myLeaflet/myLeaflet"
export default {
  name: 'app',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App',
      points: [[41,119],[41.4, 119],[42, 119],[42.2, 119.5],[42.2, 120]]
    }
  },
  components: {
    myLeaflet
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

h1, h2 {
  font-weight: normal;
}

ul {
  list-style-type: none;
  padding: 0;
}

li {
  display: inline-block;
  margin: 0 10px;
}

a {
  color: #42b983;
}
</style>
