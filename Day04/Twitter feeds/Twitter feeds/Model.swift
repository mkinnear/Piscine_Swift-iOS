//
//  Model.swift
//  Twitter feeds
//
//  Created by Keegan KINNEAR on 2018/10/06.
//  Copyright © 2018 Keegan KINNEAR. All rights reserved.
//

import Foundation

struct Tweet: CustomStringConvertible{

    let name:String
    let text:String
    
    var description: String{
    var str = name
    str += "\n"
    str += text
    return str
    }
}


protocol APITwitterDelegate: class {
    init (_ text:[Tweet])
    func receivedTweets (texts:[Tweet]) -> NSError
    func TweetError(err:NSError)
}



class Controller
{
    
    var delegate: APITwitterDelegate?

    static var Token: String?

    let token:String
    
    init (_ delegate: APITwitterDelegate?, _ token: String)
    {
        self.delegate = delegate
        self.token = token
    }
    
    static func GetInformation (completion: @escaping ([String: Any]) -> ())
    {
//        var obj:APITwitterDelegate = APITwitterDelegate()
        
        
        let consumerKey = "hckN2oMBWINTHGqXyJjlIkbmh"
        let consumerSecretKey = "l6f8AkcQqivZhUdxZa85HKKwz9iL8YIKSWiDIsQV726I41QjvX"
        let bearer = (consumerKey + ":" + consumerSecretKey).data(using: String.Encoding.utf8)!.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
        let url = URL(string: "https://api.twitter.com/oauth2/token")
        
                    var request = URLRequest(url: url!)
            request.httpMethod = "POST"
            request.setValue("Basic " + bearer, forHTTPHeaderField: "Authorization")
            request.setValue("application/x-www-form-urlencoded;charset=UTF-8", forHTTPHeaderField: "Content-Type")
            request.httpBody = "grant_type=client_credentials".data(using: .utf8)
            let task = URLSession.shared.dataTask(with: request) { (data: Data?, response: URLResponse?, error:Error?) in
                print("=======================")
                print("        Response       ")
                print("=======================")
                print (response!)
                print("=======================")
                print("          Data         ")
                print("=======================")
                print (data!)
//                print(response!)
                if let err = error {
                    print(err.localizedDescription)
                } else if let d = data {
                    do {
                        if let json: [String: Any] = try JSONSerialization.jsonObject(with: d, options: JSONSerialization.ReadingOptions.mutableContainers) as? [String: Any] {
                            print("=======================")
                            print("          JSON         ")
                            print("=======================")
                            print(json["access_token"] as Any)
                            
                            self.Token = (json["access_token"] as! String)
//                            var obj:APITwitterDelegate = APITwitterDelegate(json["tweet"] as! [Tweet])
                        }
                    } catch (let err) {
                        print(err.localizedDescription)
                        
                    }
                }
            }
            task.resume()
        print("=======================")
        print("         TOKEN!        ")
        print("=======================")
        print(self.Token as Any)
    }
    
    static func PostInformation ()
    {
        
//        let consumerKey = "hckN2oMBWINTHGqXyJjlIkbmh"
//        let consumerSecretKey = "l6f8AkcQqivZhUdxZa85HKKwz9iL8YIKSWiDIsQV726I41QjvX"
        let bearer = ("Jk24nximItbLdob7Z66ojzHz3pP8HfTPVJugu8vjyWJfi ").data(using: String.Encoding.utf8)!.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
        let url = URL(string: "https://stream.twitter.com/1.1/statuses/filter.json")
        
        var request = URLRequest(url: url!)
        
        request.httpMethod = "GET"
        request.setValue("Bearer " + bearer, forHTTPHeaderField: "Authorization")
//        request.setValue("application/x-www-form-urlencoded;charset=UTF-8", forHTTPHeaderField: "Content-Type")
//        request.httpBody = "grant_type=client_credentials".data(using: .utf8)
        let task = URLSession.shared.dataTask(with: request) { (data: Data?, response: URLResponse?, error:Error?) in
            print("=======================")
            print("        Response       ")
            print("=======================")
            print (response!)
            print("=======================")
            print("          Data         ")
            print("=======================")
            print (data!)
            //                print(response!)
            if let err = error {
                print(err.localizedDescription)
            } else if let d = data {
                do {
                    if let json: [String: Any] = try JSONSerialization.jsonObject(with: d, options: JSONSerialization.ReadingOptions.mutableContainers) as? [String: Any] {
                        print("=======================")
                        print("          JSON         ")
                        print("=======================")
                        print(json)
                        
                    }
                } catch (let err) {
                    print(err.localizedDescription)
                }
            }
        }
        task.resume()
    }
}
