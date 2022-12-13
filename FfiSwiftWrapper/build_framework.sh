xcodebuild -create-xcframework \
    -library ./include/libpolywrap_ffi_swift_client.dylib -headers include \
    -output ./FfiSwiftWrapper.xcframework
