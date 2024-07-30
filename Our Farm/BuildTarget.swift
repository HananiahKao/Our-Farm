//
//  BuildTarget.swift
//  Our Farm
//
//  Created by Hananiah on 2024/7/30.
//
import SwiftUI

struct BuidingTarget: View {
    @State var show = false
    var Index : Int
    var body: some View {
        Image(systemName: "mappin")
            .foregroundStyle([Color.red,Color.orange,Color.yellow][Index])
            .onTapGesture {
                show = true
            }
            .popover(isPresented: $show,arrowEdge: .top, content: {
                ScrollView(.vertical, showsIndicators: true, content: {
                    DetailView(dataKey: Index)
                })
                .padding()
            })
    }
}

#Preview {
    BuidingTarget(Index: 0)
}
