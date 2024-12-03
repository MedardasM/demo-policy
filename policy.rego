# Nučiaudėtas policy

package envoy.authz
default allow = false

allow if {
    input.attributes.request.http.headers["testing-data"] != "block"
}
