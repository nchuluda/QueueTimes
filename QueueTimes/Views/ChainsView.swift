//
//  ChainsView.swift
//  QueueTimes
//
//  Created by Nathan on 10/16/23.
//

import SwiftUI

struct ChainsView: View {
    @StateObject var chainStore = ChainStore()
    
    var body: some View {
        VStack {
            NavigationView {
                List(chainStore.chains, id: \.self) { chain in
                    NavigationLink(chain.name, destination: ParksView(parks: chain.parks))
                }
                .listStyle(.plain)
                .navigationTitle("Queue-Times")
                .refreshable {
                    await chainStore.refresh()
                }
            }
            .task {
                await chainStore.refresh()
            }
            
        .environmentObject(chainStore)
        }
    }
}
    

struct ChainsView_Previews: PreviewProvider {
    static var previews: some View {
        ChainsView()
    }
}

