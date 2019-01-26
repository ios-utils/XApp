//
//  ExampleTabCoordinator.swift
//

import UIKit

/**
 Example Tab Coordinator
 
 An example coordinator for a navigation tab.
 */
class ExampleTabCoordinator {
    
    // MARK: - Navigation
    
    /// Navigation controller
    private(set) lazy var navigationController: UINavigationController = {
        return UINavigationController(rootViewController: rootViewController)
    }()
    
    /// Root view controller
    private lazy var rootViewController: UIViewController = {
        let viewController = UIViewController()
        viewController.title = LocalizedStrings.tabExampleTitle()
        viewController.view.backgroundColor = UIColor(red: 0.8, green: 0.1, blue: 0.1, alpha: 1)
        return viewController
    }()
    
    // MARK: - Methods
    
    /// Goto home page for the tab
    @discardableResult
    func gotoHome() -> UINavigationController {
        navigationController.setViewControllers([rootViewController], animated: true)
        return navigationController
    }
    
}
