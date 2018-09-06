//
//  Post.swift
//  NetworkLayer
//
//  Created by Marcin Jackowski on 06/09/2018.
//  Copyright © 2018 CocoApps. All rights reserved.
//

import Foundation

struct Post: Codable {
    let id: Int
    let title: String
    let body: String
}
