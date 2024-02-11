//
//  ContentView.swift
//  Timer
//
//  Created by 木村朋広 on 2024/02/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            // 奥から手前方向にレイアウト
            ZStack {

            } //ZStack
            // ナビゲーションにボタンを追加
            .toolbar{
                // ナビゲーションバーの右にボタンを追加
                ToolbarItem(placement: .topBarTrailing) {
                    //ナビゲーション遷移
                    NavigationLink {
                        SettingView()
                    } label: {
                        //テキストを表示
                        Text("秒数設定")
                    }// NavigationLink
                } // toolbarItem
            } // .toolbar
        } //NavigationStack

    } // body
} //ContentView

#Preview {
    ContentView()
}
