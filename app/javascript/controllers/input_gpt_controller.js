import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="input-gpt"
export default class extends Controller {
  static targets = ["form", "input"]

  connect() {
    console.log(this.formTarget)
    console.log(this.inputTarget)
  }

  update() {
    console.log("TODO: send request in AJAX")
  }
}
