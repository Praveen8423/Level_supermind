//
//  ProfileScreenView.swift
//  Level_Supermind
//
//  Created by Praveen Sehgal on 01/03/2025.
//

import SwiftUI

struct ProfileScreenView: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    NameFirstLatterCircle1(name: "Sourav" , icon: "user", radius: 12).padding(.leading, 0)
                }
            }
        }
    }
}

#Preview {
    ProfileScreenView()
}

struct NameFirstLatterCircle1: View {
    var name: String
    let icon: String
    let radius: CGFloat
    var squareSide: CGFloat {
        2.0.squareRoot() * radius
    }
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.green)
                .cornerRadius(10)
                .frame(width: 44, height: 44)
            Text(name.uppercased())
                .font(.custom("SF-Pro-Text-Bold", size: 18))
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
        }
    }
}
