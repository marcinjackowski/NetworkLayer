//
//  URLComponentsExtension.swift
//  NetworkLayer
//
//  Created by Marcin Jackowski on 06/09/2018.
//  Copyright © 2018 CocoApps. All rights reserved.
//

import Foundation

extension URLComponents {
    
    init(service: ServiceProtocol) {
        let url = service.baseURL.appendingPathComponent(service.path)
        self.init(url: url, resolvingAgainstBaseURL: false)!
        
        guard case let .requestParameters(parameters) = service.task, service.parametersEncoding == .url else { return }
        
        queryItems = parameters.map { key, value in
            return URLQueryItem(name: key, value: String(describing: value))
        }
    }
}
