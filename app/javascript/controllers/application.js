import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

//= require_tree .
// Add following lines.
//= require jquery
//= require jquery_ujs
