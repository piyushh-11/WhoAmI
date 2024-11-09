//
//  LandingPage.swift
//  WhoAmI
//
//  Created by Piyush Hole on 11/8/24.
//

import SwiftUI

struct LandingPage: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(.black)
                    .ignoresSafeArea()
                
                Circle()
                    .frame(width: 250, height: 250)
                    .foregroundColor(.accentPurple)
                    .blur(radius: 100)
                    .opacity(0.3)
                
                VStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    (
                        Text("WhoAmI")
                            .foregroundColor(.white)
                        + Text("?")
                            .foregroundColor(.accentPurple)
                    )
                    .font(.system(size: 45))
                    .fontWeight(.bold)
                    
                    
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Text("Get Started")
                        .frame(width: 300, height: 50)
                        .font(.headline)
                        .foregroundColor(.white)
                        .background(Color.gray1)
                        .cornerRadius(25)
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    LandingPage()
}
