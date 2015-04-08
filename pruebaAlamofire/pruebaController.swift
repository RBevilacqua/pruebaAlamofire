//
//  pruebaController.swift
//  pruebaAlamofire
//
//  Created by Mohamed DIb on 4/8/15.
//  Copyright (c) 2015 UpperSky. All rights reserved.
//
import UIKit
import Alamofire

//CONTROLLER DEL BOTON

class pruebaController: UIViewController{
    
    var dataRetrieved = networking()
    
    var urlRequest: NSURL = NSURL()
    
    
    @IBOutlet weak var weeewww: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)

        dataRetrieved.somethingNeedingAccessKey({ (result) -> Void in
            println("aca obtengo el result \(result)");
            self.urlRequest = result;
        })

        var request = NSURLRequest(URL: urlRequest)


        self.weeewww.loadRequest(request)


    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func connectInstagram(sender: UIButton) {
        self.performSegueWithIdentifier("loginIN", sender: self)
    }
    
}


