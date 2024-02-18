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
    /*let gridItem: [GridItem] = Array(repeating: .init(.flexible(maximum:80)), count: 2)
     */
    @ObservedObject var grid = ModeloColumnas()
    var body: some View {
        NavigationView{
            ScrollView(){
                LazyVGrid(columns: grid.gridItem, spacing: 30, content: {
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
                                    grid.columnas(num: 1)
                                }
                                Button("2 columna"){
                                    grid.columnas(num: 2)
                                }
                                Button("3 columna"){
                                    grid.columnas(num: 3)
                                }
                                Button("4 columna"){
                                    grid.columnas(num: 4)
                                }
                                Button("Reset columns"){
                                    UserDefaults.standard.removeObject(forKey: "numero")
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
