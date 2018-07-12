//
//  ViewController.swift
//  daneDemoBinaryCounter
//
//  Created by Jaewon Lee on 7/11/18.
//  Copyright © 2018 Jaewon Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tableData: [counterCell] = []
    var sum: Int = 0
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var sumLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "counterCell", for: indexPath) as! counterCell
        
//        cell.controller = self
        
            cell.powerLabel.text = "\(pow(10, indexPath.row))"
            cell.delegate = self
            tableData.append(cell)
        
        return cell
    }
    
}

extension ViewController: CounterCellDelegate{
    func minusButtonPressed(sender: counterCell){
        sum -= Int(sender.powerLabel.text!)!
        print(sum)
        sumLabel?.text = "\(sum)"
    }
    func plusButtonPressed(sender: counterCell){
        sum += Int(sender.powerLabel.text!)!
        print(sum)
        sumLabel?.text = "\(sum)"

    }
}
