//
//  ViewController.swift
//  TimesTables
//
//  Created by Katherine Owens on 10/7/16.
//  Copyright © 2016 Katherine Owens. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var sliderValue: UISlider!
    
    @IBAction func sliderMoved(_ sender: AnyObject) {
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cellIdentifier")
        let timesTable = Int(sliderValue.value * 20)
        cell.textLabel?.text = String(timesTable * indexPath.row)
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

