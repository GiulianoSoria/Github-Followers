//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Giuliano Soria on 6/2/20.
//  Copyright © 2020 Giuliano Soria. All rights reserved.
//

import UIKit

protocol GFRepoItemVCDelegate: AnyObject {
    func didTapGitHubPRofile(for user: User)
}

class GFRepoItemVC: GFItemInfoVC {
    
    weak var delegate: GFRepoItemVCDelegate!
    
    init(user: User, delegate: GFRepoItemVCDelegate) {
        super.init(user: user)
        self.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, with: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, with: user.publicGists)
        actionButton.set(color: .systemPurple, title: "GitHub Profile", systemImageName: "person")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitHubPRofile(for: user)
    }
}
