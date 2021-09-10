import { Controller } from "stimulus"

export default class extends Controller {
  createSuccess(event) {
    console.log(event)
  }
}