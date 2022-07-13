//
//  WebService.swift
//  BreakingNews
//
//  Created by macbook on 13.07.2022.
//

import Foundation
import UIKit

class WebService {
    
    func getData(url: URL, completion: @escaping ([Article]?) -> () ) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                debugPrint(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articleList = articleList {
                    completion(articleList.articles)
                }
            }
        }
    }
}
