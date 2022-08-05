//
//  ViewController.swift
//  SampleQuickNotes
//
//  Created by Prakash on 05/08/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton()
        button.frame = CGRect(x: self.view.frame.width / 2 - 75, y: self.view.frame.height / 2 - 40, width: 150, height: 80)
        button.setTitle("Add New Entry", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(openAddForm), for: .touchUpInside)
        self.view.addSubview(button)
    }

    @objc func openAddForm() {
        let vc = AddEntryViewController()
        self.present(vc, animated: true)
    }
}

