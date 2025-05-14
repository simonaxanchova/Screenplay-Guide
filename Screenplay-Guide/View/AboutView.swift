//
//  AboutView.swift
//  Screenplay-Guide
//
//  Created by Simona Anchova on 14.5.25.
//


import SwiftUI

struct AboutView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 20) {
            Image("appicon")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .cornerRadius(10.0)
                .shadow(radius: 10.0)
            
            Text("Screenplay Genie")
                .font(.title)
                .fontWeight(.semibold)
            
            Text("Version 1.0")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }.padding(.top, 30)
        
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Text("Dismiss").padding(5)
        }.buttonStyle(.bordered)
            .padding()
    }
}


#Preview {
    Text("")
        .sheet(isPresented: .constant(true)) {
            AboutView()
        }
}
