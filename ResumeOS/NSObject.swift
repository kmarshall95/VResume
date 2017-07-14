//
//  NSObject.swift
//  ResumeOS
//
//  Created by Intern on 7/13/17.
//  Copyright © 2017 CKK. All rights reserved.
//

import UIKit

class NSObject: NSObject, Utility{
    
    class func getPath(fileName: String) -> String
    {
        let documentsURL = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)[0]
        let fileURL = documentsURL.URLByAppendingPathComponent(fileName)
        
            return fileURL.path!
    }
    
    class func copyFile(fileName: NSString)
    {
        let dbPath: String = getPath(fileName as String)
        let fileManager = NSFileManager.defaultManager()
        if !fileManager.fileExistsAtPath(dbPath)
        {
            let documentsURL = NSBundle.mainBundle().resourceURL
            let fromPath = documentsURL!.URLsByAppendingPathComponent(fileName as String)
            
            var error : NSError?
            do
            {
                try fileManager.copyItemAtPath(fromPath.path!, toPath: dbPath)
            } catch let error1 as NSError{
                error = error1
            }
            let alert: UIAlertView = UIAlertView()
            if (error != nil){
                alert.title = "Error Occured"
                alert.message = error?.localizedDescription
            } else {
                alert.title = "Successfully copy"
                alert.message = "Your database copy successfully"
            }
            alert.delegate = nil
            alert.addButtonWithTitle("Ok")
            alert.show()
            }
            
                
    }//end of copyFile class
    
    class func invokeAlertMethod(strTitle: NSString, strBody: NSString, delegate: AnyObject?)
    {
        var alert: UIAlertView = UIAlertView()
        alert.message = strBody as String
        alert.title = strTitle as String
        alert.delegate = delegate
        alert.addButtonWithTitle("Ok")
        alert.show()
    }//end of involeAlert class
}//end


