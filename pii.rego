package pii

import rego.v1

# By default, deny requests.
default allow := false

# Allow if destination service is in the "pii" policy services list
allow if {
	input.service in data.services.pii
}
