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
        }
    }
    
}




// 하지만 이것으로는 처음 버튼을 눌럿을때는 정상으로 타이머가 작동하지만, 아직 타이머가 끝나지않은 상태에서 다른 버튼을 누르게 되면, 타이머의 시간이 2배는 빠르게 실행된다. -> 이유는 다른 타이머를 눌렀을때, 이전에 눌렀던 타이머가 중단되는 것이 아닌, 새로운 타이머가 실행되는 것이다. 그렇기 때문에 시간이 두배로 늘어나게 된다.
