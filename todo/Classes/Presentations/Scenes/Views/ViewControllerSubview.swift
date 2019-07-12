//
//  ViewControllerSubview.swift
//  todo
//
//  Created by Pich on 7/9/19.
//  Copyright © 2019 pich. All rights reserved.
//

import Foundation
import SnapKit
import Then

class ViewControllerSubview {
    let headerBar = UIView().then {
        $0.backgroundColor = UIColor(red:0.38, green:0.85, blue:0.88, alpha:1)
    }
    
    let todoLabel = UILabel().then {
        $0.text = "Todo App"
        $0.sizeToFit()
    }
    let todoList = UITableView()
    let todoInput = UITextField().then {
        $0.placeholder = "Add new task..."
        $0.layer.borderWidth = 1.0
    }
    let addBtn = UIButton().then {
        $0.setTitle("Add", for: .normal)
        $0.setTitleColor(UIColor.red, for: .normal)
        $0.layer.borderWidth = 1.0
    }
    
    func updatedConstraints() {
        self.todoLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(50)
        }
        self.todoList.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.height.equalToSuperview()
            make.top.equalTo(self.todoInput.snp.bottom)
        }
        self.todoInput.snp.makeConstraints { (make) in
            make.width.equalTo(225)
            make.height.equalTo(50)
            make.left.equalToSuperview().offset(30)
            make.top.equalTo(self.headerBar.snp.bottom)
        }
        self.headerBar.snp.makeConstraints { (make) in
            make.width.equalToSuperview()
            make.height.equalTo(100)
            make.top.equalToSuperview()
        }
        self.addBtn.snp.makeConstraints { (make) in
            make.width.equalTo(68)
            make.height.equalTo(50)
            make.right.equalToSuperview().offset(-30)
            make.top.equalTo(self.headerBar.snp.bottom)
            make.left.equalTo(self.todoInput.snp.right).offset(-3)
            
        }
    }
    
}
