//
//  ContentView.swift
//  CustomAlertComponent
//
//  Created by INTUZ on 19/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Open Error Alert")
            .padding()
            .onTapGesture {
                AppUtility.shared.showCustomAlert(alertType: .error, message: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", actionButtonTitle: nil, cancelButtonTitle: K.appButtonTitle.ok) { action in
                }
            }
        
        Text("Open Success Alert")
            .padding()
            .onTapGesture {
                AppUtility.shared.showCustomAlert(alertType: .success, message: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", actionButtonTitle: nil, cancelButtonTitle: K.appButtonTitle.ok) { action in
                }
            }
        
        Text("Alert with Cancel Button")
            .padding()
            .onTapGesture {
                AppUtility.shared.showCustomAlert(alertType: .info, message: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", isShowCancel: true, actionButtonTitle: K.appButtonTitle.ok, cancelButtonTitle: K.appButtonTitle.cancel) { action in
                    
                    if action == .okButton {
                        print("OK button pressed")
                    }
                    else {
                        print("Cancel button pressed")
                    }
                }
            }
        
        Text("Alert without Image")
            .padding()
            .onTapGesture {
                AppUtility.shared.showCustomAlert(alertType: .none, title: "Title", message: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", isShowCancel: true, actionButtonTitle: K.appButtonTitle.ok, cancelButtonTitle: K.appButtonTitle.cancel) { action in
                    
                    if action == .okButton {
                        print("OK button pressed")
                    }
                    else {
                        print("Cancel button pressed")
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
