//
//  DataViewController.swift
//  ResumeOS
//
//  Created by Intern on 6/29/17.
//  Copyright © 2017 CKK. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var txtType: UITextField!
    @IBOutlet weak var txtSBarWord: UITextField!
    var dataObject: String = ""
    
    
    @IBAction func btnSearchClicked(sender: AnyObject){
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.text = dataObject
    }


}

