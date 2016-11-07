//
//  Barcode.swift
//  idea
//
//  Created by mino on 2016. 10. 29..
//  Copyright © 2016년 mino. All rights reserved.
//

import UIKit

class Barcode {
    func fromString(string: String) -> UIImage? {
        let data = string.data(using: String.Encoding.ascii)
        if let filter = CIFilter(name: "CICode128BarcodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 3, y: 3)
            
            if let output = filter.outputImage?.applying(transform) {
                return UIImage(ciImage: output)
            }
        }
        
        return nil
    }
}
