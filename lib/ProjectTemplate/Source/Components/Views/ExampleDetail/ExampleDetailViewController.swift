//
//  ExampleDetailViewController.swift
//

import UIKit

/**
 Example Detail View Controller
 
 An example detail view controller.
 */
class ExampleDetailViewController: UIViewController {
    
    // MARK: - Properties
    
    /// View Model
    var viewModel: ExampleDetailViewModel!
    
    // MARK: - UIViewController
    
    /// View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 0.1, green: 0.8, blue: 0.2, alpha: 1)
    }
    
}
