import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(PhoneCallPlugin)
public class PhoneCallPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "PhoneCallPlugin"
    public let jsName = "PhoneCall"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "call", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = PhoneCall()
    
    @objc func call(_ call: CAPPluginCall) {
        let phoneNumber = call.getString("phone") ?? "";
        let  phoneUrlStr = "tel://"+phoneNumber;
        DispatchQueue.main.async {
            if #available(iOS 10.0, *) {
                UIApplication.shared.open(URL(string: phoneUrlStr)!, options: [:], completionHandler: nil)
            } else {
                UIApplication.shared.openURL(URL(string: phoneUrlStr)!)
            }
        }
        
        call.resolve()
    }
}
