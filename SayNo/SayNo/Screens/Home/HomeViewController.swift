//
//  HomeViewController.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 16/09/21.
//

import UIKit
import FirebaseFirestore

class HomeViewController: UIViewController {
    //Criando a variável do banco
    let db = Firestore.firestore()
    
    @IBOutlet weak var mainPost: UIStackView!
    @IBOutlet weak var mainPostTitle: UILabel!
    @IBOutlet weak var mainPostDesc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Menu"
        let macAddress = UIDevice.current.identifierForVendor?.uuidString
        saveMacAddress(mac: macAddress!)
        mainPost.layer.cornerCurve = .continuous
        mainPost.layer.cornerRadius = 10
    }
    
    func saveMacAddress(mac: String){
        //let dbCollection = db.collection("/user")
        let dbDocument = db.document("/user/\(mac)")
        dbDocument.setData(["mac": mac])
    }
    
    func getLastPost() {
        let dbCollection = db.collection("/reports").order(by: "Date").limit(to: 1)
        print(dbCollection)
        
//        Query query = dbDocument.collection("High Volume")
//            .orderBy("Time", Query.Direction.DESCENDING)
//            .limit(1);
//        query.get().addOnCompleteListener(/* ... */);
    }
    
}
