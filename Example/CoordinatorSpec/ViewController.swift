//
//  ViewController.swift
//  CoordinatorSpec
//
//  Created by Anupsahutw on 08/15/2023.
//  Copyright (c) 2023 Anupsahutw. All rights reserved.
//

import UIKit
import CoordinatorSpec

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let log = Logger()
        log.printLog()
        let frameworkBundle = Bundle(for: Logger.self)
        let path = frameworkBundle.path(forResource: "Resources", ofType: "bundle")
        let resourceBundle = Bundle(url: URL(fileURLWithPath: path!))
        let image = UIImage(named: "flower.jpg", in: resourceBundle, compatibleWith: nil)
        
        print(image)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

