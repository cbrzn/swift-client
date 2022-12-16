# PolywrapClient

Wraps rust function using C bindings. Allowing to execute Polywrap Client through Swift.

### Contribute

- Depends on https://github.com/polywrap/rust-client/tree/develop/packages/ffi-c

In order to run:
- You will need to download the rust-client repository, the `ffi-c` package, if you do changes you will need to follow the
instructions from readme there in order to update headers and dynamic library
- Build it and move the new generated files to `include` folder
- Go to `FfiSwiftWrapper` and run `./build_framework.sh` - You'll probably need to give permissions to file with `chmod +x`
- Once you have the `client.xcframework`, you will be able to build the `PolywrapClient`
