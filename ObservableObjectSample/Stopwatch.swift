//
//  Stopwatch.swift
//  ObservableObjectSample
//
//  Created by MakeItSimple on 2020/02/23.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class Stopwatch: ObservableObject {
    
    @Published var counter: Int = 0
    
    var timer = Timer()
    
    func start() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            self.counter += 1
        })
    }
    
    func stop() {
        self.timer.invalidate()
    }
    
    func reset() {
        counter = 0
        self.timer.invalidate()
    }
    
    
}
