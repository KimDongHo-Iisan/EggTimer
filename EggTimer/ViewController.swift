//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // 달걀을 익히는 시간
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle //Initialization of immutable value 'hardness' was never used; consider replacing with assignment to '_' or removing it -> 변수로 사용되지 않기 때문에, 변수 선언을 할 필요가 없다고 하는 뜻.
        
        
    }
    
}
