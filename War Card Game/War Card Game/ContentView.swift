//
//  ContentView.swift
//  War Card Game
//
//  Created by Kaan Erenmemisoglu on 28/12/2024.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
       
        ZStack{
            
            Image("background-wood")
                .resizable()
                .ignoresSafeArea()
                .overlay(
                    Color.black.opacity(0.1)
                )
                
            VStack{
                Spacer()
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                Spacer()
                Button{
                   deal()
                    
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
                    Text(String(playerScore))
                    Spacer()
                    Text(String(cpuScore))
                    Spacer()
                }.foregroundColor(.white).font(.largeTitle)
                Spacer()
                Spacer()
                Button("Reset Game") {
                    resetGame()
                }.foregroundColor(.white).font(.title)
                Spacer()
            }
        }
    }
    func deal(){
        // Randomize the player cards
        var playerCardNumber = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardNumber)

        
        // Randomize the cpu card
        var cpuCardNumber = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardNumber)
        
        //Calculate the score
        if playerCardNumber > cpuCardNumber{
            playerScore += 1
        }
        else if playerCardNumber < cpuCardNumber{
            cpuScore += 1
        }
        else {
            let alert = UIAlertController(title: "It's a Draw!",
                                              message: "No Score Added.",
                                          preferredStyle: .alert)
        }
        
    }
    
    
    func resetGame(){
        playerCard = ""
        cpuCard = ""
        playerScore = 0
        cpuScore = 0
    }
    
    
    
}

#Preview {
    ContentView()
}
