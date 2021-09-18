//
//  HomeViewController.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 16/09/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var reportStack: UIStackView!
    @IBOutlet weak var openDetailsReport: UIButton!
    
    @IBOutlet weak var termsButton: UIButton!
    @IBOutlet weak var navbarStack: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Menu"
        
        let cornerRadius: CGFloat = 15
        let cornerRadiusButtonReport : CGFloat = 5
        
        reportStack.layer.cornerRadius = cornerRadius
        reportStack.layer.cornerCurve  = .continuous
        
        openDetailsReport.layer.cornerRadius = cornerRadiusButtonReport
        openDetailsReport.layer.cornerCurve  = .continuous
        
        navbarStack.layer.cornerRadius = (cornerRadius - 10)
        navbarStack.layer.cornerCurve = .continuous
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
