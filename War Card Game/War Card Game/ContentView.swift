//
//  ContentView.swift
//  War Card Game
//
//  Created by Kaan Erenmemisoglu on 28/12/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        ZStack{
            
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                    
                }
                Spacer()
                Button{
                    for i in 0..<5{
                        deal()
                    }
                    
                } label: {
                    Image("button")
                }
                Spacer()
                HStack{
                    Spacer()
                    Text("Player")
                    Spacer()
                    Text("CPU")
                    Spacer()
                }.font(.headline)
                .foregroundColor(.white)
                Spacer()
                HStack{
                    Spacer()
                    Text("0")
                    Spacer()
                    Text("0")
                    Spacer()
                }.foregroundColor(.white).font(.largeTitle)
                Spacer()
                Spacer()
                
            }
        }
    }
    func deal(){
        print("Deal")
    }
    
}

#Preview {
    ContentView()
}
