# Nučiaudėtas policy

package envoy.authz

import rego.v1

default allow := false

# METADATA
# description: Basic rule for testing PoC
# entrypoint: true
allow if {
    input.attributes.request.http.headers["testing-data"] != "block-mee"
}
