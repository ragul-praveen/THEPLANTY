//
//  CooseCategoryViewController.swift
//  NEWPLANET
//
//  Created by Srikanth Vemana on 27/10/21.
//

import UIKit

class CooseCategoryViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CategoryTableViewCell
        cell.categoryname.text = nameArray[indexPath.row]
        cell.imageview.image = UIImage(named: imgArray[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "ListViewController") as! ListViewController
            nextvc.index = indexPath.row
        nextvc.newtitle = nameArray[indexPath.row]
        self.navigationController?.pushViewController(nextvc, animated: true)


    }

    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var backbtn: UIButton!
    var nameArray = ["Parts of plants","Parts of flowers"," Parts of trees"]
    var imgArray = ["ppp","flower","tree"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableview.tableFooterView = UIView()
       // self.backbtn.changePngColorTo(color: .white)
        backbtn.tintColor = .white
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UIImageView{
    func changePngColorTo(color: UIColor){
        guard let image =  self.image else {return}
        self.image = image.withRenderingMode(.alwaysTemplate)
        self.tintColor = color
    }
}
