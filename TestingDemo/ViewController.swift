//
//  ViewController.swift
//  TestingDemo
//
//  Created by Neosoft on 11/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnIncrement: UIButton!
    @IBOutlet weak var btnDecrement: UIButton!
    @IBOutlet weak var lblNumber: UILabel!
    var cnt = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnIncrementTapped(_ sender: UIButton) {
        cnt += 1
        lblNumber.text = String(cnt)
        view.backgroundColor = UIColor.cyan
    }
    @IBAction func btnDecrementTapped(_ sender: UIButton) {
        cnt -= 1
        lblNumber.text = String(cnt)
        view.backgroundColor = UIColor.magenta
    }
}

