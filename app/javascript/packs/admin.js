import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import '../bootstrap/admin_bootstrap_files.js'

Rails.start()
Turbolinks.start()
ActiveStorage.start()