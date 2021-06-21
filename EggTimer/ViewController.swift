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
        
        totalTime = eggTimes[hardness]! //전체 시간 대입
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer(){
        if secondsPassed < totalTime { // 지나간 시간이 전체 걸리는 시간 보다 작을때,
            let percentageProgress = secondsPassed / totalTime // 진행률은 전체 걸리는 시간 / 지나간 시간.
            progressBar.progress = Float(percentageProgress) // 진행률을 진행바에 대입. 진행률은 부동소수점임.  -> 하지만 이렇게 코드를 짜면 값이 나오지 않고 0만 나온다.
            secondsPassed += 1 //걸리는 시간을 1씩 증가
        } else {
            timer.invalidate()
            titleLabel.text = "Done"
        }
    }
    
}

