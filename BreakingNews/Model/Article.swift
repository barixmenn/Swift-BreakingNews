//
//  Article.swift
//  BreakingNews
//
//  Created by macbook on 13.07.2022.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    var author: String?
    var title: String?
    var description: String?
}
