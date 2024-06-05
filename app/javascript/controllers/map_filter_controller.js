import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("filter controller connected!")
  }

  filter(event) {
    event.preventDefault()
    console.log(event.target.innerText)
  }
}
