//
//  WrapText.swift
//  WrapControls
//
//  Created by 春蔵 on 2023/01/26.
//

import SwiftUI

struct WrapText: View {
    /// 文字列
    var text:String
    /// 前景色
    var foreground:Color = Setting.foreground
    /// 背景色
    var background:Color = Setting.background
    /// フォント
    var font:Font = Setting.font
    /// 倍率
    var scaleFactor:Double = 1
    /// 行数
    var lineLimit = 1

    var body: some View {
        Text(text)
            .font(font)
            .foregroundColor(foreground)
            .background(background)
            .minimumScaleFactor(scaleFactor)
            .lineLimit(lineLimit)
    }
}
