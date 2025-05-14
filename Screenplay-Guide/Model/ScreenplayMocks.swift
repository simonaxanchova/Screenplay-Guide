//
//  ScreenplayMocks.swift
//  Screenplay-Guide
//
//  Created by Simona Anchova on 14.5.25.
//

enum ScreenplayMocks: String {
    case onlyHeading = "INT. COFFEE SHOP - MORNING"
    case onlyActionLine = "The door opens"
    case onlyCharacter = "JOHN"
    case onlyDialogue = "Hello"
    case onlyTransition = "FADE OUT"
    case fullScreenplay = """
        INT. HALLWAY - NIGHT
        
        Sanborn and Steel walk down the hallway.
        
        SANBORN
        A goold 'ole boy. You know, loves the Army, blood runs green. Country boy. Seems solid.
        
        Steel nods, taking it in.
        
        STEEL
        Wow!
        (starting the engine)
        So much for retirement!
        
        CUT TO:
        """
}
