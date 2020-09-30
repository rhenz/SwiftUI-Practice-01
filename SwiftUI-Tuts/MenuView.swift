//
//  MenuView.swift
//  SwiftUI-Tuts
//
//  Created by Lawrence on 9/30/20.
//  Copyright © 2020 JLCS. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        Text("Account")
         .font(.system(size: 20, weight: .bold, design: .rounded))
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
