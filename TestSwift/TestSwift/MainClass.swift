//
//  MainClass.swift
//  TestSwift
//
//  Created by Kaloysius Rex on 7/29/24.
//

import UIKit

class MainClass : ObservableObject{
    var testvar1: String
    var testvar2: String
    var testvarInt: Int
    
    init(testvar1: String, testvar2: String, testvarInt:Int){
        self.testvar1 = testvar1
        self.testvar2 = testvar2
        self.testvarInt = testvarInt
    }
    
    @Published var IsAlertOpen = false
    
    func testMethod(open: Bool){
        IsAlertOpen = open
        
        print(open)
    }
}
