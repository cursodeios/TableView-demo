//
//  PostCell.swift
//  TableView-demo
//
//  Created by Danny Narvaez on 12/12/16.
//  Copyright © 2016 eHarvestHub. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    
    var blogPost: Post! {
        didSet {
            self.title.text = blogPost.title
            self.subtitle.text = blogPost.subtitle
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
