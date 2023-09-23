import Foundation
import SwiftUI

struct PostModel {
    let userName: String
    let image: String
    let date: Date
    let message: String
    let color: Color
}

class postData: ObservableObject {
    // これをViewに送る
    @Published var data: [PostModel] = []
    
    // ここでデータを保持
    init() {
        data = [
            PostModel(userName: "イーロンマスク", image: "figure.walk", date: Date(), message: "ツイッターをXにしたよー\nXにしても使ってね！！！", color: .blue),
            PostModel(userName: "たいせい", image: "figure.jumprope", date: Date(), message: "今日はサウナにいったよ！\nやっぱサウナしか勝たんよね", color: .red),
            PostModel(userName: "りゅう", image: "figure.strengthtraining.traditional", date: Date(), message: "今日はプログラミングをしたよ！この歳になっても意外となんでもできるよね", color: .pink),
            PostModel(userName: "かんせい", image: "figure.indoor.cycle", date: Date(), message: "やっぱりTwitterに戻そうかね、、どっちの方が使ってもらえるかな、、", color: .black),
            PostModel(userName: "ツイッター", image: "figure.outdoor.cycle", date: Date(), message: "今日は子供のサッカーを見に来たよ！！！", color: .yellow),
            PostModel(userName: "ヤフー", image: "figure.lacrosse", date: Date(), message: "ツイッター買収したよ！！！！！！頑張る", color: .blue),
            PostModel(userName: "ユーザーネーム", image: "figure.open.water.swim", date: Date(), message: "ツイッターをXにしたよー", color: .orange),
            PostModel(userName: "あわわわわわ", image: "figure.track.and.field", date: Date(), message: "ツイッターをXにしたよー", color: .brown),
            PostModel(userName: "I'm Dragon", image: "figure.waterpolo", date: Date(), message: "ツイッターをXにしたよー", color: .green),
            PostModel(userName: "イーロンマスク", image: "figure.water.fitness", date: Date(), message: "ツイッターをXにしたよー", color: .purple),
            PostModel(userName: "イーロンマスク", image: "figure.volleyball", date: Date(), message: "ツイッターをXにしたよー", color: .yellow)
        ]
    }
}
