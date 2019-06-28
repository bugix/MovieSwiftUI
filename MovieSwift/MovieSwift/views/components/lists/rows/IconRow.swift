//
//  IconRow.swift
//  MovieSwift
//
//  Created by Thomas Ricouard on 28/06/2019.
//  Copyright © 2019 Thomas Ricouard. All rights reserved.
//

import SwiftUI

struct IconRow : View {
    let systemImage: String
    let text: String
    let color: Color
    let count: Int
    
    var body: some View {
        HStack {
            Image(systemName: systemImage).foregroundColor(color)
            Text(text).color(color).font(.body)
            Spacer()
            Text("\(count)")
                .color(.secondary)
        }
    }
}

#if DEBUG
struct IconRow_Previews : PreviewProvider {
    static var previews: some View {
        IconRow(systemImage: "heart.fill", text: "Wishlist", color: .red, count: 4)
    }
}
#endif
