//
//  Container.swift
//  Example
//

import XRouter
import UIKit

/**
 Dependency Injection Container
 
 Resolve your dependencies here.
 */
let container = Container() ; class Container {
    
    // MARK: - Router
    
    /// Share an instance of the router.
    lazy var router = Router<Route>()
    
    // MARK: - Coordinators
    
    /// Resolve the main coordinator
    lazy var mainCoordinator: MainCoordinator = {
        return MainCoordinator(router,
                               exampleModalCoordinator,
                               exampleTabCoordinator)
    }()
    
    /// Resolve the example coordinator for a modal flow
    lazy var exampleModalCoordinator: ExampleModalCoordinator = {
        return ExampleModalCoordinator()
    }()
    
    /// Resolve the example coordinator for a tab
    lazy var exampleTabCoordinator: ExampleTabCoordinator = {
        return ExampleTabCoordinator()
    }()
    
    // Add coordinators here...
    
    // MARK: - Views
    
    /// Resolve an example detail view controller
    func exampleDetailViewController(withID identifier: String) -> ExampleDetailViewController {
        let viewController = ExampleDetailViewController()
        
        // Configure dependencies
        viewController.viewModel = exampleDetailViewModel(withID: identifier)
        
        return viewController
    }
    
    /// Resolve an exmaple detail view model
    private func exampleDetailViewModel(withID identifier: String) -> ExampleDetailViewModel {
        let viewModel = ExampleDetailViewModel()
        
        // Configure dependencies
        viewModel.exampleModel = ExampleModel(identifier: identifier)
        
        return viewModel
    }
    
    // Add views here...
    
};
