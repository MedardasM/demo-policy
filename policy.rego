# Nučiaudėtas policy

package istio.authz

import rego.v1

default allow := false

# METADATA
# description: Basic rule for testing PoC
# entrypoint: true
allow if {
	not input.attributes.request.http.headers["block-request"] == "true"
}
