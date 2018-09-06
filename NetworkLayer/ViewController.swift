//
//  ViewController.swift
//  NetworkLayer
//
//  Created by Marcin Jackowski on 06/09/2018.
//  Copyright © 2018 CocoApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let sessionProvider = URLSessionProvider()

    override func viewDidLoad() {
        super.viewDidLoad()
        getPosts()
    }

    private func getPosts() {
        sessionProvider.request(type: [Post].self, service: PostService.all) { response in
            switch response {
            case let .success(posts):
                print(posts)
            case let .failure(error):
                print(error)
            }
        }
    }
}

