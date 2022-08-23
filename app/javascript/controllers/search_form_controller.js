import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-form"
export default class extends Controller {
  search() {
    // on new event, cancel timeout previously established by setTimeout
    clearTimeout(this.timeout)
    // initiate timeout
    this.timeout = setTimeout(() => {
      this.element.requestSubmit()
    }, 200)
  }
}
