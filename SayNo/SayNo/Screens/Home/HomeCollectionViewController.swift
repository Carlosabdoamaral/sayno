//
//  HomeCollectionViewController.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 04/10/21.
//

import UIKit

class HomeCollectionViewController: UICollectionViewController {

    let dataSource: [String] = ["ABCDEFGHIJKLMNOPQRSTUVWXYZ", "Argentina", "Chile", "Paraguai", "Bolivia", "Guiana Francesa", "Uruguai", "Equador "]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"

    }
    
    //Quantidade de itens
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
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
}
