//
//  SetValues.swift
//  Watch
//
//  Created by Admin on 08.04.2021.
//

import Foundation
import UIKit

func SettingValuesForPlus(P0: UIButton, P1: UIButton, P2: UIButton, P3: UIButton, example: UILabel){
    let firstExampleValue: Int=Int.random(in: 1...30)
    let secondExampleValue: Int=Int.random(in: 1...30)
    let firstFalseAnswer: Int=Int.random(in: 1...50)
    let secondFalseAnswer: Int=Int.random(in: 1...50)
    let tirdthFalseAnswer: Int=Int.random(in: 1...50)
    let trueNumber: Int=Int.random(in: 0...3)
    let trueValue=firstExampleValue+secondExampleValue
    switch trueNumber{
    case 0: P0.setTitle(String(trueValue), for: .normal); P1.setTitle(String(firstFalseAnswer), for: .normal); P2.setTitle(String(secondFalseAnswer), for: .normal); P3.setTitle(String(tirdthFalseAnswer), for: .normal); tagOfAnswer=0
    case 1: P1.setTitle((String(trueValue)), for: .normal); P0.setTitle(String(firstFalseAnswer), for: .normal); P2.setTitle(String(secondFalseAnswer), for: .normal); P3.setTitle(String(tirdthFalseAnswer), for: .normal); tagOfAnswer=1
    case 2: P2.setTitle(String(trueValue), for: .normal); P0.setTitle(String(firstFalseAnswer), for: .normal); P1.setTitle(String(secondFalseAnswer), for: .normal); P3.setTitle(String(tirdthFalseAnswer), for: .normal); tagOfAnswer=2
    case 3: P3.setTitle(String(trueValue), for: .normal); P0.setTitle(String(firstFalseAnswer), for: .normal); P1.setTitle(String(secondFalseAnswer), for: .normal); P2.setTitle(String(tirdthFalseAnswer), for: .normal); tagOfAnswer=3
    default: example.text="ERROR"
        
    }
    example.text="\(firstExampleValue) + \(secondExampleValue)"
    
}

func SettingValuesForMinus(M0: UIButton, M1: UIButton, M2: UIButton, M3: UIButton, example: UILabel){
    let firstExampleValue: Int=Int.random(in: 1...80)
    let secondExampleValue: Int=Int.random(in: 1...50)
    let firstFalseAnswer: Int=Int.random(in: 1...50)
    let secondFalseAnswer: Int=Int.random(in: 1...50)
    let tirdthFalseAnswer: Int=Int.random(in: 1...50)
    let trueNumber: Int=Int.random(in: 0...3)
    let trueValue=firstExampleValue-secondExampleValue
    switch trueNumber{
    case 0: M0.setTitle(String(trueValue), for: .normal); M1.setTitle(String(firstFalseAnswer), for: .normal); M2.setTitle(String(secondFalseAnswer), for: .normal); M3.setTitle(String(tirdthFalseAnswer), for: .normal); tagOfAnswer=0
    case 1: M1.setTitle((String(trueValue)), for: .normal); M0.setTitle(String(firstFalseAnswer), for: .normal); M2.setTitle(String(secondFalseAnswer), for: .normal); M3.setTitle(String(tirdthFalseAnswer), for: .normal); tagOfAnswer=1
    case 2: M2.setTitle(String(trueValue), for: .normal); M0.setTitle(String(firstFalseAnswer), for: .normal); M1.setTitle(String(secondFalseAnswer), for: .normal); M3.setTitle(String(tirdthFalseAnswer), for: .normal); tagOfAnswer=2
    case 3: M3.setTitle(String(trueValue), for: .normal); M0.setTitle(String(firstFalseAnswer), for: .normal); M1.setTitle(String(secondFalseAnswer), for: .normal); M2.setTitle(String(tirdthFalseAnswer), for: .normal); tagOfAnswer=3
    default: example.text="ERROR"
        
    }
    example.text="\(firstExampleValue) - \(secondExampleValue)"
    
}

func SettingValuesForMulti(M0: UIButton, M1: UIButton, M2: UIButton, M3: UIButton, example: UILabel){
    let firstExampleValue: Int=Int.random(in: 1...11)
    let secondExampleValue: Int=Int.random(in: 1...9)
    let firstFalseAnswer: Int=Int.random(in: 1...99)
    let secondFalseAnswer: Int=Int.random(in: 1...99)
    let tirdthFalseAnswer: Int=Int.random(in: 1...99)
    let trueNumber: Int=Int.random(in: 0...3)
    let trueValue=firstExampleValue*secondExampleValue
    switch trueNumber{
    case 0: M0.setTitle(String(trueValue), for: .normal); M1.setTitle(String(firstFalseAnswer), for: .normal); M2.setTitle(String(secondFalseAnswer), for: .normal); M3.setTitle(String(tirdthFalseAnswer), for: .normal); tagOfAnswer=0
    case 1: M1.setTitle((String(trueValue)), for: .normal); M0.setTitle(String(firstFalseAnswer), for: .normal); M2.setTitle(String(secondFalseAnswer), for: .normal); M3.setTitle(String(tirdthFalseAnswer), for: .normal); tagOfAnswer=1
    case 2: M2.setTitle(String(trueValue), for: .normal); M0.setTitle(String(firstFalseAnswer), for: .normal); M1.setTitle(String(secondFalseAnswer), for: .normal); M3.setTitle(String(tirdthFalseAnswer), for: .normal); tagOfAnswer=2
    case 3: M3.setTitle(String(trueValue), for: .normal); M0.setTitle(String(firstFalseAnswer), for: .normal); M1.setTitle(String(secondFalseAnswer), for: .normal); M2.setTitle(String(tirdthFalseAnswer), for: .normal); tagOfAnswer=3
    default: example.text="ERROR"
        
    }
    example.text="\(firstExampleValue) X \(secondExampleValue)"
    
}

func SettingValuesForDivision(M0: UIButton, M1: UIButton, M2: UIButton, M3: UIButton, example: UILabel){
    var firstExampleValue: Int=Int.random(in: 1...50)
    var secondExampleValue: Int=Int.random(in: 1...50)
    if ((firstExampleValue%secondExampleValue) != 0){
              repeat{
                  firstExampleValue=Int.random(in: 1...50)
                  secondExampleValue=Int.random(in: 1...50)
              }while ((firstExampleValue%secondExampleValue) != 0)
          }
    let firstFalseAnswer: Int=Int.random(in: 1...30)
    let secondFalseAnswer: Int=Int.random(in: 1...30)
    let tirdthFalseAnswer: Int=Int.random(in: 1...30)
    let trueNumber: Int=Int.random(in: 0...3)
    let trueValue=firstExampleValue/secondExampleValue
    switch trueNumber{
    case 0: M0.setTitle(String(trueValue), for: .normal); M1.setTitle(String(firstFalseAnswer), for: .normal); M2.setTitle(String(secondFalseAnswer), for: .normal); M3.setTitle(String(tirdthFalseAnswer), for: .normal); tagOfAnswer=0
    case 1: M1.setTitle((String(trueValue)), for: .normal); M0.setTitle(String(firstFalseAnswer), for: .normal); M2.setTitle(String(secondFalseAnswer), for: .normal); M3.setTitle(String(tirdthFalseAnswer), for: .normal); tagOfAnswer=1
    case 2: M2.setTitle(String(trueValue), for: .normal); M0.setTitle(String(firstFalseAnswer), for: .normal); M1.setTitle(String(secondFalseAnswer), for: .normal); M3.setTitle(String(tirdthFalseAnswer), for: .normal); tagOfAnswer=2
    case 3: M3.setTitle(String(trueValue), for: .normal); M0.setTitle(String(firstFalseAnswer), for: .normal); M1.setTitle(String(secondFalseAnswer), for: .normal); M2.setTitle(String(tirdthFalseAnswer), for: .normal); tagOfAnswer=3
    default: example.text="ERROR"
        
    }
    example.text="\(firstExampleValue) \u{00F7} \(secondExampleValue)"
}
