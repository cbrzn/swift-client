# PolywrapClient

Wraps rust function using C bindings. Allowing to execute Polywrap Client through Swift.

- Depends on rust client FFI C bindings

In order to run:
- Download rust client and build `ffi-swift` package
- Make sure you have cbingen downloaded and run in `ffi-swift` package
`cbindgen --config cbindgen.toml --crate polywrap_ffi_swift_client --output ../../../swift/PolywrapClient/FfiClient/include/header.h --lang c`
- Go to `FfiSwiftWrapper` and run `./build_framework.sh` - You'll probably need to give permissions to file
- Once you have the `client.xcframework, you will be able to build the `PolywrapClient`
