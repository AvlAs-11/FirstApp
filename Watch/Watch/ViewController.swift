//
//  ViewController.swift
//  Watch
//
//  Created by Admin on 31.03.2021.
//

import UIKit
import Foundation

class ViewController: UIViewController {
   
    @IBOutlet weak var preSet: UIButton!
    @IBOutlet weak var Plus: UIButton!
    @IBOutlet weak var Minus: UIButton!
    @IBOutlet weak var Multi: UIButton!
    @IBOutlet weak var Division: UIButton!
    @IBOutlet weak var lastScore: UILabel!
    
    override func viewDidLoad() {
        lastScore.lineBreakMode = .byWordWrapping
        lastScore.numberOfLines=0
        lastScore.text="Your last\nScore: 0"
        Division.setTitle("\u{00F7}", for: .normal)
        setup()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func setup(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapped))
        tap.numberOfTouchesRequired=1
        preSet.addGestureRecognizer(tap)
        
    }
    
    @objc
    private func tapped(){
        let popVC=storyboard?.instantiateViewController(identifier: "popVC")
        popVC?.modalPresentationStyle = .popover
        let popOverVC=popVC?.popoverPresentationController
        popOverVC?.delegate=self
        popOverVC?.sourceView=self.preSet
        popOverVC?.sourceRect=CGRect(x: self.preSet.bounds.midX, y: self.preSet.bounds.midY, width: 0, height: 0)
        popVC?.preferredContentSize=CGSize(width: 100, height: 200)
        self.present(popVC!, animated: true)
    }
    
  

}

extension ViewController: UIPopoverPresentationControllerDelegate{
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return.none
    }
}

