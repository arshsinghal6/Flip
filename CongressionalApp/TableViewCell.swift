//
//  TableViewCell.swift
//  Flip
//
//  Created by Munish Singhal on 10/12/18.
//  Copyright © 2018 Monkeys. All rights reserved.
//

import UIKit

class Dashboard1: UITableViewCell {

    var acceptedJob = ""
    var acceptedList: Array<String> = [];
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.acceptedList.append(acceptedJob)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func beginUpdates()
    func insertRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation)
    {
        
    }
    
}
