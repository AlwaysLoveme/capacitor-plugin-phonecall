import Foundation

@objc public class PhoneCall: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
