package tpsd

import rego.v1

# By default, deny requests.
default allow := false

# Allow if destination service is in the "tpsd" policy services list
allow if {
	input.service in data.services.tpsd
}
