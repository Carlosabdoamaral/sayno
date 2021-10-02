import FirebaseFirestore
import UIKit

class CreateReportViewController: UIViewController, UITextFieldDelegate {
    let db = Firestore.firestore()
    let macAddress = UIDevice.current.identifierForVendor?.uuidString
    @IBOutlet weak var postButton: UIButton!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descriptionField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        postButton.addTarget(self, action: #selector(postReport), for: .touchUpInside)
    }

    @objc func postReport() -> Bool{
        if let title = titleField.text, !title.isEmpty{
            
            if let description = descriptionField.text, !description.isEmpty{
                errorLabel.alpha = 0
                errorLabel.text = ""
                saveData(id: 1, mac: self.macAddress!, title: title, description: description)
                
                let alert = UIAlertController(title: "Success!", message: "Your report is going to ourdatabase.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: NSLocalizedString("Okay!", comment: "Default action"), style: .default, handler: { _ in
                NSLog("The \"OK\" alert occured.")
                }))
                self.present(alert, animated: true, completion: nil)
                
                titleField.text = ""
                descriptionField.text = ""
            }
            else {
                errorLabel.alpha = 1
                errorLabel.text = "Ops...is missing the description"
            }
        }
        else {
            errorLabel.alpha = 1
            errorLabel.text = "Ops...you have to provide a title"
        }
        return true
    }

    
    func saveData(id: Int, mac: String, title: String, description: String){
        // /colection/document
        let date = Date()
        let docRef = db.document("/report/\(date)")
        docRef.setData(["id": id, "date": date, "mac": mac, "title": title, "description": description])
    }

}
