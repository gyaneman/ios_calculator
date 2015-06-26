//
//  ViewControllerA.swift
//  AppTest2
//
//  Created by 片岡崇史 on 2015/06/24.
//  Copyright (c) 2015年 gyane. All rights reserved.
//

import UIKit

class ViewControllerA: UIViewController {
    
    @IBOutlet weak var textBox: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 通信先のURLを生成.
        var myUrl:NSURL = NSURL(string:"http://www.ugs.kochi-tech.ac.jp/robot/index.html")!
        // リクエストを生成.
        var myRequest:NSURLRequest  = NSURLRequest(URL: myUrl)
        // 送信処理を始める.
        NSURLConnection.sendAsynchronousRequest(myRequest, queue: NSOperationQueue.mainQueue(), completionHandler: self.getHttp)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func getHttp(res: NSURLResponse?, data: NSData?, error: NSError?){
        var myData:NSString = NSString(data: data!, encoding: NSUTF8StringEncoding)!
        println(myData)
        
        // TextViewにセット.
        textBox.text = myData as String
    }
}