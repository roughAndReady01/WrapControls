//
//  WrapButton.swift
//  WrapControls
//
//  Created by 春蔵 on 2023/01/26.
//

import SwiftUI

struct WrapButton: View {
    /// ボタン名
    var label:String = ""
    /// 前景色
    var foreground:Color = Setting.foreground
    /// 背景色
    var background:Color = Setting.background
    /// フォント
    var font:Font = Setting.font
    /// アクション
    var action:()->Void = {}
    
    var body: some View {
        Button(action: action, label: {
            Text(label)
                .font(font)
                .foregroundColor(foreground)
                .background(background)
                .padding(.vertical , 10)
                .padding(.horizontal , 20)
                .cornerRadius(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(foreground, lineWidth: 0.3))
        })
    }
}
