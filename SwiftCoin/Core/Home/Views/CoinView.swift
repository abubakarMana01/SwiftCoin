//
//  CoinView.swift
//  SwiftCoin
//
//  Created by Abubakar Mana on 16/03/2023.
//

import SwiftUI
import Kingfisher

struct CoinView: View {
    let coin: Coin
    
    var body: some View {
        HStack {
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .fontWeight(.medium)
                .foregroundColor(Color(.systemGray))
            
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            VStack(alignment: .leading, spacing: 3) {
                Text(coin.name)
                    .font(.headline)
                
                Text(coin.symbol.uppercased())
                    .font(.system(size: 14))
                    .foregroundColor(Color(.systemGray))
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3) {
                Text(coin.currentPrice.toCurrency())
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text(coin.priceChangePercentage24H.toPercentString())
                    .font(.system(size: 14))
                    .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
            }
        }
        .padding([.horizontal, .bottom], 8)
    }
}

//struct CoinView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinView()
//    }
//}
