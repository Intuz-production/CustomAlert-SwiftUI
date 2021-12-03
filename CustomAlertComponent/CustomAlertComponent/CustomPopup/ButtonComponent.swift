//
//  ButtonComponent.swift
//  CustomAlertComponent
//
//  Created by Bharat Jadav on 22/11/21.
//

import SwiftUI

struct ButtonComponent: View {
    let title: String
    var anim: Bool = false
    var callback: (() -> Void)?

    var body: some View {
        if nil != callback {
            Button(action: callback!, label: {
                Text(title)
            })
            .frame(width: 120.0, height: 45.0)
            .background(Color.init(K.appColors.purple))
            .foregroundColor(.white)
            .font(.custom(FontStyle.Montserrat_SemiBold.rawValue, size: 16))
            .clipShape(Capsule())
            .padding(.bottom, 10)
        }
    }
}

struct ButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        ButtonComponent(title: K.appButtonTitle.ok, callback: {
        })
    }
}

