//
//  networking.swift
//  pruebaAlamofire
//
//  Created by Mohamed DIb on 4/7/15.
//  Copyright (c) 2015 UpperSky. All rights reserved.
//

import UIKit
import Alamofire

//CLASE QUE HACE LAS FUNCIONES DE TRAER LA INFO

class networking: NSObject{

    private var _retrieved: AnyObject? = nil
    var _accessKey: NSURL?

    private func getUrl(completionHandler: (NSURL?, NSError?) -> ()) -> () {

        // If we already have an access key, call the completion handler with it immediately
        if let accessKey = self._accessKey {
            completionHandler(accessKey, nil)
        } else { // Otherwise request one
            Alamofire.request(.GET, "https://api.instagram.com/oauth/authorize", parameters: ["client_id": "fbfbe356849c419faddd564a9308875e","redirect_uri":"http://yourcallback.com/callback", "response_type":"code" ])
                .response { (request, response, data, error) in

                    let accessKey = request.URL
                    self._accessKey = accessKey
                    completionHandler(accessKey, error)
            }
        }
    }

    func somethingNeedingAccessKey(completion: (result: NSURL) -> Void) {
        getUrl { (accessKey, error) in
            if accessKey != nil {
                // Use accessKey however you'd like here
                var urlRequest: NSURL = accessKey!
                //println("Desde el Handler: ",accessKey!)
                println("Second Handler")
                println(urlRequest)
                //AQUI SALVO LA URL QUE ME TRAIGO Y MUESTRO EN CONSOLA
                //NSUserDefaults.standardUserDefaults().setObject(urlRequest, forKey: "web")
                //NSUserDefaults.standardUserDefaults().synchronize();
                
                completion(result: urlRequest);
            } else {
                println(error)
                // Handle error / nil accessKey here
            }
        }
    }
   
}
