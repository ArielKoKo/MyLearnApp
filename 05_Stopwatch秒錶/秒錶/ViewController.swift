//
//  ViewController.swift
//  秒錶
//
//  Created by Ariel Ko on 2021/5/19.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var time : Int = 0
    var isStart : Bool = false
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBAction func pauseButton(_ sender: UIBarButtonItem) {
        timer.invalidate()
        isStart = false
    }
    
    @IBAction func playButton(_ sender: UIBarButtonItem) {
        
        if !isStart {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(processTimer), userInfo: nil, repeats: true)
            timer.fire()
            isStart = true
        } else {
            timer.invalidate()
            isStart = false
        }
    }
    
    @IBAction func resetButton(_ sender: UIBarButtonItem) {
        timer.invalidate()
        time = 0
        timeLabel.text = String(time)
        isStart = false
    }
    
    @objc func processTimer() {
        time = time + 1
        timeLabel.text = String(time)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

