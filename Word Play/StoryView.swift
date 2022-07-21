//
//  StoryView.swift
//  Word Play
//
//  Created by Ethan McHugh on 7/21/22.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        Text(WriteStory())
    }
    
    func WriteStory() -> String {
        return "Today, every student has a computer small enough to fit in his \(words.noun). " + "He can solve any math problem by simply pushing the computer's little \(words.pnoun2). " + "Computers can add, multiply, divide, and \(words.verb). " + "They can also \(words.verb2) better than a human. " + "Some computers are \(words.bodyPart). " + "Others have a/an \(words.adjective) screen that shows all kinds of \(words.pnoun3) and \(words.adjective2) figures."
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}
