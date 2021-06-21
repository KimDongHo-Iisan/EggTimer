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
        
        let hardness = sender.currentTitle //Soft, Medium, Hard
        
        print(eggTimes[hardness]) //이렇게만 적으면 에러가 발생한다. ? 타입으로 출력되기 때문이다. currnetTitle이 빈 타이틀을 출력할 가능성도 있기 때문에 ? 타입으로 간주한다. 
    }
    
}
