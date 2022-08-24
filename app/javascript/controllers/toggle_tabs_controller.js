import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-tabs"
export default class extends Controller {
  today(event) {
    if (event.currentTarget.nextElementSibling.classList.contains('bg-[#0279FF]')) {
      event.currentTarget.nextElementSibling.classList.replace('bg-[#0279FF]', 'bg-white')
      event.currentTarget.classList.replace('bg-white', 'bg-[#0279FF]')
    }
    event.currentTarget.classList.replace('bg-white', 'bg-[#0279FF]')
  }

  all(event) {
    if (event.currentTarget.previousElementSibling.classList.contains('bg-[#0279FF]')) {
      event.currentTarget.previousElementSibling.classList.replace("bg-[#0279FF]", "bg-white")
    }

    if (event.currentTarget.classList.contains('bg-white')) {
      event.currentTarget.classList.replace("bg-white", "bg-[#0279FF]")
    }

    if (event.currentTarget.classList.contains('bg-[#0279FF]')) {
      document.querySelector('#query').value = ''
      document.querySelector('form').requestSubmit()
    }
  }
}
