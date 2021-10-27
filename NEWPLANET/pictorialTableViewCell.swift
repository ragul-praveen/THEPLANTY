//
//  pictorialTableViewCell.swift
//  NEWPLANET
//
//  Created by Srikanth Vemana on 27/10/21.
//

import UIKit

class pictorialTableViewCell: UITableViewCell {

    @IBOutlet weak var sharebtn: UIButton!
    @IBOutlet weak var pronouncebtn: UIButton!
    @IBOutlet weak var savebtn: UIButton!
    @IBOutlet weak var chartname: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var bgview: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.bgview.layer.cornerRadius = 10
       // self.bgview.layer.borderColor = Colors.colorClear.cgColor
        self.bgview.layer.masksToBounds = true
        
        self.bgview.layer.shadowOpacity = 2//0.18
        self.bgview.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.bgview.layer.shadowRadius = 2
        self.bgview.layer.shadowColor = UIColor.darkGray.cgColor
        self.bgview.layer.masksToBounds = false
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
