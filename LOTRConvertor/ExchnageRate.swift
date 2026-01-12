//
//  ExchnageRate.swift
//  LOTRConvertor
//
//  Created by Eshgin Farzali on 12.01.26.
//

import SwiftUI

struct Exchangerate: View {
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    
    
    
    var body: some View {
        HStack{
            //left
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            //exchange text
            Text(text)
            //right
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}
#Preview {
    Exchangerate(leftImage: .goldpiece, text:"1 Gold Piece = 4 Gold Pennies", rightImage:.goldpenny)
}
