//
//  EndClass.swift
//  Watch
//
//  Created by Admin on 08.04.2021.
//

import UIKit

class EndClass: UIViewController {

    var totalScore: String="Your score: "
    @IBOutlet weak var playAgain: UIButton!
    @IBOutlet weak var scoreText: UILabel!
    @IBAction func Again(_ sender: Any) {
        let start=storyboard?.instantiateViewController(withIdentifier: "Start") as! ViewController
        self.present(start, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreText.text=totalScore
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
