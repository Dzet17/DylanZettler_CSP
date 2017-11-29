//
//  InternetDetailViewController.swift
//  DylanZettler_CSP
//
//  Created by Zettler, Dylan on 11/29/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import WebKit

public class InternetDetailViewController : UIViewController
{
    //MARK: GUI Controls
    @IBOutlet weak var WebView: UIWebView!
    @IBOutlet weak var UILabel: UILabel!
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        //Do any additional setup after loading the view
    }
    
    private func setup() -> Void
    {
        
    }
}

