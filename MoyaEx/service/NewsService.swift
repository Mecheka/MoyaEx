//
//  NewsService.swift
//  MoyaEx
//
//  Created by Suriya on 6/2/2562 BE.
//  Copyright © 2562 Suriya. All rights reserved.
//

import Foundation
import Moya

enum NewsService: TargetType{
    
    case getNews()
    
    var baseURL: URL{
        return URL(string: Constance.baseUrl)!
    }
    
    var path: String{
        switch self {
        case .getNews():
            return "sources"
        }
    
    }
    
    var method: Moya.Method{
        switch self {
        case .getNews():
            return .get
        }
    }
    
    var sampleData: Data{
        return "success".data(using: .utf8)!
    }
    
    var task: Task{
        switch self {
        case .getNews():
            return .requestPlain
        }
    }
    
    var parameters: [String: Any]?{
        switch self {
        case .getNews():
            return nil
        }
    }
    
    var parameterEncoding: ParameterEncoding {
        return URLEncoding.default
    }
    
    var headers: [String : String]?{
        return nil
    }

}
