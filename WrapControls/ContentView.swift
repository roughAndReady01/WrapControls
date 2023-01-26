//
//  ContentView.swift
//  WrapControls
//
//  Created by 春蔵 on 2023/01/26.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack(spacing:30) {
            // テキストフィールド
            WrapTextField(title:"テキストフィールド" , text: $viewModel.text , foreground:viewModel.foreground)
            // テキスト
            WrapText(text:"入力結果:" + viewModel.text, foreground:viewModel.foreground)
            // ボタン
            WrapButton(label:"色変更", foreground:viewModel.foreground) {
                viewModel.onButtonClick()
            }
        }
        .padding()
    }
}

class ContentViewModel:ObservableObject {
    @Published var text = ""
    @Published var foreground = Setting.foreground
    
    /// ボタン押下時
    func onButtonClick(){
        foreground = Color.red
    }
}
