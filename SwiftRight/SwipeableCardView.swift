//
//  SwipeableCardView.swift
//  SwiftRight
//
//  Created by Nathan Lawrence on 4/17/20.
//  Copyright © 2020 Nathan Lawrence. All rights reserved.
//

import SwiftUI

struct SwipeableCardView: View {
    @State private var positionTranslationX : CGFloat = 0
    @State private var positionTranslationY : CGFloat = 0
    
    var body: some View {
        
        VStack {
            Rectangle()
                .foregroundColor(.secondary)
                .frame(maxWidth: .greatestFiniteMagnitude, maxHeight: .greatestFiniteMagnitude)
            HStack {
                VStack (alignment: .leading, spacing: 5) {
                    Text("A Gray Block")
                        .font(.title)
                        .bold()
                    Text("I wonder if you'll match with the gray block. The gray block has high standards, you know.")
                        .foregroundColor(.gray)
                }
                Spacer()
                Circle()
                    .foregroundColor(.secondary)
                    .frame(width: 80, height: 120)
                    .padding(.leading)
            }.padding(.horizontal)
            
        }
        .padding(.bottom)
        .background(Color(UIColor.systemBackground))
        .cornerRadius(16)
        .shadow(radius: 7)
        .rotationEffect(.degrees(
            Double(
                sqrt(pow(positionTranslationX,2) + pow(positionTranslationY, 2)) * 0.1 * positionTranslationX/(abs(positionTranslationX)+1))
            ))
        .offset(x: positionTranslationX, y: positionTranslationY)
        .animation(.spring())
        .gesture(DragGesture()
            .onChanged { gestureInformation in
                self.positionTranslationY = gestureInformation.translation.height
                self.positionTranslationX = gestureInformation.translation.width
            }.onEnded { gestureInformationEndpoint in
                self.positionTranslationY = 0
                self.positionTranslationX = 0
            })
        .padding()
        
    }
}

struct SwipeableCardView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeableCardView()
    }
}
