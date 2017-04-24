//: Extensions for the UIResponder Class

import UIKit

// Two ways to create an string identifier on all classes that inherit from UIResponder - use ONE OR THE OTHER, not both.

extension UIResponder {
    class func identifier() -> String {
        return String(describing: self)
    }
    
    static var identifier : String {
        return String(describing: self)
    }
}



