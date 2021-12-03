//
//  Constant.swift
//
//
//  Created by INTUZ on 10/06/21.
//

import Foundation
import SwiftUI

struct K {
    struct imgNames {
        static let alertCircle      = "ic_alert_circle"
        static let info             = "ic_info"
        static let success          = "ic_succes"
        static let checkCircle      = "ic_check_circle"
        static let warning          = "ic_warning"
    }
    
    struct appButtonTitle {
        static let ok               = "Okay"
        static let cancel           = "Cancel"
    }
    
    struct appColors {
        static let purple           = "purple"
        static let primaryBlack     = "primary_black"
        static let primaryWhite     = "primary_white"
        static let grey1            = "grey1"
        static let grey2            = "grey2"
        static let grey3            = "grey3"
        static let grey4            = "grey4"
        static let success          = "success"
        static let error            = "error"
        static let warning          = "warning"
    }
}

enum FontStyle: String {
   case Montserrat_Black        = "Montserrat-Black"
   case Montserrat_Bold         = "Montserrat-Bold"
   case Montserrat_ExtraBold    = "Montserrat-ExtraBold"
   case Montserrat_ExtraLight   = "Montserrat-ExtraLight"
   case Montserrat_Light        = "Montserrat-Light"
   case Montserrat_Medium       = "Montserrat-Medium"
   case Montserrat_Regular      = "Montserrat-Regular"
   case Montserrat_SemiBold     = "Montserrat-SemiBold"
   case Montserrat_Thin         = "Montserrat-Thin"
}
