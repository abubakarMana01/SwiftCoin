//
//  AllCoinsView.swift
//  SwiftCoin
//
//  Created by Abubakar Mana on 16/03/2023.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel = HomeViewModel()

    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("All Coins")
                    .font(.headline)
                    .padding(.bottom, 4)
                
                HStack {
                    Text("Coin")
                        .font(.caption)
                        .foregroundColor(Color(.systemGray2))
                    Spacer()
                    
                    Text("Price")
                        .font(.caption)
                        .foregroundColor(Color(.systemGray2))
                }
            }
            .padding([.top, .horizontal])
            .padding(.bottom, 4)
            
            ScrollView {
                ForEach(viewModel.coins) { coin in
                    CoinView(coin: coin)
                }
            }
            
        }
    }
}

//struct AllCoinsView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinsView()
//    }
//}
