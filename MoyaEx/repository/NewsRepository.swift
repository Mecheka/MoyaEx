//
//  NewsRepository.swift
//  MoyaEx
//
//  Created by Suriya on 6/2/2562 BE.
//  Copyright © 2562 Suriya. All rights reserved.
//

import Foundation
import RxSwift
import Moya
import Moya_ObjectMapper

class NewsRepository {
    private lazy var provider: Reactive<MoyaProvider<NewsService>> = {
        let provider = MoyaProvider<NewsService>(plugins: [NetworkLoggerPlugin(verbose: true)])
        return provider.rx
    }()
    
    func getNews() -> Single<NewsResponce> {
        let responce = provider.request(.getNews())
        return responce.mapObject(NewsResponce.self)
        
    }
}
