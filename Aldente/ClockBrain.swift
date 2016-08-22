//
//  ClockBrain.swift
//  Aldente
//
//  Created by Mateusz Kopacz on 22.08.2016.
//  Copyright © 2016 Mateusz Kopacz. All rights reserved.
//

import Foundation

class ClockBrain {


    var currentTime:NSDate?
    
    var timerElapsed:NSTimeInterval{
        if let currentTime = self.currentTime{
            return -currentTime.timeIntervalSinceNow
        } else {
            return 0.0
        }

    }
    
    
    func startTimer() {
        currentTime = NSDate()
    }
    func stopTimer() {
        currentTime = nil
        
    }
    func isTimerWorking() -> Bool {
        if currentTime != nil {
            return true
        } else {
            return false
        }
    }
    func timeString(timeValue: Double) -> String {
        if Double(timeValue - self.timerElapsed) > 0{
        return String(format: "%02d:%02d:%d",Int(timeValue - self.timerElapsed)/60, Int(timeValue - self.timerElapsed)%60, Int(timeValue - self.timerElapsed)*10%10)
        } else {
            
            return "00:00:00"
        }
    
    }
    
    
    

}



