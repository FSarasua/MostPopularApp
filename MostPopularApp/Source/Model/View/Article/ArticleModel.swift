//
//  ArticleModel.swift
//  MostPopularApp
//
//  Created by Francisco Javier Sarasua Galan on 02/11/2021.
//

import Foundation

// MARK: - Result
struct ResultModel {
    let id: Int
    let title, url, publishedDate, section, author, urlImage: String
    let source: Source
    let type: ResultType
    
    init() {
        self.id = -1
        self.title = ""
        self.url = ""
        self.publishedDate = ""
        self.section = ""
        self.author = ""
        self.urlImage = ""
        self.source = .newYorkTimes
        self.type = .article
    }
    
    internal init(id: Int, title: String, url: String, source: Source, publishedDate: String, section: String, author: String, urlImage: String, type: ResultType) {
        self.id = id
        self.title = title
        self.url = url
        self.source = source
        self.publishedDate = publishedDate
        self.section = section
        self.author = author
        self.urlImage = urlImage
        self.type = type
    }
    
    internal init(resultServer: ResultServer) {
        self.id = resultServer.id ?? -1
        self.title = resultServer.title ?? ""
        self.url = resultServer.url ?? ""
        self.source = resultServer.source ?? .newYorkTimes
        self.publishedDate = resultServer.publishedDate ?? ""
        self.section = resultServer.section ?? ""
        self.author = resultServer.abstract ?? ""
        self.urlImage = resultServer.media?.first?.mediaMetadata?.first?.url ?? ""
        self.type = resultServer.type ?? .article
    }
}
