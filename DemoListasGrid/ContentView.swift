//
//  ContentView.swift
//  DemoListasGrid
//
//  Created by Aguid Ramirez Sanchez on 16/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView(content: {
            List(lista){item in
                NavigationLink(destination: VistaDetalle(item: item)){
                    HStack{
                        emoji(emoji: item)
                        Text(item.nombre)
                    }
                }
            }.navigationTitle("Lista")
        })
    }

}

struct emoji: View{
    let emoji:Modelo
    var body: some View{
        ZStack{
            Text(emoji.emoji)
                .shadow(radius: 3)
                .font(.largeTitle)
                .frame(width: 65, height: 65)
                .overlay(Circle().stroke(Color.purple, lineWidth: 3))
        }
    }
}

struct VistaDetalle: View{
    let item: Modelo
    var body: some View{
        VStack(alignment: .leading, spacing: 3, content: {
            HStack{
                emoji(emoji: item)
                Text(item.nombre).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            Text(item.descripcion).padding(.top)
            Spacer()
        })
        .padding(.all)
        .navigationTitle("Emoji")
    }
}
                       

#Preview {
    ContentView()
}
