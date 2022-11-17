import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Have fun", "Choose a movie with us!"],
      typeSpeed: 70,
    })
  }
}
