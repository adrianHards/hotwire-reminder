import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reveal"
export default class extends Controller {

  toggle() {
    // find completed tasks, toggle class hidden
    document.querySelectorAll('#complete').forEach((task) => task.classList.toggle("hidden"))
    // toggle text between show and hide
    document.querySelector('#reveal').innerText === 'Show' ? document.querySelector('#reveal').innerText = 'Hide' : document.querySelector('#reveal').innerText = 'Show'
  }
}
