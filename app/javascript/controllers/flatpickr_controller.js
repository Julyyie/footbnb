import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";


// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "rentStart", "rentEnding" ]

  connect() {
    flatpickr(this.rentStartTarget, {})
    flatpickr(this.rentEndingTarget, {})
  }
}
