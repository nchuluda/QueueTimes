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

//landsArray: [QueueTimes.Land(id: 41, name: "Coasters", rides: [QueueTimes.Ride(id: 5899, name: "Adventure Express", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 5898, name: "Backlot Stunt Coaster", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 5907, name: "Banshee", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 5905, name: "Diamondback", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 5903, name: "Flight of Fear", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 5904, name: "Invertigo", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 5894, name: "Mystic Timbers", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 8063, name: "Orion", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 5906, name: "The Bat", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 5893, name: "The Beast", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 5895, name: "The Racer", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z")]), QueueTimes.Land(id: 42, name: "Family", rides: [QueueTimes.Ride(id: 5902, name: "Boo Blasters on Boo Hill", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 11898, name: "Cargo Loco", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7593, name: "Congo Falls", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7594, name: "Dodgem", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7597, name: "Eiffel Tower", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7598, name: "Grand Carousel", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7313, name: "K.I. & Miami Valley Railroad", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 8062, name: "Kings Mills Antique Autos", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7599, name: "Monster", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7600, name: "Scrambler", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7601, name: "Shake, Rattle & Roll", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 11911, name: "Sol Spin", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7602, name: "Viking Fury", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 5908, name: "White Water Canyon", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7603, name: "Zephyr", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z")]), QueueTimes.Land(id: 44, name: "Kids", rides: [QueueTimes.Ride(id: 7611, name: "Character Carousel", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7619, name: "Charlie Brown\'s Wind Up", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 5896, name: "Flying Ace Aerial Chase", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7612, name: "Joe Cool\'s Dodgem School", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7625, name: "Kite Eating Tree", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7613, name: "Linus\' Beetle Bugs", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7621, name: "Linus\' Launcher", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7614, name: "PEANUTS™ 500", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7627, name: "PEANUTS™ Off-Road Rally", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7605, name: "Race For Your Life Charlie Brown", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7623, name: "Sally\'s Sea Plane", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7616, name: "Snoopy vs. Red Baron", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7628, name: "Snoopy\'s Junction", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7624, name: "Snoopy\'s Space Buggies", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7617, name: "Surf Dog", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7607, name: "The Great Pumpkin Coaster", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 5910, name: "Woodstock Express", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7626, name: "Woodstock Gliders", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7608, name: "Woodstock Whirlybirds", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z")]), QueueTimes.Land(id: 43, name: "Thrill", rides: [QueueTimes.Ride(id: 5901, name: "Delirium", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 5909, name: "Drop Tower", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7618, name: "WindSeeker", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z"), QueueTimes.Ride(id: 7622, name: "Xtreme Skyflyer", isOpen: false, waitTime: 0, lastUpdated: "2023-11-06T23:11:06.000Z")])]
