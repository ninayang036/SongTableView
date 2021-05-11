//
//  SongTableViewCell.swift
//  SongTableView
//
//  Created by Yang Nina on 2021/5/10.
//

import UIKit

class SongTableViewCell: UITableViewCell {


    @IBOutlet weak var showImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var introLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
