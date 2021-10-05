//
//  CollectionViewController.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 03/10/21.
//

import UIKit

class CollectionViewController: UICollectionViewController {

    let dataSource: [String] = ["Brasil", "Argentina", "Chile", "Paraguai", "Bolivia", "Guiana Francesa", "Uruguai", "Equador "]
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    
    //Quantidade de itens
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.count
    }
    
      
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        if let reportCell =  collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell {
            reportCell.configure(with: dataSource[indexPath.row])
            
            cell = reportCell
        }
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Title: \(dataSource[indexPath.row ])")
    }
}
