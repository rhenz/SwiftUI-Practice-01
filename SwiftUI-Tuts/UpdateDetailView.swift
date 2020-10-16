//
//  UpdateDetailView.swift
//  SwiftUI-Tuts
//
//  Created by Lawrence on 10/16/20.
//  Copyright © 2020 JLCS. All rights reserved.
//

import SwiftUI

struct UpdateDetailView: View {
   var update: Update = Update.sampleData()[2]
   
   var body: some View {
      List {
         VStack() {
            Image(update.image)
               .resizable()
               .aspectRatio(contentMode: .fill)
               .frame(maxWidth: .infinity)
            
            Text(update.text)
               .frame(maxWidth: .infinity, alignment: .leading)
         }
         .navigationBarTitle(update.title)
      }
   }
}

struct UpdateDetailView_Previews: PreviewProvider {
   static var previews: some View {
      UpdateDetailView()
   }
}
