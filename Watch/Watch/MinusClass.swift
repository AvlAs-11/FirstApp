//
//  MinusClass.swift
//  Watch
//
//  Created by Admin on 05.04.2021.
//

import UIKit
var counter: Int=0



class MinusClass: UIViewController {
   
    var time=Timer()
    @IBOutlet weak var M0: UIButton!
    @IBOutlet weak var timeForTest: UILabel!
    @IBOutlet weak var M1: UIButton!
    @IBOutlet weak var M2: UIButton!
    @IBOutlet weak var M3: UIButton!
    @IBOutlet weak var example: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var exampleAnswer: UILabel!
    @IBAction func Answer(_ sender: UIButton) {
        if sender.tag==tagOfAnswer{
            scoreValue+=1
            exampleAnswer.isHidden=false
            score.text="Your score: \(scoreValue)"
        }
        else {
            exampleAnswer.isHidden=true
        }
        SettingValuesForMinus(M0: self.M0, M1: self.M1, M2: self.M2, M3: self.M3, example: self.example)
    }
    @objc func timeSelection(){
        if counter>30{
            time.invalidate()
            let end=storyboard?.instantiateViewController(withIdentifier: "End") as! EndClass
            end.totalScore="Your score: \(scoreValue)"
            self.present(end, animated: true, completion: nil)
            counter=0
            scoreValue=0
        }
        else if counter>20{
            timeForTest.text="0:0\(30-counter)"
            counter+=1
        }
        else{
            timeForTest.text="0:\(30-counter)"
            counter+=1
        }
        
        
    }
    override func viewDidLoad() {
        SettingValuesForMinus(M0: self.M0, M1: self.M1, M2: self.M2, M3: self.M3, example: self.example)
        exampleAnswer.isHidden=true
        score.isHidden=false
        time=Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timeSelection), userInfo: nil, repeats: true)
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
