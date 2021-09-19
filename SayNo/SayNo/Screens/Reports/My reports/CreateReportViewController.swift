//
//  CreateReportViewController.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 17/09/21.
//

import FirebaseFirestore
import UIKit

class CreateReportViewController: UIViewController, UITextFieldDelegate {

    let db = Firestore.firestore()
    
    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = UIColor.white
        return label
    }()
    
    private let field : UITextField = {
        let field = UITextField()
        field.placeholder = "Digite um titulo"
        field.backgroundColor = UIColor.white
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.black.cgColor
        return field
    }()
    
    private let reportBody : UITextField = {
        let reportBody = UITextField()
        reportBody.placeholder = "Digite uma descricao"
        reportBody.backgroundColor = UIColor.white
        reportBody.layer.borderWidth = 1
        reportBody.layer.borderColor = UIColor.black.cgColor
        return reportBody
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        view.addSubview(field)
        view.addSubview(reportBody)
        
        field.delegate = self
        
        let docRef = db.document("/reports/example")
        docRef.getDocument { [weak self] snapshot, error in
            guard let data = snapshot?.data(), error == nil else {
                return
            }
            
            guard let text = data["title"] as? String else{
                return
            }
            
            DispatchQueue.main.async {
                self?.label.text = text
            }
            
        }
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        field.frame = CGRect(x: 10,
                             y: view.safeAreaInsets.top+10,
                             width: view.frame.size.width-20,
                             height: 50)
        
        reportBody.frame = CGRect(x: 10,
                             y: view.safeAreaInsets.top+10+60,
                             width: view.frame.size.width-20,
                             height: 200)
        
        label.frame = CGRect(x: 10,
                             y: view.safeAreaInsets.top+10+260,
                             width: view.frame.size.width-20,
                             height: 100)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if let text = textField.text, !text.isEmpty{
            saveData(text: text)
        }
        return true
    }
    

    func saveData(text: String){
        // /colection/document
        let docRef = db.document("/reports/example")
        docRef.setData(["title": text, "description": reportBody])
    }

}
