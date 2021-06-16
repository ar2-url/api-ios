//
//  Service.swift
//  learn-api-call
//
//  Created by The App Experts on 15/06/2021.
//  Copyright © 2021 TAE. All rights reserved.
//

import Foundation

//"https://raw.githubusercontent.com/theappbusiness/engineering-challenge/main/endpoints/"

protocol Serviceable {
    
    func fetchData(urlStr:String, completionHandler: @escaping ((Data?, Error?)-> Void))
}


class Service: Serviceable {
    func fetchData(urlStr: String, completionHandler:@escaping ((Data?, Error?) -> Void)) {
        
        let urlSession = URLSession.shared
        
        let url = URL(string: urlStr)!
        
        let dataTask = urlSession.dataTask(with: url) { (data, response, error) in
            
            guard let _data = data else {
                completionHandler(nil, error)
                return
            }
            
            completionHandler(_data, nil)
    }
        
        dataTask.resume()
    }
    
    
}
