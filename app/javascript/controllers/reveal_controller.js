import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reveal"
export default class extends Controller {

  toggle() {
    document.querySelectorAll('#complete').forEach((task) => task.classList.toggle("hidden"))
    document.querySelector('#reveal').innerText === 'Show' ? document.querySelector('#reveal').innerText = 'Hide' : document.querySelector('#reveal').innerText = 'Show'
  }
}
