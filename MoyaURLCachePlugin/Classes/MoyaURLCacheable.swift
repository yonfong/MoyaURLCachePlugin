//
//  MoyaURLCacheable.swift
//  MoyaURLCachePlugin
//
//  Created by sky on 2022/1/4.
//

import Foundation

protocol MoyaURLCacheable {
    typealias MoyaURLCacheablePolicy = URLRequest.CachePolicy
    var cachePolicy: MoyaURLCacheablePolicy { get }
}
