//
//  TarefaCell.swift
//  Tarefas
//
//  Created by Pedro Brojato on 02/03/22.
//

import UIKit

class TarefaCell: UITableViewCell {

    @IBOutlet weak var tarefaLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
