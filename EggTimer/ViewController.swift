//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 사전 형식으로 바꾸기
    let eggTimes = ["Soft": 5, "Medium" :7, "Hard" : 12]
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle! //sender.currentTitle에 언래핑을 하면 해결될것이라 생각했지만,
        
        print(eggTimes[hardness]) //여전히 옵셔널이 출력된다. 이유는 sender.currentTitle이 문제가 아닌 사전에서 찾을수 있다. 사전은 까다롭게 정확도를 따진다. 해서 키값이 대소문자가 달라도 키값이 아니라고 간주하기 때문에, 사용자가 제대로 입력할 것이라는 확신을 가지지 못해 옵셔널로 간주하게 된다. 해서 우리가 컴퓨터에게 제대로 값을 입력했다는 확신을 주어야한다.
        
        let result = eggTimes[hardness]! //언래핑으로 값이 확실히 있다는 것을 알려준다.
        
        print(result) // 옵셔널이 사라진다.
    }
    
}
