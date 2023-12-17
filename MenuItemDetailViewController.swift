//
//  MenuItemDetailViewController.swift
//  OrderApp
//
//  Created by shark boy on 12/4/23.
//

import UIKit

class MenuItemDetailViewController: UIViewController {
    
    let menuItem: MenuItem
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var detailTextLabel: UILabel!
    
    @IBOutlet weak var addToOrderButton: UIButton!
    
    init?(coder: NSCoder, menuItem: MenuItem) {
        self.menuItem = menuItem
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    func updateUI() {
        nameLabel.text = menuItem.name
        priceLabel.text = menuItem.price.formatted(.currency(code:"usd"))
//        detailTextLabel.text = menuItem.detailText
    }
    
}
