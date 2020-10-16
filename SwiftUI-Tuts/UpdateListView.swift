//
//  UpdateListView.swift
//  SwiftUI-Tuts
//
//  Created by Lawrence on 10/16/20.
//  Copyright © 2020 JLCS. All rights reserved.
//

import SwiftUI

struct UpdateListView: View {
   @ObservedObject var store = UpdateStore()
   
   var body: some View {
      NavigationView {
         List {
            ForEach(store.updates) { data in
               NavigationLink(
                  destination: UpdateDetailView(update: data),
                  label: {
                     UpdateCell(title: data.title, image: data.image, desc: data.text, date: data.date)
               })
            }
            .onDelete { index in
               store.updates.remove(at: index.first!)
            }
            .onMove(perform: { indices, newOffset in
               self.store.updates.move(fromOffsets: indices, toOffset: newOffset)
            })
         }
         
         .navigationBarTitle("Updates")
         .navigationBarItems(leading: Button(action: addUpdate) {
            Text("Add Update")
         }, trailing: EditButton())
         
         .listStyle(PlainListStyle())
      }
      
   }
   
   func addUpdate() {
      store.updates.append(Update(image: "Card1", title: "New Item", text: "Text", date: "Jan 22"))
   }
}

struct UpdateListView_Previews: PreviewProvider {
   static var previews: some View {
      UpdateListView()
   }
}

struct UpdateCell: View {
   var title: String
   var image: String
   var desc: String
   var date: String
   
   var body: some View {
      HStack {
         Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 80, height: 80)
            .background(Color.black)
            .cornerRadius(20)
            .padding(.trailing, 4)
         
         VStack(alignment: .leading, spacing: 8.0) {
            Text(title)
               .font(.system(size: 20, weight: .semibold))
            Text(desc)
               .font(.subheadline)
               .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
               .lineLimit(2)
            Text(date)
               .font(.subheadline)
               .fontWeight(.bold)
               .foregroundColor(.secondary)
         }
      }
      .padding(.vertical, 8)
   }
}
