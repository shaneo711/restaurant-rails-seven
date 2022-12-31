import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = [ "message" ]
  close() {
    const element = this.messageTarget
    element.classList.add('hidden')
  }

  connect() {
    const element = this.messageTarget;
    this.addHiddenClass(element)
  }

  addHiddenClass(element) {
  setTimeout(function() {
    element.classList.add('hidden');
  }, 5000);
}
}
