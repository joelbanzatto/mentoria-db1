//
//  ViewController.swift
//  mentoria
//
//  Created by Joel Banzatto on 08/07/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .cyan
        let button = UIButton()
        button.setTitle("Ir para Proxima tela", for: .normal)
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        button.addTarget(self, action: #selector(buttonTapeed), for: .touchUpInside)
    }
    
    @objc func buttonTapeed() {
        navigationController?.pushViewController(ViewController2(), animated: true)
        navigationController?.present(ViewController2(), animated: true, completion: nil)
        navigationController?.navigationBar.tintColor = .red
        navigationItem.backBarButtonItem?.title = "volta, mizera"
        
    }


}

