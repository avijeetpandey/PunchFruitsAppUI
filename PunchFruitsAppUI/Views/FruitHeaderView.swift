//
//  FruitHeaderVIEW.swift
//  PunchFruitsAppUI
//
//  Created by Avijeet Pandey on 30/10/22.
//

import SwiftUI

// MARK: - FruitHeaderView
struct FruitHeaderView: View {
    // MARK: - Properties
    var fruit: Fruit
    @State var isAnimating: Bool = false
    
    // MARK: - Body
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColor), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0,
                                     green: 0,
                                     blue: 0,
                                     opacity: 0.15),
                        radius: 8,
                        x: 6,
                        y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
            
        }.onAppear {
            withAnimation(.easeInOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(height: 440)
    }
}

// MARK: - Preview
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[4])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
