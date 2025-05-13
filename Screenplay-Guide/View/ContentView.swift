//
//  ContentView.swift
//  Screenplay-Guide
//
//  Created by Simona Anchova on 12.5.25.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("firstLaunch") var firstLaunch: Bool = true
        
        @State private var selectedLesson: Lesson? = nil
        @State private var lessons: [Lesson] = Lesson.allLessons
        @State private var screenplay: String = ""
        @State private var visibility: NavigationSplitViewVisibility = .all
        @State private var isShowingAbout = false
        @State private var showManual: Bool = false
        @State private var confettiTrigger: Int = 0
    
    var body: some View {
        
        NavigationSplitView(columnVisibility: $visibility) {
            List {
                // Introduction Section
                IntroductionView(selectedLesson: $selectedLesson)
            }
        } content: {
            Text("Content View")
        } detail: {
            Text("Detail View")
        }
    }
}

#Preview {
    ContentView().sheet(isPresented: .constant(true)) {
        OnboardingView()
    }
}
