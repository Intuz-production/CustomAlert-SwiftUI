//
//  CustomAlertComponentApp.swift
//  CustomAlertComponent
//
//  Created by INTUZ on 19/11/21.
//

import SwiftUI

@main
struct CustomAlertComponentApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate, ObservableObject {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("App application is starting up. ApplicationDelegate didFinishLaunchingWithOptions.")
        _ = AppUtility.shared
        return true
    }
    
    //MARK: - Notification Delegate Methods
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        AppUtility.shared.printToConsole(error.localizedDescription)
    }
}
