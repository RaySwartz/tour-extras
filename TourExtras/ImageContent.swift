//
//  ImageContent.swift
//  TourExtras
//
//  Created by Raymond Edgar Swartz on 12/20/18.
//  Copyright © 2018 Swartzware. All rights reserved.
//

import Foundation
import UIKit

// This is one image, plus optional caption
class ImageContent {
    var image: UIImage
    var caption: String?
    
    init(image: UIImage, text: String?) {
        self.image = image
        if let caption = text {
            self.caption = caption
        }
    }
}
