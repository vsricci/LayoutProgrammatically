//
//  SchedulingView.swift
//  LayoutProgrammaticalliy
//
//  Created by Vinicius Ricci on 27/10/18.
//  Copyright © 2018 Vinicius Ricci. All rights reserved.
//

import UIKit

class SchedulingView: UIView {

    
    var namePatientLabel: UILabel = UILabel()
    var namePatientTextField: UITextField = UITextField()
    var credentialsLabel: UILabel = UILabel()
    var FatherStackView: UIStackView = UIStackView()
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       namePatientLabel.textColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
       namePatientLabel.text = "Dados do paciente"
       namePatientLabel.textAlignment = .left
       self.addSubview(namePatientLabel)
       namePatientLabel.translatesAutoresizingMaskIntoConstraints = false
       
        namePatientLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        namePatientLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        namePatientLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        
        
        credentialsLabel.textColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        credentialsLabel.text = "Dados do paciente"
        credentialsLabel.textAlignment = .left
        self.addSubview(credentialsLabel)
        credentialsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        credentialsLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        credentialsLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        credentialsLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
