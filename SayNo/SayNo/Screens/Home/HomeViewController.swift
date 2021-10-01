//
//  HomeViewController.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 16/09/21.
//

import UIKit
import FirebaseFirestore

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //Criando a variável do banco
    let db = Firestore.firestore()
    
    @IBOutlet var table : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Menu"
        let macAddress = UIDevice.current.identifierForVendor?.uuidString
        saveMacAddress(mac: macAddress!)
        
        table.delegate = self
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hello World"
        
        let mySwitch = UISwitch()
        mySwitch.addTarget(self, action: #selector(didChangeSwitch(_:)), for: .valueChanged)
        
        let button = UIButton()
        
        cell.accessoryView = button
        return cell
    }
    
    @objc func didChangeSwitch(_ sender: UISwitch){
        if sender.isOn{
            
        }
        else{
            
        }
    }
    
    func saveMacAddress(mac: String){
        //let dbCollection = db.collection("/user")
        let dbDocument = db.document("/user/\(mac)")
        dbDocument.setData(["mac": mac])
        
    }
    
}
