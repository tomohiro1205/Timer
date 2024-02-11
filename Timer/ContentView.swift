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
                // 画像背景
                Image(.backgroundTimer)
                // リサイズする
                    .resizable()
                // セーフエリアを超えて画面全体に配慮する
                    .ignoresSafeArea()
                //　アスペクト比(縦横比)を維持して短辺基準に収まるようにする
                    .scaledToFill()
                // 垂直にレイアウト　(縦方向にレイアウト)
                // view(部品)間の感覚を30にする
                VStack(spacing: 30.0) {
                    // テキストを表示する
                    Text("残り10秒")
                    // 文字のサイズを指定
                        .font(.largeTitle)
                    // 水平にレイアウト(横方向にレイアウト)
                    HStack {
                        // スタートボタン
                        Button {
                            // ボタンをタップしたときのアクション
                        } label: {
                            // テキストを表示する
                            Text("スタート")
                            //文字のサイズを指定
                                .font(.title)
                            // 文字色を白に指定
                                .foregroundStyle(Color.white)
                            // 幅と高さを140に指定
                                .frame(width: 140, height: 140)
                            // 背景を設定
                                .background(Color.start)
                            // 円形に切り抜く
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        } // スタートボタンはここまで
                    // ストップボタン
                        Button {
                            // ボタンをタップしたときのアクション
                        } label: {
                            // テキストを表示する
                            Text("ストップ")
                            //文字のサイズを指定
                                .font(.title)
                            // 文字色を白に指定
                                .foregroundStyle(Color.white)
                            // 幅と高さを140に指定
                                .frame(width: 140, height: 140)
                            // 背景を設定
                                .background(Color.stop)
                            // 円形に切り抜く
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        } // ストップボタンはここまで
                    } //HStack
                } //VStack ここまで
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
