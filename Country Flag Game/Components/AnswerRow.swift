//
//  AnswerRow.swift
//  Country Flag Game
//
//  Created by Benny Chopra on 1/9/25.
//

import SwiftUI

struct AnswerRow: View {
    @State private var isSelected = false
    @EnvironmentObject var gameManager: GameManager
    var answer: Answer
    var body: some View {
        HStack(spacing: 20) {
            Image (systemName: "circle.fill")
                .font(.caption)
            Text (answer.text)
            if isSelected {
                Spacer ()
                Image (systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundColor (answer.isCorrect ? .green : .red)
            }
        }
        .padding()
        .frame(width: 300, alignment: .leading)
        .background(.white)
        .foregroundColor(.black)
        .cornerRadius (10)
        .shadow(color: isSelected ? (answer.isCorrect ? .green : .red) : .gray, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture {
            if !gameManager.answerSelected {
                isSelected = true
                gameManager.selectAnswer(answer: answer)
            }
        }
    }
}
#Preview {
    AnswerRow(answer: Answer(text: "Test", isCorrect: true))
}
