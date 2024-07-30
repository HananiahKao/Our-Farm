//
//  ContentView.swift
//  Our Farm
//
//  Created by Hananiah on 2024/7/30.
//

import SwiftUI

struct ContentView: View {
    @State var MapImage = "Map"
    var places = placesObj().places
    @State var show = false
    @State var maxScreenLenghth = max(UIScreen.main.bounds.height,UIScreen.main.bounds.width)
    var body: some View {
        ZoomableScrollView{
            ZStack{
                Image(MapImage)
                    .resizable()
                    .frame(width: maxScreenLenghth, height: maxScreenLenghth*(810/1080), alignment: .center)
                ForEach(places) { Place in
                    BuidingTarget(Index: Place.dataKey)
                        .offset(x: Place.x - (maxScreenLenghth/2), y: Place.y - maxScreenLenghth*(810/1080)/2)
                }
                    
            }
        }
    }
}
