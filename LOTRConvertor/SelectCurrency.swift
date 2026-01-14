//
//  SelectCurrency..swift
//  LOTRConvertor
//
//  Created by Eshgin Farzali on 12.01.26.
//

import SwiftUI

struct SelectCurrency: View {

    @Environment(\.dismiss)  var dismiss
    
    var body: some View {
        ZStack{
            //Parchment bg image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                //Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                //Currency icons

                    CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper penny")
       
                
                //Text
                Text("Select the currency you would like to covert to:")
                    .fontWeight(.bold)
 

                //Currency icons
                
                //Done button
                Button("Done"){
                   dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
     

        }
    
    
       
    }
}
#Preview {
    SelectCurrency()
}

