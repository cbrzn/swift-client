import FfiSwiftWrapper
import Foundation

extension String {
    var UTF8CString: UnsafePointer<Int8> {
        return UnsafePointer((self as NSString).utf8String!)
    }
}

public class PolywrapClient {
    public static func invoke(uri: String, method: String, args: String) -> [UInt8] {
        let resolver = FfiSwiftWrapper.create_resolver()
        let client_ptr = FfiSwiftWrapper.create_client(resolver)
        let buffer = FfiSwiftWrapper.invoke(client_ptr, uri.UTF8CString, method.UTF8CString, args.UTF8CString)
        let result = Array(UnsafeBufferPointer(start: buffer.data, count: Int(buffer.len)))
        
        return result
    }
}

