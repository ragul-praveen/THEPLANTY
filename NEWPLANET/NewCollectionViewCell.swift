//
//  NewCollectionViewCell.swift
//  NEWPLANET
//
//  Created by Srikanth Vemana on 27/10/21.
//

import UIKit

class NewCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var bfview: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.bfview.layer.borderWidth = 0.2
         self.bfview.layer.cornerRadius = 10
         self.bfview.layer.masksToBounds = true
        self.bfview.layer.shadowColor = UIColor.lightGray.cgColor
         self.bfview.layer.masksToBounds = false

       

       // self.totalpricelabel.layer.cornerRadius = 20
        // Initialization code
    }
}
