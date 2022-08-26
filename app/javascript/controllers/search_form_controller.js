import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-form"
export default class extends Controller {
  search() {
    // replace with static target instead?

    document.querySelector('#reveal').innerText = 'Show'
    // find tabs from DOM
    let tabs = document.querySelector('.tabs').getElementsByClassName('tab')
    // iterate over each tab, if any are selected, de-select them on submission of new search
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
