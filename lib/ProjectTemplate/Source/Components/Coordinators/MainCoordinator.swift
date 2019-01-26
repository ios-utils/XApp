//
//  MainCoordinator.swift
//

import UIKit

/**
 Main Coordinator
 */
class MainCoordinator {
    
    // MARK: - Dependencies
    
    /// Router
    let router: Router<Route>
    
    // MARK: - Coordinators
    
    /// Example coordinator for a modal flow
    let exampleModalCoordinator: ExampleModalCoordinator
    
    /// Example coordinator for a tab
    let exampleTabCoordinator: ExampleTabCoordinator
    
    // Add coordinators here...
    
    // MARK: - Navigation Stack
    
    /// Root view controller
    private(set) lazy var rootViewController: UITabBarController = {
        let tabBarController = UITabBarController()
        
        // Set tabs
        tabBarController.viewControllers = [
            exampleTabCoordinator.navigationController
        ]
        
        return tabBarController
    }()
    
    // MARK: - Methods
    
    /// Constructor. Configure dependencies.
    init(_ router: Router<Route>,
         _ exampleModalCoordinator: ExampleModalCoordinator,
         _ exampleTabCoordinator: ExampleTabCoordinator
        ) {
        self.router = router
        self.exampleModalCoordinator = exampleModalCoordinator
        self.exampleTabCoordinator = exampleTabCoordinator
    }
    
    /// Start the coordinator
    func start(window: UIWindow?) {
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
        
        performRouteTransitionDemo(withDelay: 2.5)
    }
    
    // MARK: - Implementation
    
    /// This is an example method that performs a transition demo
    private func performRouteTransitionDemo(withDelay delay: TimeInterval) {
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            self.router.navigate(to: .exampleModal) { _ in
                DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
                    self.router.navigate(to: .exampleDetail(withID: "Example"))
                }
            }
        }
    }
    
}
