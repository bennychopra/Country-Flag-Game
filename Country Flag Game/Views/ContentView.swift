//
//  ContentView.swift
//  Country Flag Game
//
//  Created by Benny Chopra on 1/8/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var gameManager = GameManager ()
    var body: some View {
        VStack {
            NavigationView {
                VStack(spacing: 40) {
                    VStack(spacing: 20) {
                        Text ("Country Flag Game")
                            .font(.title)
                            .fontWeight(.heavy)
                        Text ("Ready to test your skillz?")
                    }
                    NavigationLink {
                        QuestionView()
                            .environmentObject (gameManager)
                    } label: {
                        CustomButton(text: "Start")
                    }
                }
                .foregroundColor(.yellow)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.cyan)
            }
        }
    }
}
          
        #Preview {
            ContentView()
        }
