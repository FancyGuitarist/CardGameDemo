//
//  ContentView.swift
//  CardGameDemo
//
//  Created by Simon Ferland on 2023-01-28.
//

import SwiftUI

var cardID1 = 0

var cardID2 = 0

var cards = ["card2","card3","card4","card5","card6","card7","card8","card9","card10","card11","card12","card13","card14"]

func Shuffle(){
    cardID1 = Int.random(in: 1..<12)
    cardID2 = Int.random(in: 1..<12)
    
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(cards[cardID1])
                        
                    Spacer()
                    Image(cards[cardID2])
                    Spacer()
                }
                Spacer()
                Button {
                    Shuffle()
                }
                label: {Image("button")}
                Spacer()
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                        Text("Player")
                        Spacer()
                        Text("CPU")
                        Spacer()
                    }
                    
                    HStack{
                        Spacer()
                        Text("0")
                        Spacer()
                        Text("0")
                        Spacer()
                    }
                    Spacer()
                }
            }
    }
    }
}
func deal(){
    print("Deal Cards MF")
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
