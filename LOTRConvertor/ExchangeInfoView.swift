//
//  ExchangeInfoView.swift
//  LOTRConvertor
//
//  Created by by Eshgin Farzali on 08.01.26.
//

import SwiftUI

struct ExchangeInfoView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            //Background parchment image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                //Title text
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                
                //DEsc text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()
                
                //Exchange rates

                Exchangerate(leftImage: .goldpiece, text: "1 Gold Piece = 4 Gold Pennies", rightImage: .goldpenny)
                Exchangerate(leftImage: .goldpenny, text: "1 Gold Penny = 4 Silver Pieces", rightImage: .silverpiece)
                Exchangerate(leftImage: .silverpiece, text:"1 Silver Pieces = 4 Silver Pennies" , rightImage: .silverpenny)
                Exchangerate(leftImage: .silverpenny, text:"1 Silver Penny = 100 Copper Pennies" , rightImage: .copperpenny)
                //Done
                Button("Done"){
                   dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
                
                
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfoView()
}
