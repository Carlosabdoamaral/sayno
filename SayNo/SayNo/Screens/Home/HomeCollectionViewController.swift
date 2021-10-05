//
//  HomeCollectionViewController.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 04/10/21.
//

import UIKit
import FirebaseFirestore
import Firebase

class HomeCollectionViewController: UICollectionViewController {

    var dataSource: [String] = ["ABCDEFGHIJKLMNOPQRSTUVWXYZ", "Argentina", "Chile", "Paraguai", "Bolivia", "Guiana Francesa", "Uruguai", "Equador"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        getData()
        makePersistence()
    }
    
    //Quantidade de itens
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        getData()
        var cell = UICollectionViewCell()
        if let reportCell =  collectionView.dequeueReusableCell(withReuseIdentifier: "Report", for: indexPath) as? ReportCollectionViewCell {
            reportCell.configure(with: dataSource[indexPath.row])
            cell = reportCell
        }
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Title: \(dataSource[indexPath.row ])")
    }
    
    func makePersistence() {
        let settings = FirestoreSettings()
        settings.isPersistenceEnabled = true

        // Enable offline data persistence
        let db = Firestore.firestore()
        db.settings = settings
    }
    
    func getData() {
        let db = Firestore.firestore()
        db.collection("report").whereField("isValid", isEqualTo: true)
        .getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                    self.dataSource.append("Toi")
                }
            }
        }
    }
    
}
