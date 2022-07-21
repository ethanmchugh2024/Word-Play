//
//  ContentView.swift
//  Word Play
//
//  Created by Ethan McHugh on 7/21/22.
//

import SwiftUI

struct Words {
    var noun = ""
    var pnoun2 = ""
    var verb = ""
    var verb2 = ""
    var bodyPart = ""
    var adjective = ""
    var pnoun3  = ""
    var adjective2 = ""
    
}

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                
                Text("Please enter the requested words below")
                HStack {
                    CustomTextField(placeholder: "noun", variable: $words.noun)
                    CustomTextField(placeholder: "plural noun", variable: $words.pnoun2)
                    CustomTextField(placeholder: "verb", variable: $words.verb)
                }
                HStack{
                    CustomTextField(placeholder: "verb", variable: $words.verb2)
                    CustomTextField(placeholder: "body part", variable: $words.bodyPart)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective)
                }
                HStack{
                    CustomTextField(placeholder: "noun", variable: $words.pnoun3)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective2)
                }
                NavigationLink("What is Mad Libs?", destination: AboutView(phrase: "Hello"))
                    .padding()
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
                    .padding()
            }
        }
        .navigationTitle("Word Play")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}
