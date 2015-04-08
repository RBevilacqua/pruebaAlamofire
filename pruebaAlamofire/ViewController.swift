//
//  ViewController.swift
//  pruebaAlamofire
//
//  Created by Mohamed DIb on 4/7/15.
//  Copyright (c) 2015 UpperSky. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController,UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!

    var code : String = ""

    var dataRetrieved = networking()

    var urlRequest: NSURL = NSURL()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


        //urlRequest = dataRetrieved.somethingNeedingAccessKey()


        /*Alamofire.request(.GET, "https://api.instagram.com/oauth/authorize", parameters: ["client_id": "fbfbe356849c419faddd564a9308875e","redirect_uri":"http://yourcallback.com/callback", "response_type":"code" ])
            .response { (request, response, data, error) in
                //println(request.URL)
                /*println(response)
                println(data)
                println(error)*/

                var request = NSURLRequest(URL: request.URL)


                self.webView.loadRequest(request)

                
        }*/

        //AQUI QUIERO MOSTRAR PARA PASARLO AL WEBVIEW QUE SALE EN FUNCION DEL ALAMOFIRE
        /*NSUserDefaults.standardUserDefaults().synchronize();
        if let url = NSUserDefaults.standardUserDefaults().objectForKey("url") as? NSURL {
            println(url)
        } else {
            println("error");
        }
*/
//        urlResquest = NSUserDefaults.standardUserDefaults().objectForKey("url")! as String
//            println(urlResquest)



    }


    
/*
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {


        var URLString : String = request.URLString

        if URLString.rangeOfString("http://yourcallback.com/callback") != nil
                && URLString.rangeOfString("code") != nil {

            code = URLString.componentsSeparatedByString("=").last!

            println(code)

            //dataRetrieved = Networking.getUserData(code)

            Alamofire.request(.POST, "https://api.instagram.com/oauth/access_token", parameters: ["client_id":"fbfbe356849c419faddd564a9308875e", "client_secret":"968e78308a154519a8af567b66da738f", "grant_type":"authorization_code", "redirect_uri":"http://yourcallback.com/callback", "code":code])
                .responseJSON { (request, response, data, error) in
                    println(data)

            }

            self.performSegueWithIdentifier("showLog", sender: self)

            //nuevo view controller

        }


        return true

    }
*/

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        dataRetrieved.somethingNeedingAccessKey({ (result) -> Void in
            println("aca obtengo el result \(result)")
            self.urlRequest = result
        })


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UIWebViewDelegate {
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {

        var URLString : String = request.URLString

        if URLString.rangeOfString("http://yourcallback.com/callback") != nil
            && URLString.rangeOfString("code") != nil {

                code = URLString.componentsSeparatedByString("=").last!

                println(code)

                //dataRetrieved = Networking.getUserData(code)

                Alamofire.request(.POST, "https://api.instagram.com/oauth/access_token", parameters: ["client_id":"fbfbe356849c419faddd564a9308875e", "client_secret":"968e78308a154519a8af567b66da738f", "grant_type":"authorization_code", "redirect_uri":"http://yourcallback.com/callback", "code":code])
                    .responseJSON { (request, response, data, error) in
                        println(data)

                }

                self.performSegueWithIdentifier("showLog", sender: self)
                
                //nuevo view controller
                
        }
        
        
        return true
    }
}
