import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(PhoneCallPlugin)
public class PhoneCallPlugin: CAPPlugin {
    private let implementation = PhoneCall()

    @objc func start(_ call: CAPPluginCall) {
        let phoneNumber = call.getString("phone") ?? "";
        let  phoneUrlStr = "tel://"+phoneNumber;
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(URL(string: phoneUrlStr)!, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(URL(string: phoneUrlStr)!)
        }
        call.resolve([
            "msg": "成功"
        ])
    }
}
