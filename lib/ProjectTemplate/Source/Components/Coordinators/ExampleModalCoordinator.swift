//
//  ExampleModalCoordinator.swift
//

import UIKit

/**
 Example Modal Coordinator
 
 An example coordinator for a modal flow.
 */
class ExampleModalCoordinator {
    
    // MARK: - Navigation
    
    /// Navigation controller
    private(set) lazy var navigationController: UINavigationController = {
        return UINavigationController(rootViewController: rootViewController)
    }()
    
    /// Root view controller
    private lazy var rootViewController: UIViewController = {
        let viewController = UIViewController()
        viewController.view.backgroundColor = UIColor(red: 0.5, green: 0.1, blue: 0.7, alpha: 1)
        return viewController
    }()
    
    // MARK: - Methods
    
    /// Start the modal flow
    @discardableResult
    func start() -> UINavigationController {
        navigationController.setViewControllers([rootViewController], animated: true)
        return navigationController
    }
    
}
