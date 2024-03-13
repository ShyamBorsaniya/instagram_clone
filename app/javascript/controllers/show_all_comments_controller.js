import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "showHideDiv", "showReplyHidDiv" ]

  connect() {
    // console.log("Element clicked!");
  }

  onClick() {
    this.showHideDivTarget.classList.toggle("hidden");
  }

  showReply() {
    this.showReplyHidDivTarget.classList.toggle("hidden");
  }
}
