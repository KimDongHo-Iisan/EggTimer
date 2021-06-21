//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 분을 초로 정의
    let eggTimes = ["Soft": 300, "Medium" : 420, "Hard" : 7]
    
    var secondsRemaining = 60
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle! //sender.currentTitle에 언래핑을 하면 해결될것이라 생각했지만,
        
        secondsRemaining = eggTimes[hardness]!
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true) // timeInterval : 타이머를 얼마나 자주 실행할것인지 물어보는 것,매초 업데이트를 원하기 때문에 1.0 타이머를 반복할지 여부를 결정 repeats . #selector는 오브젝트 c시절에 사용하던것, 이를 사용할때는 @objc를 넣어야함.
        
    }
    //매초마다 발생하는 함수
    @objc func updateTimer(){
        if secondsRemaining > 0 {  // 아직 시간이 있는지 확인
            print("\(secondsRemaining) seconds.") // 남은 시간을 출력
            secondsRemaining -= 1 //실행될때마다 -1이 됨
        }
    }
    
}



