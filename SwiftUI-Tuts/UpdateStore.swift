//
//  UpdateStore.swift
//  SwiftUI-Tuts
//
//  Created by Lawrence on 10/16/20.
//  Copyright © 2020 JLCS. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
   @Published var updates: [Update] = Update.sampleData()
}
