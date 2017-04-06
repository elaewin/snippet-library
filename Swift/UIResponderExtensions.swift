//: Extensions for the UIResponder Class

import UIKit

// Create an string identifier method on all classes that inherit from UIResponder
// USE THIS --OR-- THE CALCULATED VARIABLE VERSION BELOW

extension UIResponder {
    class func identifier() -> String {
        return String(describing: self)
    }
}

// Create a string identifier on all classes that inherit from UIResponder as a calculated variable
// USE THIS --OR-- THE CLASS METHOD VERSION ABOVE

extension UIResponder {
    static var identifier: String {
        return String(describing: self)
    }
}
