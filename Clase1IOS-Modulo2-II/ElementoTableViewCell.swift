//
//  ElementoTableViewCell.swift
//  Clase1IOS-Modulo2-II
//
//  Created by alumno on 23/02/17.
//  Copyright © 2017 Rocío Córdova. All rights reserved.
//
//este archivo es creado para crear el campo personalizado

import UIKit

class ElementoTableViewCell: UITableViewCell {

    @IBOutlet weak var lblNumero: UILabel!
    
    @IBOutlet weak var lblDescripcion: UILabel!
    
    @IBOutlet weak var viewColor: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
