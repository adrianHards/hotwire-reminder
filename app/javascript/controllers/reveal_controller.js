import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reveal"
export default class extends Controller {

  toggle() {
    // find completed tasks, toggle class hidden
    document.querySelectorAll('#complete').forEach((task) => task.classList.toggle("hidden"))
    // toggle text between show and hide
    document.querySelector('#reveal').innerText === 'Show' ? document.querySelector('#reveal').innerText = 'Hide' : document.querySelector('#reveal').innerText = 'Show'
  }

  tick(e) {
    const id = e.target.dataset.id
    const csrfToken = document.querySelector("[name='csrf-token']").content

    fetch(`/tasks/${id}/tick`, {
        method: 'POST', // *GET, POST, PUT, DELETE, etc.
        mode: 'cors', // no-cors, *cors, same-origin
        cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
        credentials: 'same-origin', // include, *same-origin, omit
        headers: {
            'Content-Type': 'application/json',
            'X-CSRF-Token': csrfToken
        },
        body: JSON.stringify({ completed: e.target.checked }) // body data type must match "Content-Type" header
    })
      .then(response => response.json())
      .then(data => {
         alert(data.message)
       })

    // update tasks list
    document.querySelector('form').requestSubmit();

    // update completed count
    this.timeout = setTimeout(() => {
      document.querySelector('#completed_count').innerText = `${document.querySelectorAll('#complete').length} completed`
    }, 100);
  }

}
