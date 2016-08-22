//
//  TableViewController.swift
//  Aldente
//
//  Created by Mateusz Kopacz on 22.08.2016.
//  Copyright © 2016 Mateusz Kopacz. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    
    var pastaArray:[PastaClass] = [PastaClass(pastaName: "Spaghetti", pastaImage: "spaghetti", pastaTime: 11.0),
                                   PastaClass(pastaName: "Fusilli", pastaImage: "fusilli", pastaTime: 9.0),
                                   PastaClass(pastaName: "Penne", pastaImage: "penne", pastaTime: 10.0),
                                   PastaClass(pastaName: "Farfalle", pastaImage: "farfalle", pastaTime: 13.0),
                                   PastaClass(pastaName: "Gnocchi", pastaImage: "gnocchi", pastaTime: 9.0),
                                   PastaClass(pastaName: "Ruote", pastaImage: "ruote", pastaTime: 11.0)]
        
        
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return pastaArray.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! TableViewCell
        
        cell.displayLabel.text = pastaArray[indexPath.row].pastaName
        cell.displayTime.text = String(pastaArray[indexPath.row].pastaTime)
        cell.displayImage.image = UIImage(named: pastaArray[indexPath.row].pastaImage)
        
        
        
        return cell
    }
    
    
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     
        if  segue.identifier == "segueToTimer" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let segueDetail = segue.destinationViewController as! DetailViewController
                
                
                segueDetail.pastaName = pastaArray[indexPath.row].pastaName
                segueDetail.pastaTime = pastaArray[indexPath.row].pastaTime

            
            }
        
        
        }
        
     }
    
    
}
