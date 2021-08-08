//
//  ViewController.swift
//  homework_lesson6_number1
//
//  Created by Dominika Poleshyck on 6.08.21.
//

import UIKit



class ViewController: UIViewController {
    var emptyView: UIView = UIView()
    var button: UIButton = UIButton(frame: CGRect(x: 150, y: 250, width: 50, height: 50))
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        button.backgroundColor = .orange
        button.setTitle("meow", for: .normal)
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(pressButton), for: .touchUpInside)
        view.addSubview(button)
        button.tag = 1
        self.view.addSubview(button)
    }
    
    @objc func pressButton(sender: UIButton) {
        let btnsendtag: UIButton = sender
        if btnsendtag.tag == 1 {

        dismiss(animated: true, completion: nil)
            button.frame = CGRect(x: Int.random(in: 10...300), y: Int.random(in: 10...700), width: 50, height: 50)
    }
    }


}
