//
//  ModelManager.swift
//  ResumeOS
//
//  Created by Intern on 7/13/17.
//  Copyright © 2017 CKK. All rights reserved.
//

import UIKit

class MondelManager: Singleton
{
    let sharedInstance = MondelManager()
    
    class func getInstance() -> MondelManager
    {
        
    
        if(sharedInstance.database == nil)
        {
            sharedInstance.database = FMDatabase(path: Util.getPath("Student.sqlite"))
        }
        return sharedInstance
    }
}
