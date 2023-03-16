//
//  HomeView.swift
//  SwiftCoin
//
//  Created by Abubakar Mana on 15/03/2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                // Top movers view
                TopMoversView(viewModel: viewModel)
                
                Divider()
                
                // All coins view
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
