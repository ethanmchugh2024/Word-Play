//
//  AboutView.swift
//  Word Play
//
//  Created by Ethan McHugh on 7/21/22.
//

import SwiftUI

struct AboutView: View {
    let phrase : String
    var body: some View {
        VStack {
            Text("Mad Libs (a play on ad lib, from Latin ad libitum - as you wish) is a word game where one player prompts another for a list of words to substitute for blanks in a story; these word substitutions have a humorous effect when the resulting story is then read aloud.")
                .padding()
        }
            
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView(phrase: "Howdy")
    }
}
