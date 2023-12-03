//
//  ParksView.swift
//  QueueTimes
//
//  Created by Nathan on 10/16/23.
//

import SwiftUI

struct ParksView: View {
//    @EnvironmentObject var chainsVM: ChainViewModel
    @EnvironmentObject var chainStore: ChainStore

    var parks: [Park]
    var body: some View {
            List(parks, id: \.self) { park in
//                NavigationLink("\(park.name)", destination: RidesView(parkId: park.id, parkName: park.name))
                NavigationLink("\(park.name)", destination: RidesView(parkId: park.id, parkName: park.name))

//                Text(String(park.id))
            }
            .navigationTitle("Parks")
            .listStyle(.plain)
    }
}



var canadasWonderland = Park(id: 58, name: "Canada's Wonderland", country: "Canada", latitude: "43.843", longitude: "-79.539")
var previewParks = [canadasWonderland]

struct ParksView_Previews: PreviewProvider {
    static var previews: some View {
//        ParksView(parks: previewParks).environmentObject(ChainViewModel())
        ParksView(parks: previewParks).environmentObject(ChainStore())
    }
}
