//
//  MapSettingsCell.swift
//  mChat
//
//  Created by Vitaliy Paliy on 1/8/20.
//  Copyright © 2020 PALIY. All rights reserved.
//

import UIKit

class MapSettingsCell: UITableViewCell {
    
    // ---------------------------------------------------------------------------------------------------------------------------------------------------- //
    
    var switchButton = UISwitch()
    
    var mapsSettingsVC = MapsSettingsVC()
    
    // ---------------------------------------------------------------------------------------------------------------------------------------------------- //
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // ---------------------------------------------------------------------------------------------------------------------------------------------------- //
    
    func setupSwitch(){
        addSubview(switchButton)
        switchButton.translatesAutoresizingMaskIntoConstraints = false
        switchButton.addTarget(self, action: #selector(switchClicked), for: .touchUpInside)
        let constraints = [
            switchButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            switchButton.centerYAnchor.constraint(equalTo: centerYAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
            
    }
    
    // ---------------------------------------------------------------------------------------------------------------------------------------------------- //
    
    @objc func switchClicked(){
        mapsSettingsVC.changeSwitchValue(switchButton)
    }
    
    // ---------------------------------------------------------------------------------------------------------------------------------------------------- //
    
}
