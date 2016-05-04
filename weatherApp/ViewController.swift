//
//  ViewController.swift
//  wheatherApp
//
//  Created by Gaurav k on 5/4/16.
//  Copyright © 2016 Gaurav k. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let myUrl = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22pune%2C%20ak%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
    
    @IBAction func doGetRequest(sender: UIButton) {
        let url = NSURL(string: "http://www.stackoverflow.com")
        print("hello")
        let request = NSURLRequest(URL: url!)
        let session = NSURLSession.sharedSession()
        
        session.dataTaskWithRequest(request, completionHandler: { (data, responce, error) in
            dispatch_async(dispatch_get_main_queue(),{
                print(data)
            })
        })

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

