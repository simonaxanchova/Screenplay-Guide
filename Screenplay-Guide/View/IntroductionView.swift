//
//  IntroductionView.swift
//  Screenplay-Guide
//
//  Created by Simona Anchova on 12.5.25.
//

import SwiftUI

struct IntroductionView: View {
    
    @Binding var selectedLesson: Lesson?
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                //What is a Screenplay Section
                Text("What is a Screenplay?")
            }
        }
    }
}
