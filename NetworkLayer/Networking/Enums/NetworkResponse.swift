//
//  NetworkResponse.swift
//  NetworkLayer
//
//  Created by Marcin Jackowski on 06/09/2018.
//  Copyright © 2018 CocoApps. All rights reserved.
//

enum NetworkResponse<T> {
    case success(T)
    case failure(NetworkError)
}
