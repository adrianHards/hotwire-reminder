import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-tabs"
export default class extends Controller {
  today(event) {
    if (event.currentTarget.nextElementSibling.classList.contains('bg-[#0279FF]')) {
      event.currentTarget.previousElementSibling.classList.replace("bg-[#0279FF]", "bg-white")
    }
    event.currentTarget.classList.toggle("bg-[#0279FF]")
    event.currentTarget.classList.toggle("bg-white")
  }

  all(event) {
    if (event.currentTarget.previousElementSibling.classList.contains('bg-[#0279FF]')) {
      event.currentTarget.previousElementSibling.classList.replace("bg-[#0279FF]", "bg-white")
    }
    event.currentTarget.classList.toggle("bg-[#0279FF]")
    event.currentTarget.classList.toggle("bg-white")

    if (event.currentTarget.classList.contains('bg-[#0279FF]')) {
      document.querySelector('#query').value = ''
      document.querySelector('form').requestSubmit()
    }
  }
}
