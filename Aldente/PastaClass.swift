//
//  PastaClass.swift
//  Aldente
//
//  Created by Mateusz Kopacz on 22.08.2016.
//  Copyright © 2016 Mateusz Kopacz. All rights reserved.
//

import Foundation

class PastaClass{

    var pastaName = ""
    var pastaImage = ""
    var pastaTime = 0.0
    
    
    init(pastaName:String, pastaImage:String, pastaTime:Double){
    
        self.pastaName = pastaName
        self.pastaImage = pastaImage
        self.pastaTime = pastaTime
    }

}