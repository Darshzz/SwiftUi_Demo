//
//  ItemDetailView.swift
//  Restaurant_POC
//
//  Created by Darshan on 29/05/21.
//

import SwiftUI

struct ItemDetailView: View {
    
    let itemDetail: MenuSection.Items
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(itemDetail.mainImage)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(7)
                
                Text("Photo: \(itemDetail.photoCredit)")
                    .padding(5)
                    .font(.caption)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0.5, y: 0.5)
                    .offset(x: -4, y: -4)
                    
            }
            Text(itemDetail.name)
                .font(.headline)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding()
                
            Text(itemDetail.description)
                .lineSpacing(3)
                .multilineTextAlignment(.center)
            
            Spacer()
        }.padding()
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView(itemDetail: MenuSection.Items.example)
    }
}
