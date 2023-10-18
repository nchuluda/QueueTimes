//
//  ContentView.swift
//  QueueTimes
//
//  Created by Nathan on 10/15/23.
//

//import SwiftUI
//
//struct ContentView: View {
//    @StateObject var chainsVM = ChainViewModel()
//    
//    var body: some View {
//        NavigationView {
//            List(chainsVM.chainsArray, id: \.self) { chain in
//                NavigationLink(chain.name, destination: ParksView(parks: chain.parks))
//            }
//            .listStyle(.plain)
//            .navigationTitle("Queue-Times")
//        }
//        .task {
//            await chainsVM.getData()
//        }
//        .environmentObject(chainsVM)
//    }
//}
//    
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
