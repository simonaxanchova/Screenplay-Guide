//
//  LessonDetailView.swift
//  Screenplay-Guide
//
//  Created by Simona Anchova on 13.5.25.
//

import SwiftUI
import ConfettiSwiftUI


struct LessonDetailView: View {
    
    @Binding var lesson: Lesson
    @Binding var screenplay: String
    @State private var isValid: Bool = false
    @Binding var confettiTrigger: Int
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                //Explanation
                Text(lesson.explanation).font(.body)
                
                //Example
                Text(lesson.example)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .italic()
                
                //Text Editor for Input
                TextEditor(text: $lesson.userInput)
                    .autocorrectionDisabled()
                    .frame(height: 100)
                    .border(editorBorderColor)
                    .padding(.bottom)
                    .onChange(of: lesson.userInput) {
                        print("User input: " + lesson.userInput)
                    }
            }
        }
    }
    
    var editorBorderColor: Color {
        if isValid {
            return .green
        } else if lesson.userInput.isEmpty {
            return .gray
        } else {
            return .red
        }
    }
}
