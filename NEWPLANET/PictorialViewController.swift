//
//  PictorialViewController.swift
//  NEWPLANET
//
//  Created by Srikanth Vemana on 27/10/21.
//

import UIKit
import  AVFoundation

class PictorialViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictorialChartArrays.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! pictorialTableViewCell
        cell.chartname.text = pictorialChartArrays[indexPath.row]
        cell.imageview.image = UIImage(named: pictorialChartArrays[indexPath.row])
        cell.pronouncebtn.addTarget(self, action: #selector(connectedsound(sender:)), for: .touchUpInside)
        cell.pronouncebtn.tag = indexPath.row
        cell.savebtn.addTarget(self, action: #selector(connectedsave(sender:)), for: .touchUpInside)
        cell.savebtn.tag = indexPath.row

        cell.sharebtn.addTarget(self, action: #selector(connectedshare(sender:)), for: .touchUpInside)
        cell.sharebtn.tag = indexPath.row
        return cell
    }
    
    @objc func connectedsound(sender: UIButton){
        let buttonTag = sender.tag
        let utterance = AVSpeechUtterance(string: nameArray[buttonTag])
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        //synth.delegate = self
        synth.speak(utterance)
        
    }

    @objc func connectedshare(sender: UIButton){
        let buttonTag = sender.tag
        let image = UIImage(named: imgArray[buttonTag])
        let urltoshare = [ image ]
        let activityViewController = UIActivityViewController(activityItems: urltoshare as [Any] , applicationActivities: nil)
            activityViewController.popoverPresentationController?.sourceView = self.view
            self.present(activityViewController, animated: true, completion: nil)
    }

    
    @objc func connectedsave(sender: UIButton){
        let buttonTag = sender.tag
        let image = UIImage(named: imgArray[buttonTag])
        UIImageWriteToSavedPhotosAlbum(image!, nil, nil, nil)
        
        
        let alert = UIAlertController(title: "Congrats!", message: "Your Image Saved Sucessfully", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (_) in
            print("User click Approve button")
        }))
        self.present(alert, animated: true, completion: {
            print("completion block")
            
        })
        
    }
    @IBAction func backbtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var tableview: UITableView!
    var nameArray = ["Plants","Pictorial Chart"," The Quiz Show"]
    var imgArray = ["ppp","flower","tree"]
    let synth = AVSpeechSynthesizer()
    override func viewDidLoad() {
        super.viewDidLoad()
        backbtn.tintColor = .white
        self.titlelabel.text = "Pictorial Chart"
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var backbtn: UIButton!
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
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
