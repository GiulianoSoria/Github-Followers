//
//  GFDataLoadingVC.swift
//  GHFollowers
//
//  Created by Giuliano Soria on 6/5/20.
//  Copyright © 2020 Giuliano Soria. All rights reserved.
//

import UIKit

class GFDataLoadingVC: UIViewController {
    
    var containerView: UIView!
    
    func showLoadingView() {
        containerView = UIView(frame: view.bounds)
        view.addSubview(containerView)
        
        containerView.backgroundColor = .systemBackground
        containerView.alpha = 0
        
        UIView.animate(withDuration: 0.25) { self.containerView.alpha = 0.8 }
        
        let activityIndicator = UIActivityIndicatorView(style: .large)
        containerView.addSubview(activityIndicator)
        
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            activityIndicator.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            activityIndicator.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
        ])
        
        activityIndicator.startAnimating()
    }
    
    func dismissLoadingView() {
        DispatchQueue.main.async {
            self.containerView.removeFromSuperview()
            self.containerView = nil
        }
    }
    
    func showEmptyStateView(with message: String, view: UIView) {
        let emptyStateView = GFEmptyStateView(message: message)
        emptyStateView.frame = view.bounds
        view.addSubview(emptyStateView)
    }
    
}
