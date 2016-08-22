//
//  DetailViewController.swift
//  Aldente
//
//  Created by Mateusz Kopacz on 22.08.2016.
//  Copyright © 2016 Mateusz Kopacz. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var clockBrain = ClockBrain()
    
    @IBOutlet weak var nameDetail: UILabel!
    
    
    @IBOutlet weak var detailTime: UILabel!
    
    
    @IBAction func stopButton(sender: UIButton) {
        clockBrain.stopTimer()
    
    }
    
    
    
    @IBAction func startButton(sender: UIButton) {
        clockBrain.startTimer()
        NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(DetailViewController.coutingLabel), userInfo: nil, repeats: true)
    
    }
    
    
    func coutingLabel() {
        if clockBrain.isTimerWorking() {
            detailTime.text = clockBrain.timeString(pastaTime*60)
        
        }
    }
    
    
    var pastaTime = 0.0
    var pastaName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        nameDetail.text = pastaName
        detailTime.text = String(pastaTime)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
