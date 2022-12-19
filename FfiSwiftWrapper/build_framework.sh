xcodebuild -create-xcframework \
    -library ./include/libpolywrap_ffi_c.dylib -headers include \
    -output ./FfiSwiftWrapper.xcframework
