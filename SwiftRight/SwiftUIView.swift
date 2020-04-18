//
//  SwiftUIView.swift
//  SwiftRight
//
//  Created by Nathan Lawrence on 4/17/20.
//  Copyright © 2020 Nathan Lawrence. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack{
            Spacer()
                .frame(minHeight: 210)
            HStack {
                VStack {
                    Text("ORB")
                        .font(.system(size: 48))
                        .bold()
                        .foregroundColor(.orange)
                    .lineSpacing(0)
                        .rotationEffect(.degrees(270)).padding(.vertical)
                        .frame(minWidth: .leastNonzeroMagnitude)
                }.padding(.vertical)
                .background(Color(red: 0.82, green: 0.08, blue: 0.007))
                
                VStack {
                    HStack {
                        Spacer()
                        Text("Team Nighthawk")
                        .font(.system(size: 34))
                        .bold()
                        .scaledToFill()
                    }
                    HStack {
                        Spacer()
                        Text("A SOFTWARE COMPANY")
                        .bold()
                    }
                }
                .foregroundColor(.white)
            }.background(Color(red: 0.094, green: 0.26, blue: 0.39))

            Spacer()
                .frame(minHeight: 400)
        }.background(Color.orange).edgesIgnoringSafeArea(.all)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
