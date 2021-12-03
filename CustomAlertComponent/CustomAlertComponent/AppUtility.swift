//
//  AppUtility.swift
//  CustomAlertComponent
//
//  Created by INTUZ on 19/11/21.
//

import Foundation
import UIKit
import SwiftUI

class AppUtility: NSObject {
    static let shared = AppUtility()
    
    public override init() {
        super.init()
    }
}

//MARK: - Set Print Option
extension AppUtility {
    func printToConsole(_ object : Any) {
        #if DEBUG
        Swift.print(object)
        #endif
    }
}

//MARK:- Custom Alert View
extension AppUtility {
    func showCustomAlert(alertType: AlertType, title: String = "", message: String, isShowCancel: Bool = false, actionButtonTitle: String?, cancelButtonTitle: String, buttonActionCompletion: AlertButtonActionCompletion?) {
        DispatchQueue.main.async {
            guard let window = UIApplication.shared.connectedScenes
                    .filter({$0.activationState == .foregroundActive})
                    .compactMap({$0 as? UIWindowScene})
                    .first?.windows
                    .filter({$0.isKeyWindow}).first else {return}
            let alert = CustomAlertView(alertType: alertType, title: title, message: message, isShowCancel: isShowCancel, actionButtonTitle: actionButtonTitle, cancelButtonTitle: cancelButtonTitle, buttonActionCompletion: { action in
                window.rootViewController?.dismiss(animated: false, completion: {
                    buttonActionCompletion?(action)
                })
            })
            let hostVC = UIHostingController(rootView: alert)
            hostVC.modalPresentationStyle = .overCurrentContext
            hostVC.view.backgroundColor = .clear
            window.rootViewController?.dismiss(animated: false, completion: nil)
            window.rootViewController?.present(hostVC, animated: false, completion: nil)
        }
    }
}
