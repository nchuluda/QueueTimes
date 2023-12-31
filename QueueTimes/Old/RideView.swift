////
////  RidesView.swift
////  QueueTimes
////
////  Created by Nathan on 10/16/23.
////
//
//import SwiftUI
//
//struct RidesView: View {
//    var parkId: Int
//    var parkName: String
////    @StateObject var ridesVM: RideViewModel
////    init(parkId: Int, parkName: String) {
////        self.parkId = parkId
////        self.parkName = parkName
////        _ridesVM = StateObject(wrappedValue: RideViewModel(parkId: parkId))
////    }
//    
////    @StateObject var rideStore: RideStore
////    init(parkId: Int, parkName: String) {
////        self.parkId = parkId
////        self.parkName = parkName
////        _rideStore = StateObject(wrappedValue: RideStore(parkId: parkId))
////    }
//    
//    var body: some View {
//        List() {
////            if !ridesVM.landsArray.isEmpty {
//                ForEach(ridesVM.alternateLandsArray) { land in
//                    Section(header: Text(land.name)) {
//                        ForEach(land.rides) { ride in
//                            formattedWaitTime(ride: ride)
////                        }
//                    }
//                }
//            }
////                ForEach(ridesVM.landsArray) { land in
//            ForEach(ridesVM.updatedLandsArray) { land in
//                    Section(header: Text(land.name)) {
//                        ForEach(land.rides) { ride in
//                            VStack {
//                                formattedWaitTime(ride: ride)
////                                HStack {
////                                    Text(ride.lastUpdatedAgo).font(.caption2)
////                                    Spacer()
////                                }
//                                
//                            }
//                        }
//                    }
//                }
////            if !ridesVM.ridesArray.isEmpty {
//                ForEach(ridesVM.ridesArray) { ride in
//                    formattedWaitTime(ride: ride)
////                }
//            }
//        }
//        .navigationTitle(parkName)
//        .task {
//            await ridesVM.getData()
//        }
//    }
//}
//
//func closed() -> some View {
//    Text("Closed")
//        .foregroundColor(.red)
//        .bold()
//}
//
//func open() -> some View {
//    Text("Open")
//        .foregroundColor(.green)
//        .bold()
//}
//
//func waitTime(ride: Ride, color: Color) -> some View {
//    Text("\(ride.waitTime) mins")
//        .foregroundColor(color)
//        .bold()
//}
//
//@ViewBuilder
//func formattedWaitTime(ride: Ride) -> some View {
//    VStack {
//        HStack {
//            //        Text("\(ride.id) \(ride.name)")
//            Text("\(ride.name)")
//            Spacer()
//            if !ride.isOpen {
//                closed()
//            } else if ride.waitTime == 0 {
//                open()
//            } else if ride.waitTime <= 20 {
//                waitTime(ride: ride, color: .green)
//            } else if ride.waitTime <= 45 {
//                waitTime(ride: ride, color: .yellow)
//            } else if ride.waitTime > 45 {
//                waitTime(ride: ride, color: .red)
//            }
//        }
//        HStack {
//            Text(ride.lastUpdatedAgo).font(.caption2)
//            Spacer()
//        }
//    }
//}
//
//
//
//
//
//
//
//struct RidesView_Previews: PreviewProvider {
//    static var previews: some View {
//        RidesView(parkId: 60, parkName: "Kings Island")
//    }
//}
