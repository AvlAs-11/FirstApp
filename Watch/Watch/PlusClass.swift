//
//  PlusClass.swift
//  Watch
//
//  Created by Admin on 05.04.2021.
//

import UIKit
var tagOfAnswer: Int=0
var scoreValue: Int=0

class PlusClass: UIViewController {

    var time=Timer()
    @IBOutlet weak var timeForTest: UILabel!
    @IBOutlet weak var example: UILabel!
    @IBOutlet weak var P0: UIButton!
    @IBOutlet weak var P1: UIButton!
    @IBOutlet weak var P2: UIButton!
    @IBOutlet weak var P3: UIButton!
    @IBOutlet weak var exampleAnswer: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBAction func Answer(_ sender: UIButton) {
        if sender.tag==tagOfAnswer{
            scoreValue+=1
            exampleAnswer.isHidden=false
            score.text="Your score: \(scoreValue)"
        }
        else {
            exampleAnswer.isHidden=true
        }
        SettingValuesForPlus(P0: self.P0, P1: self.P1, P2: self.P2, P3: self.P3, example: self.example)
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
        SettingValuesForPlus(P0: self.P0, P1: self.P1, P2: self.P2, P3: self.P3, example: self.example)
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
