//
//  DetailView.swift
//  Our Farm
//
//  Created by Hananiah on 2024/7/30.
//

import SwiftUI


struct DetailView: View {
    @StateObject var data = placesObj()
    @State var dataKey = Int(0)
    @State var imageKey = Int(0)
    var body: some View {
        VStack {
            Text(data.places[dataKey].title)
                .padding()
                .foregroundColor(.black)
                .bold()
                .font(.largeTitle)
            HStack{
                Spacer()
                ZStack{
                    Rectangle()
                        .foregroundColor(.accentColor)
                        .frame(width: 60)
                        .cornerRadius(3.0)
                    Image(systemName: "arrowshape.backward")
                        .onTapGesture {
                            imageKey -= 1
                            if imageKey < 0 {
                                imageKey = data.places[dataKey].images.count - 1
                            }
                        }
                }
                Spacer(minLength: 10)
                Image(data.places[dataKey].images[imageKey])
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500, alignment: .center)
                Spacer(minLength: 50)
                ZStack{
                    Rectangle()
                        .foregroundColor(.accentColor)
                        .frame(width: 60)
                        .cornerRadius(3.0)
                    Image(systemName: "arrowshape.forward")
                        .onTapGesture {
                            imageKey += 1
                            if imageKey > data.places[dataKey].images.count {
                                imageKey = 0
                            }
                        }
                }
                Spacer()
            }
            Text("\(imageKey % data.places[dataKey].images.count + 1)/\(data.places[dataKey].images.count)")
                .padding([.leading , .trailing] , 4)
                .font(.custom("", size: 10))
                .foregroundColor(.white)
                .background(Rectangle().cornerRadius(9).foregroundColor(Color.gray))
                .font(.custom("", size: 10))
            ScrollView(.vertical, showsIndicators: true, content: {
                Text(data.places[dataKey].description)
                    .font(data.places[0].descriptionFont)
                    .padding(.all , 20)
                
                Text(data.places[dataKey].writerName)
                    .font(data.places[dataKey].writerNameFont)
                    .padding(.trailing , 10)
            })
        }
    }
}

    struct DetailView_Previews: PreviewProvider {
        static var previews: some View {
            DetailView()
                .padding(.all, 15)
        }
    }


