//
//  ViewController.swift
//  idea
//
//  Created by mino on 2016. 10. 29..
//  Copyright © 2016년 mino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func viewButton(_ sender: Any) {
        if let copiedString = UIPasteboard.general.string {
            copiedText.text = copiedString
            let barcode = Barcode()
            barcodeImage.image = barcode.fromString(string: copiedString)
        }
    }
    @IBOutlet weak var copiedText: UILabel!
    @IBOutlet weak var barcodeImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

