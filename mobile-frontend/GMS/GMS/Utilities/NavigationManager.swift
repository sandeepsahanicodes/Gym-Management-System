//
//  CreateViewController.swift
//  GMS
//
//  Created by Sandeep Sahani on 05/02/25.
//

import UIKit

/// Manages creation and pushing of of view controllers in navigation controller.
struct NavigationManager {
    /// Creates an instance of view controller of provided type.
    static func instantiate<T: UIViewController>(ofType type: T.Type, fromStoryboard storyboardName: String) -> T {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let identifier = String(describing: type)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: identifier) as? T else {
            fatalError("Could not instantiate view controller \(identifier) from storyboard \(storyboardName)")
        }
        return viewController
    }
    /// Pushes a view controller of declared type in navigation stack.
    static func push<T: UIViewController>(ofType type: T.Type, fromStoryboard storyboardName: String, using navigationController: UINavigationController?) {
        let viewController = instantiate(ofType: type, fromStoryboard: storyboardName)
        navigationController?.pushViewController(viewController, animated: true)
    }
}
