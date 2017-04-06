//
//  SimpleCache.swift
//  Originally from TwitterClient
//
//  Created by Erica Winberry on 10/20/16.
//  Copyright © 2016 Erica Winberry. All rights reserved.
//

// This is a very basic image cache that was created to keep a small number of user images for a twitter clone that was built for week 2 of the iOS 401, and is based on code from Adam Walraff (https://github.com/awallraff).
// The repo for the project is at https://github.com/elaewin/Week2-Twitter-Client/tree/master/TwitterClient.

import UIKit

class SimpleCache {

    static let shared = SimpleCache()

    private var cache = [String: UIImage]()

    private let capacity = 20

    // accessor method
    func image(key: String) -> UIImage? {
        return self.cache[key]
    }

    // allows us to put images into dict.
    func setImage(_ image: UIImage, with key: String) {
        if self.cache.count >= capacity {
            guard let lastKey = Array(self.cache.keys).last else { return }
            self.cache.removeValue(forKey: lastKey)
        }

        self.cache[key] = image
    }
}
