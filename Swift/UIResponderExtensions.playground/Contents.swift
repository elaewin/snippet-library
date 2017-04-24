//: Extensions for the UIResponder Class

import UIKit

// Create an string identifier method on all classes that inherit from UIResponder

extension UIResponder {
    class func identifier() -> String {
        return String(describing: self)
    }
}

// Create a string identifier on all classes that inherit from UIResponder as a calculated variable


