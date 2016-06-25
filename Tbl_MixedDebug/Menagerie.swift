//
//  Menagerie.swift
//  Tbl_MixedDebug
//
//  Created by BjornC on 6/8/16.
//  Copyright © 2016 Builtlight. All rights reserved.
//

import Foundation

@objc public class Menagerie: NSObject {
    public var possibleAnimals = ["lion","tiger","bear","snake","turkey"]
    public var menagerie = [String]()
    
    convenience init(menageSize:Int) {
        self.init()
        var newAnimal:String
        testFunction()
        // Show changing variable values using 'expr'
        //    BEWARE OF VALUES IN REGISTERS! (they will appear to change, but won't)
        for _ in 1...menageSize {
            let randomIndex = Int(arc4random_uniform(UInt32(possibleAnimals.count)))
            newAnimal = possibleAnimals[randomIndex]
            print("new animal= \(newAnimal)")
            menagerie.append(newAnimal)
        }

    }
    
    public func numberOfAnimals() -> Int {
        return menagerie.count
    }
    
    public func getAnimalAtIndex(index:Int) -> String {
        return menagerie[index]
    }
}

func testFunction() {
    let x = 5
    var y = 10
    y += x;
    print("x+y=\(y)");
}
