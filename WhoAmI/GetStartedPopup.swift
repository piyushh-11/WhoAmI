//
//  GetStartedPopup.swift
//  WhoAmI
//
//  Created by Piyush Hole on 11/9/24.
//

import SwiftUI

struct GetStartedPopup: View {
    var body: some View {
        
        GeometryReader { geometry in
            
            Rectangle()
                .fill(Color.gray1)
                .cornerRadius(35)
                .frame(height: 500)
            
            VStack {
                
                HStack {
                    
                    Text("?")
                        .foregroundColor(.accentPurple)
                        .font(.system(size: 60))
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(Color.gray)
                        .font(.system(size: 24))
                        .padding(.top, -20.0)
                }
                .padding(.bottom)
                
                
                Text("Get Started")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .font(.title)
                    .frame(maxWidth: 350, alignment: .leading)
                Text("Sign up with Phone or Email to start playing today")
                    .foregroundColor(Color.accentPurple)
                    .frame(maxWidth: 350, alignment: .leading)
                    .font(.subheadline)
                    .padding(.bottom)
                
                
                
                Text("Continue with Phone")
                    .foregroundColor(Color.white)
                    .frame(width: 350, height: 75)
                    .background(Color.gray2)
                    .cornerRadius(25)
                    .font(.title3)
                Text("Continue with Email")
                    .foregroundColor(Color.white)
                    .frame(width: 350, height: 75)
                    .background(Color.gray2)
                    .cornerRadius(25)
                    .font(.title3)
                                        
            }
            .padding(25)
            
        }
            
    }
}

#Preview {
    GetStartedPopup()
}
