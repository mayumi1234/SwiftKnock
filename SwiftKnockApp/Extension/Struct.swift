//
//  Struct.swift
//  SwiftKnockApp
//
//  Created by m.yamanishi on 2020/10/11.
//

import Foundation
import UIKit

let cellId = "cellId"

class Struct: NSObject {
    
    // FirstTableViewController
    enum First: String, CaseIterable {
        case for_in_1 = "繰り返し処理（for-in、while、repeat-while）"
    }
    
    // SecondTableViewController
    enum Second: String, CaseIterable {
        case for_in_1 = "for-in文"
    }
    
    // ThirdTableViewController
    enum Third: String, CaseIterable {
        case for_in_1 = "for-in レンジ（終了値を含まない）"
        case for_in_2 = "for-in レンジ（終了値を含む）"
        case for_in_3 = "for-in コレクション"
    }
    
    enum Format: String {
        case for_in_1 = """
                        for 変数 in 開始値 ..< 終了値 {
                            // ステートメント
                        }
                        """
        case for_in_2 = "for 変数 in 開始値 ... 終了値 {\n// ステートメント\n}"
        case for_in_3 = "for 変数 in コレクション {\n// ステートメント\n}"
    }

    enum QestionTitle: String {
        case for_in_1 = "1から9の値を取り出す"
        case for_in_2 = "1から10の値を取り出す"
        case for_in_3 = "コレクションから値を取り出す"
        case for_in_4 = "コレクションから値を取り出す2"
    }
    
    enum QestionTitle2: String {
        case for_in_4 = "全ての要素を取り出す"
    }
    
    enum ArrayState: String {
        case for_in_3 = "let arrayData = [3, 5, 8, 10]"
        case for_in_4 = "let dictionaryData = [\"data1\":10, \"data2\":20, \"data3\":30, \"data4\":40]"
    }

    enum Answer: String {
        case for_in_1 = "{\nprint(\"i: \\(i)\")\n}\n// 【結果】\n// i: 1\n// i: 2\n// i: 3\n// i: 4\n// i: 5\n// i: 6\n// i: 7\n// i: 8\n// i: 9"
        case for_in_2 = "{\nprint(\"i: \\(i)\")\n}\n// 【結果】\n// i: 1\n// i: 2\n// i: 3\n// i: 4\n// i: 5\n// i: 6\n// i: 7\n// i: 8\n// i: 9\n// i: 10"
        case for_in_3 = "{\nprint(\"data: \\(data)\")\n}\n// 【結果】\n// data: 3\n// data: 5\n// data: 8\n// data: 10"
        case for_in_4 = "{\nprint(\"data: \\(data)\")\n}\n// 【結果】\n// data: (key: \"data4\", value: 40)\n// data: (key: \"data3\", value: 30)\n// data: (key: \"data2\", value: 20)\n// data: (key: \"data1\", value: 10)"
    }

    enum AnswerText: String {
        case for_in_1 = "for i in 1..<10"
        case for_in_2 = "for i in 1...10"
        case for_in_3 = "for data in arrayData"
        case for_in_4 = "for data in dictionaryData"
    }

}
