//
//  FluentLayout.swift
//  Fluent-Layout
//
//  Created by Mohammad Azam on 10/5/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit

class FluentLayout {
    
    init() {
    
    }
    
    var constraints :[NSLayoutConstraint] = [NSLayoutConstraint]() 
    
    func addConstraint(constraint :NSLayoutConstraint) {
        self.constraints.append(constraint)
    }
    
}
