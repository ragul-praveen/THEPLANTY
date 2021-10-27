//
//  QuizViewController.swift
//  NEWPLANET
//
//  Created by Srikanth Vemana on 27/10/21.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var optiond: UIButton!
    @IBOutlet weak var optionc: UIButton!
    @IBOutlet weak var optionb: UIButton!
    @IBOutlet weak var optionabutton: UIButton!
    @IBOutlet weak var quslabel: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var scorelabel: UILabel!
    @IBOutlet weak var shadowview: UIView!
    
    @IBOutlet weak var backbtn: UIButton!
    var allQuestions = Quiz()
    var questionNumber : Int = 0
    var score : Int = 0
    var selectedAnswer : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    setUpView()
        backbtn.tintColor = .white
        self.shadowview.layer.cornerRadius = 10
       // self.bgview.layer.borderColor = Colors.colorClear.cgColor
        self.shadowview.layer.masksToBounds = true
        
        self.shadowview.layer.shadowOpacity = 2//0.18
        self.shadowview.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.shadowview.layer.shadowRadius = 2
        self.shadowview.layer.shadowColor = UIColor.darkGray.cgColor
        self.shadowview.layer.masksToBounds = false
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    func setUpView(){
        updateUI()
        updateQuestion()
    }
    
    @IBAction func Button(_ sender : UIButton){
        if sender.tag == selectedAnswer {
            ProgressHUD.showSuccess("Correct")
            //  sender.layer.borderColor = UIColor.green.cgColor
            ////sender.layer.borderWidth = 2
            score += 1
        }
        else{
            ProgressHUD.showError("Incorrect")
            
        }
        questionNumber += 1
        updateQuestion()
        
    }
    
    func updateQuestion(){
        
      
        if questionNumber <= allQuestions.list.count - 1{
            
            imageview.image = UIImage.init(named:allQuestions.list[questionNumber].questionImage)
            
            quslabel.text =  allQuestions.list[questionNumber].question
            
            optionabutton.setTitle(allQuestions.list[questionNumber].optionA, for:.normal)
            optionb.setTitle(allQuestions.list[questionNumber].optionB, for:.normal)
            optionc.setTitle(allQuestions.list[questionNumber].optionC, for:.normal)
            optiond.setTitle(allQuestions.list[questionNumber].optionD, for:.normal)
            
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
            updateUI()
            
            
        }else {
            let alert = UIAlertController(title: "Awesome", message: "End of Quiz. Do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Start Again??", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    func updateUI(){
        scorelabel.text = "Score: \(score)"
        
    }
    
    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
        
        
    }
    @IBAction func backbtn(_ sender: Any) {
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
