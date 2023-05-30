import { Application } from "@hotwired/stimulus"
import NestedForm from 'stimulus-rails-nested-form'

const application = Application.start()
application.register('nested-form', NestedForm)

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

import Sortable from 'stimulus-sortable'

// const application = Application.start()
application.register('sortable', Sortable)

export { application }
