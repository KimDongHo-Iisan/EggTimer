//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //타이틀 레이블 생성.
    @IBOutlet weak var titleLabel: UIView!
    
    let eggTimes = ["Soft": 300, "Medium" : 420, "Hard" : 7]
    
    var secondsRemaining = 60
    
    var timer = Timer() // 타이머 변수 생성
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate() //타이머를 중지해줌
        let hardness = sender.currentTitle!
        
        secondsRemaining = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    //매초마다 발생하는 함수
    @objc func updateTimer(){
        if secondsRemaining > 0 {
            print("\(secondsRemaining) seconds.")
            secondsRemaining -= 1
        } else { // 만약 시간이 다 되어 0이 되면
            timer.invalidate() //타이머를 중단하고
            titleLabel.text = "Done" // 레이블의 텍스트를 Done으로 변경해라.
        }
    }
    
}

