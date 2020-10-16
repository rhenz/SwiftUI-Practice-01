//
//  TabBarView.swift
//  SwiftUI-Tuts
//
//  Created by Lawrence on 10/16/20.
//  Copyright © 2020 JLCS. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
   var body: some View {
      TabView {
         Home()
            .tabItem {
               Image(systemName: "play.circle.fill")
               Text("Home")
            }
         ContentView()
            .tabItem {
               Image(systemName: "rectangle.stack.fill")
               Text("Certificates")
            }
      }
      .edgesIgnoringSafeArea(.top)
   }
}

struct TabBarView_Previews: PreviewProvider {
   static var previews: some View {
      Group {
         TabBarView()
            .previewDevice("iPhone 8")
      }
   }
}
