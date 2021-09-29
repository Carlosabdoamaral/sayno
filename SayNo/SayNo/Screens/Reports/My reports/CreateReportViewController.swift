import FirebaseFirestore
import UIKit

class CreateReportViewController: UIViewController, UITextFieldDelegate {
    let db = Firestore.firestore()
    let macAddress = UIDevice.current.identifierForVendor?.uuidString
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
//
//    @objc func postReport() -> Bool{
//        if let title = titleField.text, !title.isEmpty{
//            if let description = descriptionField.text, !description.isEmpty{
//                saveData(id: 1, mac: self.macAddress!, title: title, description: description)
//            }
//        }
//        return true
//    }
//
    
    
    func saveData(id: Int, mac: String, title: String, description: String){
        // /colection/document
        let docRef = db.document("/report/\(id)")
        docRef.setData(["id": id, "mac": mac, "title": title, "description": description])
    }

}
