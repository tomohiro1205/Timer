//
//  SettingView.swift
//  Timer
//
//  Created by 木村朋広 on 2024/02/11.
//

import SwiftUI

struct SettingView: View {
    // 秒数設定
    @State var timerValue = 10
    var body: some View {
// 奥から手前方向にレイアウト
        ZStack {
            // 背景色表示
            Color.backgroundSetting
            // セーフエリアを超えて画面全体に配置します
                .ignoresSafeArea()

            // 垂直にレイアウト(縦方向にレイアウト)
            VStack {
                // スペースを空ける
                Spacer()
                // テキストを表示する
                Text("\(timerValue)秒")
                // 文字のサイズを指定
                    .font(.largeTitle)
                // スペースを空ける
                Spacer()
                // Pickerを表示
                Picker(selection: $timerValue) {
                    Text("10")
                        .tag(10)
                    Text("20")
                        .tag(20)
                    Text("30")
                        .tag(30)
                    Text("40")
                        .tag(40)
                    Text("50")
                        .tag(50)
                    Text("60")
                        .tag(60)
                } label: {
                    Text("選択")
                }
                // Pickeerをホイール表示
                .pickerStyle(.wheel)
                // スペースを空ける
                Spacer()
            } // VStack ここまで
        } //ZStack ここまで
    }
}

#Preview {
    SettingView()
}
