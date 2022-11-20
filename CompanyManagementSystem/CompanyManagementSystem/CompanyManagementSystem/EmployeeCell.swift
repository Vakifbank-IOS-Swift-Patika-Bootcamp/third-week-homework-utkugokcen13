//
//  EmployeeCell.swift
//  CompanyManagementSystem
//
//  Created by Utku Gökçen on 21.11.2022.
//

import UIKit

class EmployeeCell: UITableViewCell {

    @IBOutlet weak var salaryLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
