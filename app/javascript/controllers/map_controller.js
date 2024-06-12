import { Controller } from "@hotwired/stimulus";
import mapboxgl from 'mapbox-gl';

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  };

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;

    const successLocation = (position) => {
      this.setupMap([position.coords.longitude, position.coords.latitude]);
    };

    const errorLocation = () => {
      this.setupMap([-2.24, 53.48]);
    };

    navigator.geolocation.getCurrentPosition(successLocation, errorLocation, {
      enableHighAccuracy: true
    });

    this.setupMap = (center) => {
      this.map = new mapboxgl.Map({
        container: this.element,
        style: "mapbox://styles/luc-kelly/clxa5si9h024001qx2v483cr5",
        center: center,
        zoom: 15
      });

      this.map.on('load', () => {
        this.map.addSource('point', {
          'type': 'geojson',
          'data': {
            'type': 'Feature',
            'geometry': {
              'type': 'Point',
              'coordinates': center
            }
          }
        });

        this.map.addLayer({
          'id': 'point',
          'type': 'circle',
          'source': 'point',
          'paint': {
            'circle-radius': 10,
            'circle-color': '#007cbf'
          }
        });
      });

      document.getElementById('btn-center').addEventListener('click', () => {
        navigator.geolocation.getCurrentPosition((position) => {
          this.map.flyTo({
            center: [position.coords.longitude, position.coords.latitude],
            essential: true
          });
        });
      });

      this.#addMarkersToMap();
    };
  }
    #addMarkersToMap() {
      this.markersValue.forEach((marker) => {
        const customMarker = document.createElement("a");
        customMarker.setAttribute("href", `/bars/${marker.id}`);
        customMarker.innerHTML = marker.marker_html;

        new mapboxgl.Marker(customMarker)
          .setLngLat([marker.lng, marker.lat])
          .addTo(this.map);
      });
    }

    #fitMapToMarkers() {
      const bounds = new mapboxgl.LngLatBounds();
      this.markersValue.forEach(marker => bounds.extend([marker.lng, marker.lat]));
      this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
    }
}
