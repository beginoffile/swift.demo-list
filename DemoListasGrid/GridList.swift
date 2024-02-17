//
//  GridList.swift
//  DemoListasGrid
//
//  Created by Aguid Ramirez Sanchez on 17/02/24.
//

import SwiftUI

struct GridList: View {
   /* let gridItem = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    ]*/
    let gridItem: [GridItem] = Array(repeating: .init(.flexible(maximum:200)), count: 2)
    var body: some View {
        NavigationView{
            ScrollView(.horizontal){
                LazyHGrid(rows: gridItem, spacing: 30, content: {
                    ForEach(lista){item in
                        Text(item.emoji).font(.system(size: 80))
                    }
                })
                
            }.navigationTitle("Grids")
        }
    }
}

#Preview {
    GridList()
}
