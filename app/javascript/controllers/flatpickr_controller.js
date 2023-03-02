import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";


// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "rentStart", "rentEnding" ]
  static targets = [ "club", "position", "name", "age", "rating", "strong_foot", "price", "description" ]


  connect() {
    flatpickr(this.rentStartTarget, {})
    flatpickr(this.rentEndingTarget, {})
  }
}
