// app/javascript/controllers/minimap_controller.js
import { Controller } from "@hotwired/stimulus";
import mapboxgl from 'mapbox-gl';

export default class extends Controller {
  static values = {
    apiKey: String
  };

  connect() {
    mapboxgl.accessToken = this.apiKeyValue;
    this.initializeMap()
  }

  initializeMap() {
    var map = new mapboxgl.Map({
      container: this.element,
      style: 'mapbox://styles/luc-kelly/clxa5si9h024001qx2v483cr5',
      center: [this.data.get('longitude'), this.data.get('latitude')],
      zoom: 15,
      interactive: true
    });

    var marker = {
      marker_html: this.data.get('marker_html')
    };

    const customMarker = document.createElement("a");
    customMarker.innerHTML = '<i class="marker fa-solid fa-martini-glass"></i>';

    new mapboxgl.Marker(customMarker)
        .setLngLat([this.data.get('longitude'), this.data.get('latitude')])
        .addTo(map);
  }
}
