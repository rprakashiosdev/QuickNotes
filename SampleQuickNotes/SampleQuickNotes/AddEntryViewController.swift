//
//  AddEntryViewController.swift
//  SampleQuickNotes
//
//  Created by Prakash on 05/08/22.
//

import Foundation
import UIKit

class AddEntryViewController: UIViewController {
    
    var quickNoteActivity : NSUserActivity?
    
    
    func addQuickNoteActivity()
    {
        quickNoteActivity = NSUserActivity(activityType: "Add_New_Entry")
        quickNoteActivity?.title =  "Add New Entry"
        if #available(iOS 13.0, *) {
            quickNoteActivity?.targetContentIdentifier = "Entry001"
        } else {
            // Fallback on earlier versions
        }
        quickNoteActivity?.userInfo = nil
        self.userActivity = quickNoteActivity
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        addQuickNoteActivity()
    }
}
