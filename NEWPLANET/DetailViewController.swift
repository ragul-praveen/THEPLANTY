//
//  DetailViewController.swift
//  NEWPLANET
//
//  Created by Srikanth Vemana on 27/10/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var savebtn: UIButton!
    @IBOutlet weak var newcategoryname: UILabel!
    
    @IBOutlet weak var sharebtn: UIButton!
    
    @IBOutlet weak var prononucebtn: UIButton!
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var shadowview: UIView!
    @IBOutlet weak var categoryname: UILabel!
    @IBOutlet weak var backbtn: UIButton!
    
    var newtitle : String = ""
    var lblbText : String = ""
    var imgData = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageview.image = imgData
        self.newcategoryname.text = lblbText
        self.categoryname.text = lblbText
        backbtn.tintColor = .white
        self.setupview()
        // Do any additional setup after loading the view.
    }
    
    func setupview(){
        self.shadowview.layer.cornerRadius = 10
        self.shadowview.layer.masksToBounds = true
        self.shadowview.layer.shadowOpacity = 2//0.18
        self.shadowview.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.shadowview.layer.shadowRadius = 2
        self.shadowview.layer.shadowColor = UIColor.darkGray.cgColor
        self.shadowview.layer.masksToBounds = false
        
        imageview.layer.borderWidth = 1.0
        imageview.layer.masksToBounds = false
        imageview.layer.borderColor = UIColor.white.cgColor
        imageview.layer.cornerRadius = imageview.frame.size.width / 2
        imageview.clipsToBounds = true

        newcategoryname.layer.borderWidth = 0.3
        categoryname.layer.cornerRadius = 10
        self.categoryname.layer.shadowRadius = 2
        self.categoryname.layer.shadowColor = UIColor.lightGray.cgColor
        
//        savebtn.layer.borderWidth = 0.3
//        savebtn.layer.cornerRadius = 5
//        self.savebtn.layer.shadowRadius = 2
//        self.savebtn.layer.shadowColor = UIColor.lightGray.cgColor
//        
//        sharebtn.layer.borderWidth = 0.3
//        sharebtn.layer.cornerRadius = 5
//        self.sharebtn.layer.shadowRadius = 2
//        self.sharebtn.layer.shadowColor = UIColor.lightGray.cgColor
//        
//        prononucebtn.layer.borderWidth = 0.3
//        prononucebtn.layer.cornerRadius = 5
//        self.prononucebtn.layer.shadowRadius = 1
//        self.prononucebtn.layer.shadowColor = UIColor.lightGray.cgColor
//        
        
    }

    @IBAction func backbtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func savebtn(_ sender: Any) {
    }
    
    @IBAction func prononucebtn(_ sender: Any) {
        
    }
    
    @IBAction func sharebtn(_ sender: Any) {
    }
    
}
