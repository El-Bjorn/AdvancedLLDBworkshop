//
//  Menagerie.swift
//  Tbl_MixedDebug
//
//  Created by BjornC on 6/8/16.
//  Copyright © 2016 Builtlight. All rights reserved.
//

import Foundation

@objc public class Menagerie: NSObject {
    private let animals = ["lion","tiger","bear","snake","turkey"]
    
    public func numberOfAnimals() -> Int {
        return animals.count
    }
    
    public func getAnimals() -> [String] {
        return animals
    }
}
