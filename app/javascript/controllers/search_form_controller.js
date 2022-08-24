import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-form"
export default class extends Controller {
  search() {

    let tabs = document.querySelector('.tabs').getElementsByClassName('tab')

    for (let tab of tabs) {
      if (tab.classList.contains("bg-[#0279FF]")) {
        tab.classList.replace("bg-[#0279FF]", 'bg-white')
      }
    }

    // on new event, cancel timeout previously established by setTimeout
    clearTimeout(this.timeout)
    // .timeout is arbitrary
    this.timeout = setTimeout(() => {
      // this.element is the element associated with the data action
      // after 200 ms has pass submit search
      this.element.requestSubmit()
    }, 200)
  }
}
