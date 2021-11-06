//
//  NetworkService.swift
//  FixturesIosApp
//
//  Created by Ayodejii Ayankola on 03/11/2021.
//

import Foundation

class NetworkService {
    static let session = URLSession(configuration: URLSessionConfiguration.default);
    
    public static func fetch<T: Codable>(with url:String, method: String,
                                         type: T.Type, completionHandler
                                            completion: @escaping (_ success: Bool,
                                                                   _ object: Codable) -> ())  {
        
        let urlString = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        let request = NSMutableURLRequest(url: NSURL(string: urlString!)! as URL)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("09049cd854804973859b5f55ecdcf6ac", forHTTPHeaderField: "X-Auth-Token")
        request.httpMethod = method
        session.dataTask(with: request as URLRequest) { (data, response, error) -> Void in
            if let data = data {
//                let dataString = String(data: data, encoding: .utf8)
//                print("the res is \(dataString)")
                if let decodedResponse = try? JSONDecoder().decode(T.self, from: data) {
                    print("He is \(decodedResponse)")
                    // we have good data – go back to the main thread
                    DispatchQueue.main.async {
                        // update our UI
                        if let response = response as? HTTPURLResponse, 200...299 ~= response.statusCode {
                            completion(true, decodedResponse)
                        } else {
                            completion(false, decodedResponse)
                        }
                    }
                }
            }
        }.resume();
    }
    
    

}
