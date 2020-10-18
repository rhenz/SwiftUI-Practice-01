//
//  RingView.swift
//  SwiftUI-Tuts
//
//  Created by Lawrence on 10/18/20.
//  Copyright © 2020 JLCS. All rights reserved.
//

import SwiftUI

struct RingView: View {
   var body: some View {
      ZStack {
         Circle()
            .stroke(Color.black.opacity(0.1), style: StrokeStyle(lineWidth: 5))
            .frame(width: 44, height: 44)
         Circle()
            .trim(from: 0.2, to: 1)
            .stroke(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]),
                                   startPoint: .topTrailing,
                                   endPoint: .bottomLeading), style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20, 0],
                                       dashPhase: 0)
            )
            .rotationEffect(Angle(degrees: 90))
            .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0))
            .frame(width: 44, height: 44)
            .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)).opacity(0.1), radius: 3, x: 0, y: 3)
         
         Text("82%")
            .font(.subheadline)
            .bold()
      }
   }
}

struct RingView_Previews: PreviewProvider {
   static var previews: some View {
      RingView()
   }
}
