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
      points: [{lat:41,lng:119,color:'#00f'},{lat:41.4, lng:119, color: '#f00'},{lat:42, lng:119, color: '#f00'},{lat:42.2, lng:119.5, color: '#00f'},{lat: 42.2, lng:120, color: '#f00'},{lat: 42.5, lng:120.2, color:'#00f'},{lat:43, lng:121,color:'#f00'},{lat:43.1, lng:121.2,color:'#f00'},{lat:43.2, lng:121.3,color:'#f00'}]
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
