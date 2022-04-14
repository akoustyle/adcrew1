import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  updateUp() {
    if (window.scrollY <= window.innerHeight) {
      this.element.classList.add("fasscroll")
    } else {
      this.element.classList.remove("fasscroll")
    }
  };
}
