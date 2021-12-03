//
//  UIFont.swift

//  Copyright © 2020 iOS Developer. All rights reserved.
//

import UIKit

extension UIFont {
    convenience init?(fontStyle: FontStyle, size: CGFloat) {
        self.init(name: fontStyle.rawValue, size: size)
    }
}
