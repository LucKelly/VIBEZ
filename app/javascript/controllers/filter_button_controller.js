import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = {
    paramValue: String
  }

  connect() {
    console.log("Button controller connected!")
    this.checkParams();
  }

  checkParams() {
    console.log("Checking params!")
    console.log(params.has("bar", "1"))
    console.log(urlParams)
    if (urlParams.get('param') === this.paramValue) {
      this.element.classList.add('selected');
    } else {
      this.element.classList.remove('selected');
    }
  }

  select(event) {
    console.log("Button clicked!")
    this.checkParams();
  }
}
