//
//  OnboardingScreenView.swift
//  PunchFruitsAppUI
//
//  Created by Avijeet Pandey on 30/10/22.
//

import SwiftUI


// MARK: - OnboardingScreenView
struct OnboardingScreenView: View {
    // MARK: - Properties
    var fruits: [Fruit] = fruitsData
    
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView(fruit: fruitsData[item])
            }
        }.tabViewStyle(PageTabViewStyle())
            .padding(.vertical, 20)
    }
}

// MARK: - Preview
struct OnboardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreenView()
    }
}
