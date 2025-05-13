//
//  Lesson.swift
//  Screenplay-Guide
//
//  Created by Simona Anchova on 12.5.25.
//

import Foundation

struct Lesson: Identifiable, Hashable {
    
    let id = UUID()
    let title: String
    let icon: String
    let explanation: String
    let example: String
    let regex: String
    let isCompleted: Bool = false
    var userInput: String = ""
    var previousInput: String = ""
}
