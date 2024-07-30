//
//  Places.swift
//  Our Farm
//
//  Created by Hananiah on 2024/7/30.
//

import SwiftUI

class placesObj : ObservableObject {
    @Published var places = [
        place(
            title: "小木屋",
            images: ["小木屋1","小木屋2"],
            description: "小木屋是我們每天生活、工作的地方。早上，負責準備午餐的同學們會在廚房裡忙進忙出；在我們上課時，老師會在小木屋裡處理事務；下午我們要回家時，我們會把鑰匙放到小木屋，為著明天的再來做準備。",
            descriptionFont: .custom("Kaiti SC", fixedSize: 50),
            writerName: "hananiah",
            writerNameFont: Font.custom("snell RoundHand", size: 25),
            x: 680.2,
            y: 365.8,
            height:9,
            width: 157,
            rotationAngle: Angle(degrees: 37.6),
            patternImage: "X",
            dataKey: 0),
        
        place(
            title: "鐵皮屋",
            images: ["鐵皮屋1","鐵皮屋2"],
            description: "鐵皮屋是上課用的空間之一，我們在裡面開班會、寫作文等等。在每一次學校舉辦的大型活動前，大家也會聚集在這裡，發表自己的意見，一起討論要如何進行活動。",
            descriptionFont: .body,
            writerName: "hananiah",
            writerNameFont: .headline,
            x: 324.6,
            y: 656.5,
            height: 98,
            width:180,
            rotationAngle: Angle(degrees: 0),
            patternImage: "place holder",
            dataKey: 1),
        place(title: "第一草皮",
              images: ["第一草皮"],
              description: "第一草皮是很多人對農場的第一印象。雖然平時滿地是落葉，但是只要有人要來，或是要在農場舉辦活動，第一草皮都會被打掃得煥然一新。夏天，同學們最喜歡到第一草皮的樹蔭下吃午餐，涼風吹拂，真是無比享受。",
              descriptionFont: .body,
              writerName: "Hananiah",
              writerNameFont: .custom("Melon", size: 30),
              x: 286.4,
              y: 383.9,
              height: 100, width: 100,
              rotationAngle: Angle(degrees: 3),
              patternImage: "",
              dataKey: 2
             )
    ]
    
}
struct place : Identifiable {
    var title : String
    var images : [String]
    var description : String
    var descriptionFont : Font
    var writerName : String
    var writerNameFont : Font
    var x : CGFloat
    var y : CGFloat
    var height : CGFloat
    var width : CGFloat
    var rotationAngle : Angle
    var patternImage : String
    var dataKey : Int
    var showInfoPopOver = false
    
    
    var id = UUID()
}


