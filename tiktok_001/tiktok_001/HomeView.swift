//
//  ContentView.swift
//  tiktok_001
//
//  Created by トム・クルーズ on 2023/09/23.
//

import SwiftUI

struct HomeView: View {
    // インスタンス生成
    @ObservedObject var postsViewModel = postData()
    let dateFormatter = DateFormatter()
    
    var body: some View {
        NavigationStack {
            List(postsViewModel.data, id: \.message) { data in
                HStack {
                    VStack {
                        // ここに画像
                        ZStack {
                            Circle()
                                .foregroundColor(data.color)
                            .frame(width: 50, height: 50)
                            
                            Image(systemName: data.image)
                                .resizable()
                                .frame(width: 30, height: 30)
                                .scaledToFit()
                                .foregroundColor(.white)
                        }
                        
                        VStack {
                            Text("ここに挿入")
                            
                            Circle()
                                .frame(width: .infinity)
                            
                            Rectangle()
                                .frame(width: 200, height: 200)
                            
                                .onTapGesture {
                                    // ここでタップ処理をする
                                    
                                }
                            
                            HStack {
                                Text("ここ")
                                Text("あ＾＾＾＾")
                            }
                        }
                        
                        Spacer()
                    }
                    
                    // ここに名前、日付、メッセージ
                    VStack(alignment: .leading) {
                        HStack {
                            Text(data.userName)
                            
                            Text(data.date.formatted())
                        }
                        
                        Text(data.message)
                            .padding(8)
                        
                        Text(data.message)
                            .font(.callout)
                        
                        Text("ここで挿入")
                        
                        // ここにメモをする
                        
                        VStack {
                            Text("メモ")
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("おすすめ")
            .navigationSplitViewStyle(.balanced)
            .onAppear {
                // 画面がレンダリングされた際に実効される
                /// メソッドを描きたくないけどここに書いてもいい
                func makeRandomMessage() {
                    var text = ""
                    var number = 0
                    
                    // データを取得
                    /// でもデータを取得
                    /// ここで木データとAPIを切り替える
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
