//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft": 3, "Medium" : 4, "Hard" : 7]
    var timer = Timer()
    var totalTime = 0 // 전체 걸리는 시간
    var secondsPassed = 0 // 현재 지나간 시간
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0 // 버튼을 눌렀을때 초기화 되도록 함.
        secondsPassed = 0
        titleLabel.text = hardness // 버튼을 눌렀을때, 원래 타이틀로 변경되게 함.
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer(){
        if secondsPassed < totalTime {
            secondsPassed += 1 // 위로 올리는 이유 - > 이 코드가 아래에 있으면 진행률이 1까지 올라가지 못함.
            progressBar.progress = Float(secondsPassed) / Float(totalTime) 
            
        } else {
            timer.invalidate()
            titleLabel.text = "Done"
        }
    }
    
}

