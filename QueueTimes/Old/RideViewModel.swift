////
////  RideViewModel.swift
////  QueueTimes
////
////  Created by Nathan on 10/16/23.
////
//
//
//import Foundation
//
//@MainActor
//class RideViewModel: ObservableObject {
//    var parkId: Int
//    init(parkId: Int) {
//        self.parkId = parkId
//    }
//    
//    @Published var landsArray: [Land] = []
//    @Published var ridesArray: [Ride] = []
//    @Published var alternateLandsArray: [Land] = []
//    @Published var updatedLandsArray: [Land] = []
//    
//    var tempArray: [Land] = []
//    
//    func getData() async {
//        let decoder = JSONDecoder()
//        decoder.dateDecodingStrategy = .iso8601
//        print("We are accessing https://queue-times.com/parks/\(parkId)/queue_times.json")
//        
//        guard let url = URL(string: "https://queue-times.com/parks/\(parkId)/queue_times.json") else {
//            print("ERROR: Could not create a URL from https://queue-times.com/parks/\(parkId)/queue_times.json")
//            return
//        }
//        
//        do {
//            let (data, _) = try await URLSession.shared.data(from: url)
//            guard let top = try? decoder.decode(Top.self, from: data) else {
//                print("ERROR: Could not decode JSON data")
//                return
//            }
//            ridesArray = top.rides
//            landsArray = top.lands
//                    
//            updatedLandsArray = landsArray
//            addLandToRide(landsArray: landsArray)
//
//            reformatRides(parkId: parkId, landsArray: landsArray, ridesArray: ridesArray)
//            
//            print("JSON returned, ride and land arrays created")
//            print("ridesArray: \(ridesArray)")
//            print("updatedLandsArray: \(updatedLandsArray)")
//        } catch {
//            print("ERROR: Could not create a URL from the URL string")
//        }
//    }
//    
//    func reformatRides(parkId: Int, landsArray: [Land], ridesArray: [Ride]) {
//        switch parkId {
//            case 15:
//                hersheypark(landsArray: landsArray)
//            case 317:
//                energylandia(ridesArray: ridesArray)
//            default:
//                break
//        }
//    }
//    
//    func addLandToRide(landsArray: [Land]) {
//        for i in updatedLandsArray.indices {
//            for j in updatedLandsArray[i].rides.indices {
//                updatedLandsArray[i].rides[j].land = updatedLandsArray[i].name
//            }
//        }
//    }
//    
//    func energylandia(ridesArray: [Ride]) {
//        let energylandiaCoasters = [11281, 11268, 11273, 11274, 11275, 11979, 11242, 11270, 11246, 11256, 11266, 11259, 11276]
//        var tempRidesArray: [Ride] = []
//        for ride in ridesArray {
//            if energylandiaCoasters.contains(ride.id) {
//                tempRidesArray.append(ride)
//            }
//        }
//        tempRidesArray.sort { $0.name < $1.name }
//        self.alternateLandsArray = [Land(id: 1111, name: "Coasters", rides: tempRidesArray)]
//    }
//    
//    func hersheypark(landsArray: [Land]) {
//        let hersheyParkCoasters = [7977, 6459, 1991, 6442, 1993, 405, 6463, 1994, 6443, 2030, 6445, 6444, 351, 6564]
//        var tempRidesArray: [Ride] = []
//        for land in landsArray {
//            for ride in land.rides {
//                if hersheyParkCoasters.contains(ride.id) {
//                    tempRidesArray.append(ride)
//                }
//            }
//        }
//        tempRidesArray.sort { $0.name < $1.name }
//        self.alternateLandsArray = [Land(id: 1111, name: "Coasters", rides: tempRidesArray)]
//    }
//}
