//
//  ReportDetailsViewController.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 17/09/21.
//

import UIKit

class ReportDetailsViewController: UIViewController {

    @IBOutlet weak var commentButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        let titleReport : String = "Título do post"
        title = "\(titleReport)"
        
        commentButton.layer.cornerRadius = 5
        commentButton.layer.cornerCurve = .continuous
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
