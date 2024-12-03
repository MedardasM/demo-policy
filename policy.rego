# Nučiaudėtas policy

package envoy.authz

import rego.v1

default allow := false

allow if {
    request_headers := input.attributes.request.http.headers
    request_headers["testing-data"] && request_headers["testing-data"] != "block-me"
}
