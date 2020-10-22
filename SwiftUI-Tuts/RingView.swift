//
//  RingView.swift
//  SwiftUI-Tuts
//
//  Created by Lawrence on 10/18/20.
//  Copyright © 2020 JLCS. All rights reserved.
//

import SwiftUI

struct RingView: View {
   var color1 = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
   var color2 = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
   var width: CGFloat = 300
   var height: CGFloat = 300
   var percentage: CGFloat = 69
   
   
   var body: some View {
      let multiplier = width / 44
      let progress = 1 - percentage / 100
      
      return ZStack {
         Circle()
            .stroke(Color.black.opacity(0.1), style: StrokeStyle(lineWidth: 5 * multiplier))
            .frame(width: width, height: height)
         Circle()
            .trim(from: progress, to: 1)
            .stroke(LinearGradient(gradient: Gradient(colors: [Color(color1), Color(color2)]),
                                   startPoint: .topTrailing,
                                   endPoint: .bottomLeading), style: StrokeStyle(lineWidth: 5 * multiplier, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20, 0],
                                       dashPhase: 0)
            )
            .rotationEffect(Angle(degrees: 90))
            .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0))
            .frame(width: width, height: height)
            .shadow(color: Color(color2).opacity(0.1), radius: 3 * multiplier, x: 0, y: 3 * multiplier)
         
         Text("\(percentage, specifier: "%g")%")
            .font(.system(size: 14 * multiplier))
            .bold()
      }
   }
}

struct RingView_Previews: PreviewProvider {
   static var previews: some View {
      RingView()
   }
}
