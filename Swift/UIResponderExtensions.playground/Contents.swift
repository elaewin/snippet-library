//: Extensions for the UIResponder Class

import UIKit

// Create an string identifier on all classes that inherit from UIResponder

extension UIResponder {
    class func identifier() -> String {
        return String(describing: self)
    }
}

