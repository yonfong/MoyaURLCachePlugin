//
//  MoyaURLCachePlugin.swift
//  MoyaURLCachePlugin
//
//  Created by sky on 2022/1/4.
//

import Foundation
import Moya

final class MoyaURLCachePlugin: PluginType {
    func prepare(_ request: URLRequest, target: TargetType) -> URLRequest {
        if let urlCacheable = target as? MoyaURLCacheable {
            var cachableRequest = request
            cachableRequest.cachePolicy = urlCacheable.cachePolicy
            return cachableRequest
        }
        return request
    }
}
