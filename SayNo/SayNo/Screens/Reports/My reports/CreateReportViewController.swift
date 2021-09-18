//
//  CreateReportViewController.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 17/09/21.
//

import UIKit

class CreateReportViewController: UIViewController {

    @IBOutlet weak var reportTitleInput: UITextField!
    @IBOutlet weak var reportDescriptionInput: UITextField!
    @IBOutlet weak var postButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postButton.layer.cornerRadius = 5
        postButton.layer.cornerCurve = .continuous
        // Do any additional setup after loading the view.
    }
    

    func post(){
        
    }

}
