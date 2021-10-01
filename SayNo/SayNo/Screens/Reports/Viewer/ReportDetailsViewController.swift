//
//  ReportDetailsViewController.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 17/09/21.
//

import FirebaseFirestore
import UIKit

class ReportDetailsViewController: UIViewController {

    @IBOutlet weak var commentButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        commentButton.layer.cornerRadius = 5
        commentButton.layer.cornerCurve = .continuous
        
        
        
        //Pegar as info do banco
        let db = Firestore.firestore()
        let docRef = db.document("/report/1")
        docRef.getDocument { [weak self] snapshot, error in
            guard let data = snapshot?.data(), error == nil else {
                return
            }
            
            guard let text = data["title"] as? String else{
                return
            }
            
            DispatchQueue.main.async {
                self?.title = "\(text)"
            }
        }
        
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
