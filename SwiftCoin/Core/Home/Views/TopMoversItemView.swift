//
//  TopMoversItemView.swift
//  SwiftCoin
//
//  Created by Abubakar Mana on 15/03/2023.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin: Coin
    
    var body: some View {
        VStack(alignment: .leading) {
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            HStack(spacing: 2) {
                Text(coin.symbol.uppercased())
                    .font(.system(size:14))
                    .fontWeight(.bold)
                
                Text(coin.currentPrice.toCurrency())
                    .font(.system(size:14))
                    .foregroundColor(.gray)
            }
            
            Text(coin.priceChangePercentage24H.toPercentString())
                .font(.system(size: 20))
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
                .fontWeight(.medium)
                .padding(.top, 0.5)
        }
        .frame(width: 140, height: 140)
        .background(Color("ItemBackgroundColor"))
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
        }
    }
}

//struct TopMoversItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversItemView()
//    }
//}
