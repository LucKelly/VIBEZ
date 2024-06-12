import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map-button"
export default class extends Controller {
  connect() {
  }

  showMap() {
    document.getElementById("minimap-tab").classList.remove("d-none")
  }
}
