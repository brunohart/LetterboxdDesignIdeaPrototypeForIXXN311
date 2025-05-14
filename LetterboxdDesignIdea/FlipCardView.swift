//
//  FlipCardView.swift
//  LetterboxdDesignIdea
//
//  Created by Brunohart on 14/05/2025.
//

import SwiftUICore
import SwiftUI

struct FlipCardView: View {
    @State private var flipped = false
    @Namespace private var animation

    var body: some View {
        ZStack {
            if flipped {
                InviteBackCardView()
            } else {
                InviteFrontCardView(flipAction: {
                    withAnimation(.easeInOut(duration: 0.6)) {
                        flipped.toggle()
                    }
                })
            }
        }
        .frame(width: 375, height: 750)
        .rotation3DEffect(
            .degrees(flipped ? 180 : 0),
            axis: (x: 0, y: 1, z: 0)
        )
        .animation(.easeInOut(duration: 0.6), value: flipped)
    }
}

struct InviteFrontCardView: View {
    var flipAction: () -> Void

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 24, style: .continuous)
                .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 245 / 255, green: 232 / 255, blue: 207 / 255), Color(red: 0.88, green: 0.78, blue: 0.68)]), startPoint: .top, endPoint: .bottom))
                .frame(width: 374, height: 744)
                .overlay(
                    RoundedRectangle(cornerRadius: 24)
                        .stroke(Color(red: 0.5, green: 0.3, blue: 0.2), lineWidth: 2)
                )

            
            VStack(spacing: 20) {
                Text("CINEPHILE CLUB")
                    .font(.custom("Georgia-Bold", size: 24))
                    .kerning(2)
                    .foregroundColor(Color(red: 0.4, green: 0.1, blue: 0.1))
                    .padding(.top, 40)

                Divider()
                    .frame(width: 250)
                    .background(Color.brown)

                Text("ADMIT ONE")
                    .font(.system(size: 36, weight: .black, design: .serif))
                    .rotationEffect(.degrees(-5))
                    .foregroundColor(Color(red: 0.4, green: 0.1, blue: 0.1))
                
                Image("FallenAngelsPoster")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 240, height: 400)
                    .clipped()
                
                Text("Flynn has invited you to a home screening")

                Spacer()

                Button("See Details") {
                    flipAction()
                }
                .font(.headline)
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                .background(Color(red: 0.4, green: 0.1, blue: 0.1))
                .foregroundColor(.white)
                .cornerRadius(8)
                .padding(.bottom, 50)
            }
        }
    }
}

struct InviteBackCardView: View {
    var body: some View {
        InvitesView()
            .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
    }
}

#Preview{
    FlipCardView()
}
