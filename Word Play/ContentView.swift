//
//  ContentView.swift
//  Word Play
//
//  Created by Alex Anderson on 10/11/22.
//

import SwiftUI
struct Words
{
    var Adjective1 = ""
    var Adjective2 = ""
    var Adjective3 = ""
    var Adverb = ""
    var Noun1 = ""
    var Noun2 = ""
    var Noun3 = ""
    var Noun4 = ""
    var Noun5 = ""
    var Noun6 = ""
}
struct CustomTextFeild: View{
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable).textFieldStyle(RoundedBorderTextFieldStyle()).autocapitalization(.none)
    }
    
}
struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        VStack {
            Text("Please Enter Words Below")
            HStack{
                CustomTextFeild(placeholder: "Adjective", variable: $words.Adjective1)
                CustomTextFeild(placeholder: "Adjective", variable: $words.Adjective2)
                CustomTextFeild(placeholder: "Adjective", variable: $words.Adjective3)
            }
            HStack
            {
                CustomTextFeild(placeholder: "Adverb", variable: $words.Adverb)
                CustomTextFeild(placeholder: "Noun", variable: $words.Noun1)
                CustomTextFeild(placeholder: "Noun", variable: $words.Noun2)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
