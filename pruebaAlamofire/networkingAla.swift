//
//  networkingAla.swift
//  pruebaAlamofire
//
//  Created by Mohamed DIb on 4/7/15.
//  Copyright (c) 2015 UpperSky. All rights reserved.
//

import Foundation
import Alamofire

/*
public class Networking {

    private var _accessKey: NSURL?

    // Get nearby events by a provided Zip Code
    func getEventsNearby(completionHandler: (NSURL?, NSError?) -> ()) -> (){

        if let accessKey = self._accessKey {

            completionHandler(accessKey, nil)

        } else { // Otherwise request one
            Alamofire.request(.GET, "https://api.instagram.com/oauth/authorize", parameters: ["client_id": "fbfbe356849c419faddd564a9308875e","redirect_uri":"http://yourcallback.com/callback", "response_type":"code" ])
                .response { (request, response, data, error) in
                    accessKey = request.URL

                self._accessKey = accessKey
                completionHandler(accessKey, error)
            }
        }

        Alamofire.request(.GET, "https://api.instagram.com/oauth/authorize", parameters: ["client_id": "fbfbe356849c419faddd564a9308875e","redirect_uri":"http://yourcallback.com/callback", "response_type":"code" ])
            .response { (request, response, data, error) in
                url = request.URL
        }

        return url
    }

    class func getUserData (code:String) -> AnyObject{

        var retrieved: AnyObject? = "data"

        Alamofire.request(.POST, "https://api.instagram.com/oauth/access_token", parameters: ["client_id":"fbfbe356849c419faddd564a9308875e", "client_secret":"968e78308a154519a8af567b66da738f", "grant_type":"authorization_code", "redirect_uri":"http://yourcallback.com/callback", "code":code])
            .responseJSON { (request, response, data, error) in
                retrieved = data
        }
        return retrieved!
    }
    
}

*/

/*
class Networking {

    private var _retrieved: AnyObject? = nil
    private var _accessKey: NSURL?

    private func getUrl(completionHandler: (NSURL?, NSError?) -> ()) -> () {

        // If we already have an access key, call the completion handler with it immediately
        if let accessKey = self._accessKey {
            completionHandler(accessKey, nil)
        } else { // Otherwise request one
            Alamofire.request(.GET, "https://api.instagram.com/oauth/authorize", parameters: ["client_id": "fbfbe356849c419faddd564a9308875e","redirect_uri":"http://yourcallback.com/callback", "response_type":"code" ])
                .response { (request, response, data, error) in

                let accessKey = data as? NSURL // info will be nil if it's not an NSDictionary

                self._accessKey = accessKey
                completionHandler(accessKey, error)
            }
        }
    }

    internal func somethingNeedingAccessKey() {
        getUrl { (accessKey, error) in
            if accessKey != nil {
                // Use accessKey however you'd like here
                println(accessKey)
            } else {
                // Handle error / nil accessKey here
            }
        }
    }
/*
    private func getUserData(completionHandler: (AnyObject?, NSError?) -> ()) -> () {

        // If we already have an access key, call the completion handler with it immediately
        if let retrieved: AnyObject = self._retrieved {
            completionHandler(retrieved, nil)
        } else { // Otherwise request one
            Alamofire.request(.POST, "https://api.instagram.com/oauth/access_token", parameters: ["client_id":"fbfbe356849c419faddd564a9308875e", "client_secret":"968e78308a154519a8af567b66da738f", "grant_type":"authorization_code", "redirect_uri":"http://yourcallback.com/callback", "code":code])
                .responseJSON { (request, response, data, error) in

                    let retrieved: AnyObject? = data

                    self._retrieved = retrieved
                    completionHandler(retrieved, error)
            }
        }
    }

    public func somethingNeedingUserData() {
        getUserData {(retrieved, error) in
            if retrieved != nil {
                // Use accessKey however you'd like here
                println(retrieved)
            } else {
                // Handle error / nil accessKey here
            }
        }
    }
*/
}*/