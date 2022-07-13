//
//  ArticleViewModel.swift
//  BreakingNews
//
//  Created by macbook on 13.07.2022.
//

import Foundation



struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel {
    init(_ article : Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String? {
        return article.title
    }
    
    var author : String? {
        return article.author
    }
    
    var description: String? {
        return article.description
    }
}
