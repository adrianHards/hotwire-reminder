import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-tabs"
export default class extends Controller {
  today(event) {
    if (event.currentTarget.nextElementSibling.classList.contains('bg-[#0279FF]')) {
      event.currentTarget.nextElementSibling.classList.replace('bg-[#0279FF]', 'bg-white');
      event.currentTarget.classList.replace('bg-white', 'bg-[#0279FF]');
    }

    if (event.currentTarget.classList.contains('bg-white')) {
      event.currentTarget.classList.replace("bg-white", "bg-[#0279FF]");
    }
  }

  all(event) {
    // make sure toggle reverts back to show rather than hide
    document.querySelector('#reveal').innerText = 'Show'
    // update completed number
    document.querySelector('#completed_count').innerText = `${document.querySelectorAll('#complete').length} completed`

    // if the other tab has been selected, de-select it first
    if (event.currentTarget.previousElementSibling.classList.contains('bg-[#0279FF]')) {
      event.currentTarget.previousElementSibling.classList.replace("bg-[#0279FF]", "bg-white");
    }
    // if the tab is hasn't been selected, change its color, else don't do anything
    if (event.currentTarget.classList.contains('bg-white')) {
      event.currentTarget.classList.replace("bg-white", "bg-[#0279FF]");
    }
    // create an empty submission which will return all tasks
    if (event.currentTarget.classList.contains('bg-[#0279FF]')) {
      document.querySelector('#query').value = '';
      document.querySelector('form').requestSubmit();
    }
  }
}
