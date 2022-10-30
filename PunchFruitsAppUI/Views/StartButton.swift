//
//  StartButton.swift
//  PunchFruitsAppUI
//
//  Created by Avijeet Pandey on 30/10/22.
//

import SwiftUI

// MARK: - StartButton
struct StartButton: View {
    // MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - Body
    var body: some View {
        Button {
           isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                
            }.padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background {
                    Capsule().strokeBorder(Color.white, lineWidth: 1.25)
                }
        }.accentColor(Color.white)

    }
}

// MARK: - Preview
struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
