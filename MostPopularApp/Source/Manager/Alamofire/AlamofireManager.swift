//
//  AlamofireManager.swift
//  Apps Challenge
//
//  Created by Francisco Javier Sarasua Galan on 03/05/2021.
//

import Foundation
import Alamofire
import AlamofireImage
import UIKit

struct AlamofireManager {
    
    static let shared = AlamofireManager()

    func request(_ urlContent: String, success: @escaping (Data) -> Void, failure: @escaping (Error?) -> Void) {
        
        AF.request(urlContent).responseJSON { response in

            if let data = response.data {
                success(data)
            } else {
                failure(nil)
            }
        }
    }
    
    func requestImageURL(_ imageUrl: String) -> UIImage? {
        var image: UIImage?
        
        AF.request(imageUrl, method: .get).responseImage { response in
            
            image = response.value
        }
        
        return image
    }
}
