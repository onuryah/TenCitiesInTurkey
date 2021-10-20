//
//  DetailsVC.swift
//  Homework Tableview
//
//  Created by Ceren Çapar on 20.10.2021.
//

import UIKit

class DetailsVC: UIViewController {
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var cityNameLabel: UILabel!
    var selectedCity : Cities?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityNameLabel.text = selectedCity?.name
        ImageView.image = selectedCity?.image
    }
}
