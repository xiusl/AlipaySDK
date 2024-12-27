# AlipaySDK

import AlipaySDK use SwiftPM

current version 15.8.28

```swift
//
//  ViewController.swift
//  example
//
//  Created by like on 2024/12/27.
//

import UIKit
import AlipaySDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        print(String(describing: AlipaySDK.defaultService().currentVersion()))
    }
}
```
