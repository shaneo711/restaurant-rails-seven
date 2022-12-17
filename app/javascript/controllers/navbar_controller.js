import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  toggleMenu() {
    const menuElement = document.getElementById("navbarMenu")
    menuElement.classList.toggle("hidden");
  }
}
