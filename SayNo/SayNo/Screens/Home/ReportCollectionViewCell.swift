//
//  ReportCollectionViewCell.swift
//  SayNo
//
//  Created by JEFERSON AMARAL on 04/10/21.
//

import UIKit
import FirebaseFirestore

class ReportCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var title: UILabel!

    
    func configure(with title: String) {
        self.title.text = title
        self.layer.cornerRadius = 10
        self.layer.cornerCurve = .continuous
    }
}
