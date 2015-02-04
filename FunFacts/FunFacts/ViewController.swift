//
//  ViewController.swift
//  FunFacts
//
//  Created by Dosty Everts on 2/3/15.
//  Copyright (c) 2015 Must Win. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    let factBook = FactBook()
    let colorWheel = ColorWheel()

    override func viewDidLoad() {
        super.viewDidLoad()
        showFunFact()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showFunFact() {
        var color = colorWheel.randomColor()
        view.backgroundColor = color
        funFactButton.tintColor = color
        // funFactLabel.text = factBook.nextFact(funFactLabel.text!) //ordered facts
        funFactLabel.text = factBook.randomFact()
    }

}

