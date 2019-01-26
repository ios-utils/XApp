//
//  Router.swift
//

import XRouter

/**
 Router Wrapper
 */
class Router<Route: RouteProvider>: XRouter.Router<Route> {
    
    /// Navigate to a route
    override func navigate(to route: Route, animated: Bool = true, completion: ((Error?) -> Void)? = nil) {
        super.navigate(to: route, animated: animated) { optionalError in
            
            // -- Log router errors -- //
            
            if let error = optionalError {
                log.error("Unable to route to \(route.name)! Error: \(error.localizedDescription)")
            } else {
                log.verbose("Navigated to route \(route.name)")
            }
            
            // -- //
            
            completion?(optionalError)
        }
    }

}
