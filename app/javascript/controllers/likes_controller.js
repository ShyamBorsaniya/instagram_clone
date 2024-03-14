import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { likeableId: String, likeableType: String, userId: String} 
  connect() {
    // console.log("Element clicked!");
  }

  onClick() {

    fetch('/likes', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
      },
      body: JSON.stringify({
        user_id: this.userIdValue,
        likeable_id: this.likeableIdValue,
        likeable_type: this.likeableTypeValue

      })
    })
    .then(response => {
      if (!response.ok) {
        throw new Error('Network response was not ok');
      }
      // handle success response
    })
    .catch(error => {
      console.error('There was a problem with your fetch operation:', error);
      // handle error response
    });
  }

    // this.showHideDivTarget.classList.toggle("hidden");
}
