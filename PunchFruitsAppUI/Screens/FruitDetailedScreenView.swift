//
//  FruitDetailedScreenView.swift
//  PunchFruitsAppUI
//
//  Created by Avijeet Pandey on 30/10/22.
//

import SwiftUI

// MARK: - FruitDetailedScreenView
struct FruitDetailedScreenView: View {
    // MARK: - Properties
    
    let fruit: Fruit
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    VStack(alignment: .leading, spacing: 20) {
                        
                        FruitHeaderView(fruit: fruit)
                        
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColor[1])

                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        Text("Learn more about \(fruit.title.uppercased())")
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColor[1])
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                    }.padding(.horizontal, 20)
                        .frame(maxWidth: 640, alignment: .center)
                }
            }.navigationBarHidden(true)
                .edgesIgnoringSafeArea([.top])
        }
    }
}

// MARK: - Preview
struct FruitDetailedScreenView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailedScreenView(fruit: fruitsData[0])
    }
}
