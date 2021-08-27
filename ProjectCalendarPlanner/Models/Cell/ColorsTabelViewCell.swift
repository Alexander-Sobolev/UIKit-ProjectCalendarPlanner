//
//  ColorScheduleTabelViewCell.swift
//  ProjectCalendarPlanner
//
//  Created by Alexander Sobolev on 15.08.2021.
//

import UIKit

class ColorsTabelViewCell: UITableViewCell {
    
    let backgroundViewCell: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
  
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        self.setConstraints()
        self.selectionStyle = .none
        self.backgroundColor = .clear
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func cellConfigure(indexPath: IndexPath) {
        
        switch indexPath.section {
        case 0: backgroundViewCell.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        case 1: backgroundViewCell.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        case 2: backgroundViewCell.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        case 3: backgroundViewCell.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        case 4: backgroundViewCell.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        case 5: backgroundViewCell.backgroundColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        default:
            backgroundViewCell.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        }
        
    }
    
    func setConstraints() {
        
        self.addSubview(backgroundViewCell)
        NSLayoutConstraint.activate([
            backgroundViewCell.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            backgroundViewCell.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            backgroundViewCell.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            backgroundViewCell
                .bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 1)
        ])
    }
}

