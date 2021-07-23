//
//  UIViewController+ChildViewController.swift
//  ChildViewController
//
//  Created by Aybek Can Kaya on 24.07.2021.
//

import Foundation
import UIKit
import DeclarativeLayout

// MARK: - Child View Controller
extension UIViewController {
    func addChildViewController(childController: UIViewController, onView: UIView) {
        addChild(childController)
        onView.addSubview(childController.view)
        constraintViewEqual(view: childController.view)
        childController.didMove(toParent: self)
    }

    private func constraintViewEqual(view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        view.fit()
    }

    func removeChildViewController() {
        guard parent != nil else { return }
        self.willMove(toParent: nil)
        self.view.removeFromSuperview()
        self.removeFromParent()
    }
}
