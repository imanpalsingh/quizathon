import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["toast"]

  connect() {
    this.toastTarget.classList.add('show');
    setTimeout(() => {
      this.toastTarget.classList.remove('show')
    }, 3000);
  }


}
