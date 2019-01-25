//
//  Router.swift
//  Example
//
//  Created by Reece Como on 26/1/19.
//  Copyright © 2019 Reece Como. All rights reserved.
//

import XRouter

/**
 Router Wrapper
 */
class Router<Route: RouteProvider>: XRouter.Router<Route> {
    
    /// Navigate to a route
    override func navigate(to route: Route, animated: Bool = true, completion: ((Error?) -> Void)? = nil) {
        super.navigate(to: route, animated: animated) { optionalError in
            
            // <!-- Handle navigation errors here...
            
            if let error = optionalError {
                print("Error routing to \(route.name): \(error.localizedDescription)")
            } else {
                print("Navigated to \(route.name)!")
            }
            
            // -->
            
            completion?(optionalError)
        }
    }

}
