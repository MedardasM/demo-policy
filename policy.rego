# Nučiaudėtas policy

package envoy.authz

import rego.v1

default allow := false

allow if {
    request_headers := input.attributes.request.http.headers
    headers["testing-data"] && headers["testing-data"] != "block-me"
}
