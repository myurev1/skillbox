//
//  ViewController.swift
//  m7.5
//
//  Created by Максим Юрьев on 16.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var numb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onBottonPressed(_ sender: Any) {
        addOne()
    }
    func addOne() -> Void {
        var oldNumb = Int(numb.text!.split(separator: " ")[1])
        var newNumb = oldNumb! + 1
        numb.text = "Нажатий: \(String(newNumb))"
    }
    
}

