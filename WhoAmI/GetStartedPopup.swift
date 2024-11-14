//
//  GetStartedPopup.swift
//  WhoAmI
//
//  Created by Piyush Hole on 11/9/24.
//

import SwiftUI

struct GetStartedPopup: View {
    
    @Environment(\.dismiss) var dissmiss
    @EnvironmentObject var navigationState: NavigationState
    
    var body: some View {
        
        GeometryReader { geometry in
                
            ZStack {
                Rectangle()
                    .fill(Color.gray1)
                    
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
                            .onTapGesture {
                                dissmiss()
                            }
                    }
                    
                    VStack {
                        Text("Get Started")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .font(.largeTitle)
                            .frame(maxWidth: 350, alignment: .leading)
                        Text("Sign up with Phone or Email to start playing today")
                            .foregroundColor(Color.accentPurple)
                            .frame(maxWidth: 350, alignment: .leading)
                            .font(.subheadline)
                            .padding(.bottom)
                    }
                    
                    Button(action: {
                        dissmiss()
                        navigationState.phoneNavigate.toggle()
                    }) {
                        Text("Continue with Phone")
                            .frame(width: 350, height: 60)
                            .font(.title3)
                            .foregroundColor(Color.white)
                            .background(Color.gray2)
                            .cornerRadius(15)
                            
                    }
                    Button(action: {
                        dissmiss()
                        navigationState.emailNavigate.toggle()
                    }) {
                        Text("Continue with Email")
                            .frame(width: 350, height: 60)
                            .font(.title3)
                            .foregroundColor(Color.white)
                            .background(Color.gray2)
                            .cornerRadius(15)
                            
                    }
                    
                    Spacer()
                }
                .padding(25)
                
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    GetStartedPopup()
}
