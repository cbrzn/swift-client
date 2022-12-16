xcodebuild -create-xcframework \
    -library ./include/libpolywrap_ffi_swift_c.dylib -headers include \
    -output ./FfiSwiftWrapper.xcframework
