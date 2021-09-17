//
//  HomeViewController.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 16/09/21.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var reportsStack: UIStackView!
    @IBOutlet weak var commentsStack: UIStackView!
    @IBOutlet weak var usersStack: UIStackView!
    @IBOutlet weak var statesStack: UIStackView!
    @IBOutlet weak var termsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Menu"
        
        let cornerRadius: CGFloat = 15
        // Do any additional setup after loading the view.
        reportsStack.layer.cornerRadius = cornerRadius
        reportsStack.layer.cornerCurve = .continuous
        
        commentsStack.layer.cornerRadius = cornerRadius
        commentsStack.layer.cornerCurve = .continuous
        
        usersStack.layer.cornerRadius = cornerRadius
        usersStack.layer.cornerCurve = .continuous
        
        statesStack.layer.cornerRadius = cornerRadius
        statesStack.layer.cornerCurve = .continuous
        
        termsButton.layer.cornerRadius = cornerRadius
        termsButton.layer.cornerCurve = .continuous
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
