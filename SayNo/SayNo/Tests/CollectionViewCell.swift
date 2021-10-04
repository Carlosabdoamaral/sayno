//
//  CollectionViewCell.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 03/10/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var title: UILabel!
    
    func configure(with title: String) {
        self.title.text = title
    }
}
