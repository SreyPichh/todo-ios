//
//  ViewController.swift
//  todo
//
//  Created by Pich on 7/9/19.
//  Copyright © 2019 pich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var subview: ViewControllerSubview = ViewControllerSubview()
    

}
extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(self.subview.headerBar)
        self.view.addSubview(self.subview.todoList)
        self.view.addSubview(self.subview.todoLabel)
        self.view.addSubview(self.subview.todoInput)
        self.view.addSubview(self.subview.addBtn)
    }
    
    override func viewDidLayoutSubviews() {
        self.subview.updatedConstraints()
    }
}
