//
//  Routes.swift
//  Example
//

import XRouter

/**
 Routes
 
 Define your routes here.
 */
enum Route {
    
    /// Example tab home
    case exampleTabHome
    
    /// Example modal screen
    case exampleModal
    
    /// Example detail screen
    case exampleDetail(withID: String)
    
    // Add routes here...
    
}

extension Route: RouteProvider {
    
    // MARK: - Configuration
    
    /// Configure route transition types.
    var transition: RouteTransition {
        switch self {
        case .exampleTabHome:
            return .set
        case .exampleDetail:
            return .push
        case .exampleModal:
            return .modal
        }
    }
    
    /// Create the transitions for the view controllers.
    func prepareForTransition(from viewController: UIViewController) throws -> UIViewController {
        switch self {
        case .exampleTabHome:
            return container.exampleTabCoordinator.gotoHome()
        case .exampleModal:
            return container.exampleModalCoordinator.start()
        case .exampleDetail(let identifier):
            return container.exampleDetailViewController(withID: identifier)
        }
    }
    
}
