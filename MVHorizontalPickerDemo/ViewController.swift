//
//  ViewController.swift
//  MVHorizontalPickerDemo
//
//  Created by Andrea Bizzotto on 17/03/2016.
//  Copyright © 2016 musevisions. All rights reserved.
//

import UIKit
import MVHorizontalPicker

class ViewController: UIViewController {

    @IBOutlet var picker: MVHorizontalPicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        picker.font = UIFont.boldSystemFontOfSize(18)
    
        picker.titles = [ "100MB", "200MB", "500MB", "1GB", "2GB", "5GB" ]
    }

}

