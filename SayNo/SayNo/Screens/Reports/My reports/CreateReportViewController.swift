import FirebaseFirestore
import UIKit

class CreateReportViewController: UIViewController, UITextFieldDelegate {
    let db = Firestore.firestore()
    let macAddress = UIDevice.current.identifierForVendor?.uuidString
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(titleField)
        view.addSubview(descriptionField)
        view.addSubview(postButton)
        
        titleField.delegate = self
        descriptionField.delegate = self
    }
    
    private let titleField : UITextField = {
        let titleField = UITextField()
        titleField.placeholder = "Digite um titulo"
        titleField.backgroundColor = UIColor.white
        titleField.layer.borderWidth = 1
        titleField.layer.borderColor = UIColor.black.cgColor
        return titleField
    }()
    
    private let descriptionField : UITextField = {
        let descriptionField = UITextField()
        descriptionField.placeholder = "Digite uma descricao"
        descriptionField.backgroundColor = UIColor.white
        descriptionField.layer.borderWidth = 1
        descriptionField.layer.borderColor = UIColor.black.cgColor
        return descriptionField
    }()
    
    private let postButton : UIButton = {
        let postButton = UIButton()
        postButton.setTitle("Publicar!", for: .normal)
        postButton.backgroundColor = .systemPink
        postButton.contentVerticalAlignment = .center
        postButton.layer.cornerRadius = 5
        postButton.addTarget(self, action: #selector(postReport), for: .touchUpInside)
        return postButton
    }()
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        titleField.frame = CGRect(x: 10, y: view.safeAreaInsets.top+10, width: view.frame.size.width-20, height: 50)
        descriptionField.frame = CGRect(x: 10, y: view.safeAreaInsets.top+10+60, width: view.frame.size.width-20, height: 200)
        postButton.frame = CGRect(x: 10, y: view.safeAreaInsets.top+370, width: view.frame.width-20, height: 30)
    }
    
    @objc func postReport() -> Bool{
        if let title = titleField.text, !title.isEmpty{
            if let description = descriptionField.text, !description.isEmpty{
                saveData(id: 1, mac: self.macAddress!, title: title, description: description)
            }
        }
        return true
    }
    
    
    
    func saveData(id: Int, mac: String, title: String, description: String){
        // /colection/document
        let docRef = db.document("/report/\(id)")
        docRef.setData(["id": id, "mac": mac, "title": title, "description": description])
    }

}
