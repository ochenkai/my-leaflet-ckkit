<template>
  <div id="map-base" class="defaultcontent">
  	<div id="map" frameborder="0" style="width:100%;height:100%;"></div>
  </div>
</template>

<script>
import Leaflet from "leaflet";
import mapProvider from "../../common/mapProvider.js";
import { AntPath, antPath } from 'leaflet-ant-path';

export default {

  name: 'myLeaflet',
  props: {
  	tPoints: {
  		type: Array,
  		default: function () {
        return []
      }
  	}
  },
  data() {
    return {
      map: null,
      init_map_data: null,
      reset_btn: null,
      mapType: '高德矢量图',
      mapTypeArrays: ['高德矢量图' ,'高德卫星图', '天地图矢量图', '天地图卫星图', '谷歌矢量图', '谷歌卫星图'],
      mapConfig: {
        zoom: 9,
        center: [39.9, 116],
        minZoom: 3,
        maxZoom: 18,
        attribution: "&copy; 天地图"
      }
    };
  },
  watch: {
    tPoints (val) {
      this.addPoints(val)
    }
  },
  mounted() {
    console.log("地图页面")
    this.initMap();
    this.initTiteLayer();
    this.addPoints(this.tPoints)
  },
  methods: {
    initMap () {
      this.map = L.map("map", {
        center: this.mapConfig.center,
        zoom: this.mapConfig.zoom,
        minZoom: this.mapConfig.minZoom,
        maxZoom: this.mapConfig.maxZoom,
        attributionControl: false,
        zoomControl: false,
        preferCanvas: true,
        zoomAnimation: false
      });

      this.map.on("zoomend", event => {
        if(this.reset_btn && this.map.getZoom() !== this.mapConfig.zoom) {
          this.reset_btn.enable();
        }
      });
    },
    initTiteLayer () {
      var index = 0
      for (var i = 0; i < this.mapTypeArrays.length; i++) {
        if (this.mapType === this.mapTypeArrays[i]) {
          index = i
        }
      }
      switch (index){
        case 0:
          L.tileLayer.mapProvider("GaoDe.Normal.Map", {}).addTo(this.map);

          break;
        case 1:
          L.tileLayer.mapProvider("GaoDe.Satellite.Map", {}).addTo(this.map);
          L.tileLayer.mapProvider("GaoDe.Satellite.Annotion", {}).addTo(this.map);
          break;
        case 2:
          L.tileLayer.mapProvider("TianDiTu.Normal.Map", {
            attribution: this.mapConfig.attribution
          }).addTo(this.map);
          L.tileLayer.mapProvider("TianDiTu.Normal.Annotion", {
            attribution: this.mapConfig.attribution
          }).addTo(this.map);
          break;
        case 3:
          L.tileLayer.mapProvider("TianDiTu.Satellite.Map", {
            attribution: this.mapConfig.attribution
          }).addTo(this.map);
          L.tileLayer.mapProvider("TianDiTu.Satellite.Annotion", {
            attribution: this.mapConfig.attribution
          }).addTo(this.map);
          L.tileLayer.mapProvider("TianDiTu.Satellite.Wmts", {
            attribution: this.mapConfig.attribution
          }).addTo(this.map);
          break;
        case 4:
          L.tileLayer.mapProvider("Google.Normal.Map", {}).addTo(this.map);
          break;
        case 5:
          L.tileLayer.mapProvider("Google.Satellite.Map", {}).addTo(this.map);
          break;
        default:
          L.tileLayer.mapProvider("Google.Normal.Map", {}).addTo(this.map);
          break;
      }
    },
    addPoints (p) {
      var path = antPath(p, {
        "paused": false,
        "reverse": false,
        "delay": 3000,
        "dashArray": [5, 20],
        "weight": 5,
        "opacity": 0.8,
        "color": "#339933",
        "pulseColor": "#11EE11"
      })
      path.addTo(this.map);
      console.log(path.getBounds())
      if(JSON.stringify(path.getBounds()) != "{}") {
      	this.map.fitBounds(path.getBounds(), {
      		maxZoom: 16
      	});
      }
    }
  },
}
</script>

<style>
  @import 'https://cdn.bootcdn.net/ajax/libs/leaflet/1.6.0/leaflet.css';
</style>
