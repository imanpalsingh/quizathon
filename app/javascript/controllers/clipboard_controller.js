import {Controller} from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["action"]

  async copy(event) {
    event.preventDefault()
    const [text, icon] = this.actionTarget.children
    const orginalTextContents = icon.innerText

    await navigator.clipboard.writeText(window.location.href)

    icon.textContent = 'download_done'
    if (this.timeout) {
      clearTimeout(this.timeout)
      this.timeout = null
    }

    this.timeout = setTimeout(() => {
      icon.innerText = orginalTextContents
    }, 1000)
  }
}
