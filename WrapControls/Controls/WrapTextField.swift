//
//  WrapTextField.swift
//  WrapControls
//
//  Created by 春蔵 on 2023/01/26.
//

import SwiftUI

struct WrapTextField: View {
    /// タイトル
    var title:String = ""
    /// テキスト
    @Binding var text: String
    /// 前景色
    var foreground:Color = Setting.foreground
    /// 背景色
    var background:Color = Setting.background
    /// フォント
    var font:Font = Setting.font
    
    var body: some View {
        // 入力フィールド
        TextField(title, text: $text)
            .padding(5)
            .font(font)
            .foregroundColor(foreground)
            .background(background)
            .cornerRadius(5)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(foreground, lineWidth: 0.3))
            .contentShape(Rectangle())
    }
}
