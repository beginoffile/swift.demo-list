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
    let gridItem: [GridItem] = Array(repeating: .init(.flexible(maximum:80)), count: 2)
    var body: some View {
        NavigationView{
            ScrollView(){
                LazyVGrid(columns: gridItem, spacing: 30, content: {
                    ForEach(lista){item in
                        Text(item.emoji).font(.system(size: 80))
                    }
                })
                
            }.navigationTitle("Grids")
                .toolbar{
                    ToolbarItem{
                        Menu("Opciones"){
                            Section{
                                Button("1 columna"){
                                    print("opcion1")
                                }
                                Button("2 columna"){
                                    print("opcion2")
                                }
                                Button("3 columna"){
                                    print("opcion3")
                                }
                                Button("4 columna"){
                                    print("opcion4")
                                }
                            }
                        }
                    }
                }
        }
    }
}

#Preview {
    GridList()
}
