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
                    }
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("おすすめ")
            .navigationSplitViewStyle(.balanced)
            .onAppear {
                dateFormatter.calendar = Calendar(identifier: .gregorian)
                dateFormatter.locale = Locale(identifier: "ja_JP")
                dateFormatter.timeZone = TimeZone(identifier: "Asia/Tokyo")
                dateFormatter.dateFormat = "yyyy年M月d日"
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
