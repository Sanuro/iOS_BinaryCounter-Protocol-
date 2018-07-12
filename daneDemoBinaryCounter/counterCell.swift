//
//  counterCell.swift
//  daneDemoBinaryCounter
//
//  Created by Jaewon Lee on 7/11/18.
//  Copyright © 2018 Jaewon Lee. All rights reserved.
//

import UIKit


protocol CounterCellDelegate {
    func minusButtonPressed(sender: counterCell)
    func plusButtonPressed(sender: counterCell)
}
class counterCell: UITableViewCell {
    var delegate: CounterCellDelegate!
    
//    var controller: UIViewController?

    @IBOutlet weak var powerLabel: UILabel!
    
    @IBAction func minusButtonPressed(_ sender: UIButton) {
        delegate.minusButtonPressed(sender: self)

//        if let vc = controller as? ViewController{
//            vc.sum -= (Int(powerLabel.text!))!
//            print (vc.sum)
//            vc.sumLabel?.text = "\(vc.sum)"
        }
    
    @IBAction func plusButtonPressed(_ sender: UIButton) {
        delegate.plusButtonPressed(sender: self)

//        if let vc = controller as? ViewController{
//            vc.sum += (Int(powerLabel.text!))!
//            print(vc.sum)
//            vc.sumLabel?.text = "\(vc.sum)"

        }


}

