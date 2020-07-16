// this js is refer to https://github.com/htoooth/Leaflet.ChineseTmsProviders

const MAPBOX_TOKEN = 'pk.eyJ1IjoicGxheW5pdW5pdSIsImEiOiJjOWMyYjA3MTU1MDFmMWM1OTM2OTM5YzczODRkM2U0NSJ9.OC4GhScXX0FqODs-2_vSuw';

L.TileLayer.MapProvider = L.TileLayer.extend({

    initialize: function(type, options) { // (type, Object)
        var providers = L.TileLayer.MapProvider.providers;

        var parts = type.split('.');

        var providerName = parts[0];
        var mapName = parts[1];
        var mapType = parts[2];

        var url = providers[providerName][mapName][mapType];
        options.subdomains = providers[providerName].Subdomains;

        L.TileLayer.prototype.initialize.call(this, url, options);
    }
});

L.TileLayer.MapProvider.providers = {
    TianDiTu: {
        Normal: {
            Map: "https://t{s}.tianditu.gov.cn/DataServer?T=vec_w&X={x}&Y={y}&L={z}&tk=d19a45d7062b1f1559412a3596157542",
            Annotion: "https://t{s}.tianditu.gov.cn/DataServer?T=cva_w&X={x}&Y={y}&L={z}&tk=d19a45d7062b1f1559412a3596157542",
        },
        Satellite: {
            Map: "https://t{s}.tianditu.gov.cn/DataServer?T=img_w&x={x}&y={y}&l={z}&tk=d19a45d7062b1f1559412a3596157542",
            Annotion: "https://t{s}.tianditu.gov.cn/DataServer?T=cia_w&x={x}&y={y}&l={z}&tk=d19a45d7062b1f1559412a3596157542",
            Wmts: "https://t{s}.tianditu.gov.cn/ibo_w/wmts?service=wmts&request=GetTile&version=1.0.0&LAYER=ibo&tileMatrixSet=w&TileMatrix={z}&TileRow={y}&TileCol={x}&style=default&format=tiles&tk=d19a45d7062b1f1559412a3596157542",
        },
        Terrain: {
            Map: "https://t{s}.tianditu.gov.cn/DataServer?T=ter_w&X={x}&Y={y}&L={z}&tk=d19a45d7062b1f1559412a3596157542",
            Annotion: "https://t{s}.tianditu.gov.cn/DataServer?T=cta_w&X={x}&Y={y}&L={z}&tk=d19a45d7062b1f1559412a3596157542",
        },
        Subdomains: ['0','1','2','3','4','5','6','7']
    },

    GaoDe: {
        Normal: {
            Map: '//webrd0{s}.is.autonavi.com/appmaptile?lang=zh_cn&size=1&scale=1&style=8&x={x}&y={y}&z={z}',
        },
        Satellite: {
            Map: '//webst0{s}.is.autonavi.com/appmaptile?style=6&x={x}&y={y}&z={z}',
            Annotion: '//webst0{s}.is.autonavi.com/appmaptile?style=8&x={x}&y={y}&z={z}'
        },
        Subdomains: ["1", "2", "3", "4"]
    },

    Google: {
        Normal: {
            Map: "https://www.google.cn/maps/vt?lyrs=m@189&gl=cn&x={x}&y={y}&z={z}"
        },
        Satellite: {
            Map: "https://www.google.cn/maps/vt?lyrs=s@189&gl=cn&x={x}&y={y}&z={z}"
        },
        Subdomains: []
    },

    Geoq: {
        Normal: {
            Map: "https://map.geoq.cn/ArcGIS/rest/services/ChinaOnlineCommunity/MapServer/tile/{z}/{y}/{x}",
            Color: "https://map.geoq.cn/ArcGIS/rest/services/ChinaOnlineStreetColor/MapServer/tile/{z}/{y}/{x}",
            PurplishBlues: "http://map.geoq.cn/ArcGIS/rest/services/ChinaOnlineStreetPurplishBlue/MapServer/tile/{z}/{y}/{x}",
            Gray: "https://map.geoq.cn/ArcGIS/rest/services/ChinaOnlineStreetGray/MapServer/tile/{z}/{y}/{x}",
            Warm: "https://map.geoq.cn/ArcGIS/rest/services/ChinaOnlineStreetWarm/MapServer/tile/{z}/{y}/{x}",
            Cold: "https://map.geoq.cn/ArcGIS/rest/services/ChinaOnlineStreetCold/MapServer/tile/{z}/{y}/{x}"
        },
        Subdomains: []

    },

    OSM: {
        Normal: {
            Map: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
        },
        Subdomains: ['a','b','c']
    },

    Mapbox: {
        Normal: {
            Map: "https://api.mapbox.com/styles/v1/mapbox/outdoors-v9/tiles/256/{z}/{x}/{y}?access_token=" + MAPBOX_TOKEN,
        },
        Subdomains: ['a','b','c','d']
    }
};

L.tileLayer.mapProvider = function(type, options) {
    return new L.TileLayer.MapProvider(type, options);
};
