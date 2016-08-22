//
//  DetailViewController.swift
//  Aldente
//
//  Created by Mateusz Kopacz on 22.08.2016.
//  Copyright © 2016 Mateusz Kopacz. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameDetail: UILabel!
    
    
    @IBOutlet weak var detailTime: UILabel!
    
    
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
