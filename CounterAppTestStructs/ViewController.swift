//
//  ViewController.swift
//  CounterAppTestStructs
//
//  Created by Jonas Baer on 16.04.15.
//  Copyright (c) 2015 jonas-baer.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultTextFromButtonAction: UILabel!
    var mobileMarketList:[MobileMarket] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func goForItButtonPressed(sender: UIButton) {

        createListArray()

        var listLongText:String = ""

        for arrayInstance in mobileMarketList {
            listLongText += " I Operating System: "
            listLongText += arrayInstance.operatingSystem
            listLongText += " I Producer: "
            listLongText += arrayInstance.producer
            listLongText += " I Success Factor:  "
            listLongText += "\(arrayInstance.successFactor)"
        }

        self.resultTextFromButtonAction.text = listLongText

    }


    func createListArray() {
        mobileMarketList.removeAll(keepCapacity: false)
        var mobileMarketClassInstance = MobileMarket()

        for var i = 0 ; i < 10 ; ++i {
            var randomLocalNumber = mobileMarketClassInstance.randomNumberFunction(99)
            mobileMarketClassInstance.operatingSystem = "Android " + "\(randomLocalNumber)"
            mobileMarketClassInstance.producer = "Samsung"
            mobileMarketClassInstance.successFactor = i
            self.mobileMarketList.append(mobileMarketClassInstance)
        }
    }
}

