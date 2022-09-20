//
//  MenuSection.swift
//  Restaurant_POC
//
//  Created by Darshan on 29/05/21.
//

import Foundation

struct MenuSection: Decodable, Identifiable {
    let id: UUID
    let name: String
    let items: [Items]
    
    struct Items: Decodable, Equatable, Identifiable {
        let id: UUID
        let name: String
        let photoCredit: String
        let price: Int
        let restrictions: [String]
        let description: String
        
        var mainImage: String {
            name.replacingOccurrences(of: " ", with: "-").lowercased()
        }

        var thumbnailImage: String {
            "\(mainImage)-thumb"
        }
        
        #if DEBUG
        static let example = Items(id: UUID(), name: "Maple French Toast", photoCredit: "Joseph Gonzalez", price: 6, restrictions: ["G", "V"], description: "Sweet, fluffy, and served piping hot, our French toast is flown in fresh every day from Maple City, Canada, which is where all maple syrup in the world comes from. And if you believe that, we have some land to sell you…")
        #endif
    }
}
