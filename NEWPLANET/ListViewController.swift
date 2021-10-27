//
//  ListViewController.swift
//  NEWPLANET
//
//  Created by Srikanth Vemana on 27/10/21.
//

import UIKit

class ListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListTableViewCell
        cell.categorylistname.text = nameArray[indexPath.row]
        cell.imageview.image = UIImage(named: nameArray[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        nextvc.lblbText = nameArray[indexPath.row]
        nextvc.imgData = UIImage(named: nameArray[indexPath.row])!
        self.navigationController?.pushViewController(nextvc, animated: true)
    }

    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var categorytitlelabel: UILabel!
    @IBOutlet weak var backbtn: UIButton!
    var index = Int()
    var nameArray = [String]()
    var newtitle : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.categorytitlelabel.text = self.newtitle
        backbtn.tintColor = .white
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.title = "Greenery Vocab"

        if index == 0{
             nameArray = plantPartArrays
           //  imgArray = ["ppp"]
        }else if index == 1{
             nameArray = flowerPartsArrays
            // imgArray = ["flower"]
            
        }else if index == 2{
             nameArray = treePartsArrays
             //imgArray = ["tree"]
            
        }
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
