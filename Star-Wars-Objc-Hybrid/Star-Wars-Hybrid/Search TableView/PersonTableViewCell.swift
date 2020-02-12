//
//  PersonTableViewCell.swift
//  Star-Wars-Hybrid
//
//  Created by Vici Shaweddy on 2/11/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import UIKit

@objc(LSIPersonTableViewCell)
class PersonTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var eyeColorLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    
    @objc var person: Person? {
        didSet{
            self.updateViews()
        }
    }
    
    private func updateViews() {
        guard let person = person else {
            return
        }
        
        self.nameLabel.text = person.name
        self.heightLabel.text = "\(person.height / 100) m"
        self.birthYearLabel.text = person.birthYear
        self.eyeColorLabel.text = person.eyeColor
    }
}
