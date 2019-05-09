//
//  NewsResponce.swift
//  MoyaEx
//
//  Created by Suriya on 6/2/2562 BE.
//  Copyright © 2562 Suriya. All rights reserved.
//

import Foundation
import ObjectMapper

class NewsResponce: Mappable {
    
    var status: String?
    var sources: [Sources]?
    
    required init?(map: Map){
    }
    
    func mapping(map: Map) {
        status <- map["status"]
        sources <- map["sources"]
    }
}

class Sources: Mappable {
    
    var id: String?
    var name: String?
    var description: String?
    var url: String?
    var category: String?
    var language: String?
    var country: String?
    var urlsToLogos: UrlsToLogos?
    var sortBysAvailable: [String]?
    
    required init?(map: Map){
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        description <- map["description"]
        url <- map["url"]
        category <- map["category"]
        language <- map["language"]
        country <- map["country"]
        urlsToLogos <- map["urlsToLogos"]
        sortBysAvailable <- map["sortBysAvailable"]
    }
}

class UrlsToLogos: Mappable {
    
    var small: String?
    var medium: String?
    var large: String?
    
    required init?(map: Map){
    }
    
    func mapping(map: Map) {
        small <- map["small"]
        medium <- map["medium"]
        large <- map["large"]
    }
} 
