//
//  HomeView.swift
//  SwiftUI-Tuts
//
//  Created by Lawrence on 10/4/20.
//  Copyright © 2020 JLCS. All rights reserved.
//

import SwiftUI

struct HomeView: View {
   @Binding var showProfile: Bool
   
   var body: some View {
      VStack {
         HStack {
            Text("Watching")
               .font(.system(size: 28, weight: .bold))
            
            Spacer()
            AvatarView(showProfile: $showProfile)
         }
         .padding(.horizontal)
         .padding(.leading, 14)
         .padding(.top, 30)
         
         ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 30) {
               ForEach(sectionData) { section in
                  SectionView(section: section)
               }
            }
            .padding(30)
            .padding(.bottom, 30)
         }
         
         Spacer()
      }
   }
}

struct HomeView_Previews: PreviewProvider {
   static var previews: some View {
      HomeView(showProfile: .constant(false))
   }
}

struct SectionView: View {
   var section: Section
   
   var body: some View {
      VStack {
         HStack(alignment: .top) {
            Text(section.title)
               .font(.system(size: 24, weight: .bold))
               .frame(width: 160, alignment: .leading)
               .foregroundColor(.white)
            Spacer()
            Image(section.logoName)
         }
         
         Text(section.text.uppercased())
            .frame(maxWidth: .infinity, alignment: .leading)
         
         section.image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 210)
         
      }
      .padding(.top, 20)
      .padding(.horizontal, 20)
      .frame(width: 275, height: 275)
      .background(section.color)
      .cornerRadius(30)
      .shadow(color: section.color.opacity(0.3), radius: 20, x: 0, y: 20)
   }
}


struct Section: Identifiable {
   var id = UUID()
   var title: String
   var text: String
   var logoName: String
   var image: Image
   var color: Color
}

let sectionData = [
   Section(title: "iOS 14 Course", text: "60 Sections", logoName: "Logo1", image: Image("Card1"), color: Color("card1")),
   
   Section(title: "SwiftUI Course", text: "30 Sections", logoName: "Logo1", image: Image("Card2"), color: Color("card2")),
   
   Section(title: "Swift Design Patterns", text: "18 Sections", logoName: "Logo2", image: Image("Card3"), color: Color("card3"))
   
   
]
