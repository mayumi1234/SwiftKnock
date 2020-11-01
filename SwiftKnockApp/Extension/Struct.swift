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
    
    enum First: String, CaseIterable {
        case for_in_1 = "繰り返し処理（for-in、while、repeat-while）"
    }
    
    enum repeatFomartCollection: String, CaseIterable {
        case for_in_1 = "for-in文"
        case for_in_2 = "while文"
    }
    
    enum forCollection_1: String, CaseIterable {
        case for_in_1 = "for-in レンジ（終了値を含まない）"
        case for_in_2 = "for-in レンジ（終了値を含む）"
        case for_in_3 = "for-in コレクション"
        case for_in_4 = "for-in stride"
    }
    
    enum whileCollection: String, CaseIterable {
        case while_1 = "while"
        case while_2 = "while_repeat"
    }
    
    enum forCollection_2: String, CaseIterable {
        case for_in_3 = "コレクションから値を取り出す"
        case for_in_4 = "全ての要素を取り出す"
        case for_in_5 = "全ての要素を取り出す（キーと値をタプルに代入する）"
        case for_in_6 = "全てのキーを取り出す"
        case for_in_7 = "全ての値を取り出す"
    }
    
    enum Format: String {
        case for_in_1 = """
                        for 変数 in 開始値 ..< 終了値 {
                            // ステートメント
                        }
                        """
        case for_in_2 = """
                        for 変数 in 開始値 ... 終了値 {
                            // ステートメント
                        }
                        """
        case for_in_3 = """
                        for 変数 in コレクション {
                            // ステートメント
                        }
                        """
        case for_in_4 = """
                        for 変数 in stride(from: 開始値, to: 終了値, by: 間隔) {
                          // ステートメント
                        }
                        """
        case while_1 = """
                        while (ループ条件) {
                          // ステートメント
                        }
                        """
        case while_2 = """
                        repeat {
                          // ステートメント
                        } while (ループ条件)
                        """
    }

    enum QestionTitle: String {
        case for_in_1 = "1から9の値を取り出す"
        case for_in_2 = "1から10の値を取り出す"
        case for_in_3 = "コレクションから値を取り出す"
        case for_in_8 = "10から50まで3つずつ増える値を取り出す"
        case while_1 = "カウントが5を超えるまで繰り返す"
        case while_2 = "カウントが1を超えるまで繰り返す"
    }
    
    enum for_statement: String, CaseIterable {
        case for_in_4 = "// 全ての要素を取り出す"
        case for_in_5 = "// 全ての要素を取り出す（キーと値をタプルに代入する）"
        case for_in_6 = "// 全てのキーを取り出す"
        case for_in_7 = "// 全ての値を取り出す"
    }
    
    enum ArrayState: String {
        case for_in_3 = """
                        // 配列
                        let arrayData = [3, 5, 8, 10]
                        """
        case for_in_4 = """
                        // 辞書
                        let dictionaryData = [\"data1\":10, \"data2\":20, \"data3\":30, \"data4\":40]
                        """
        case while_1 = """
                        var count = 0
                        var total = 0
                        """
        case while_2 = """
                        var count = 1
                       """
    }

    enum Answer: String {
        case for_in_1 = """
                        {
                        print(\"i: \\(i)\")
                        }
                        // 【結果】
                        // i: 1
                        // i: 2
                        // i: 3
                        // i: 4
                        // i: 5
                        // i: 6
                        // i: 7
                        // i: 8
                        // i: 9
                        """
        case for_in_2 = """
                        {
                        print(\"i: \\(i)\")
                        }
                        // 【結果】
                        // i: 1
                        // i: 2
                        // i: 3
                        // i: 4
                        // i: 5
                        // i: 6
                        // i: 7
                        // i: 8
                        // i: 9
                        // i: 10
                        """
        case for_in_3 = """
                        {
                        print(\"data: \\(data)\")
                        }
                        // 【結果】
                        // data: 3
                        // data: 5
                        // data: 8
                        // data: 10
                        """
        case for_in_4 = """
                        {
                        print(\"data: \\(data)\")
                        }
                        // 【結果】
                        // data: (key: \"data4\", value: 40)
                        // data: (key: \"data3\", value: 30)
                        // data: (key: \"data2\", value: 20)
                        // data: (key: \"data1\", value: 10)
                        """
        case for_in_5 = """
                        {
                            print("key: \"(key) value: \"(data)")
                        }
                        // 【結果】
                        // key: data4 value: 40
                        // key: data3 value: 30
                        // key: data2 value: 20
                        // key: data1 value: 10
                        """
        case for_in_6 = """
                        {
                            print("key: \"(key)")
                        }
                        // 【結果】
                        // key: data4
                        // key: data3
                        // key: data2
                        // key: data1
                        """
        case for_in_7 = """
                        {
                            print("value: \"(value)")
                        }
                        // 【結果】
                        // value: 40
                        // value: 30
                        // value: 20
                        // value: 10
                        """
        case for_in_8 = """
                        {
                            print("num: \"(num)")
                        }
                        // 【結果】
                        // num: 10
                        // num: 13
                        // num: 16
                        // num: 19
                        // num: 22
                        // num: 25
                        // num: 28
                        // num: 31
                        // num: 34
                        // num: 37
                        // num: 40
                        // num: 43
                        // num: 46
                        // num: 49
                        """
        case while_1 = """
                        {
                            count += 1
                            total += count
                        }
                        print("count: \"(count) total: \"(total)")
                        // 【結果】
                        // count: 5 total: 15
                        """
        case while_2 = """
                        {
                            print("処理実行") // repeat-while文のため、この処理は最低1回実行される
                            count += 1
                        } while(count < 1)
                        """
    }

    enum AnswerText: String {
        case for_in_1 = "for i in 1..<10"
        case for_in_2 = "for i in 1...10"
        case for_in_3 = "for data in arrayData"
        case for_in_4 = "for data in dictionaryData"
        case for_in_5 = "for (key, data) in dictionaryData"
        case for_in_6 = "for key in dictionaryData.keys"
        case for_in_7 = "for value in dictionaryData.values"
        case for_in_8 = "for num in stride(from: 10, to: 50, by: 3)"
        case while_1 = "while count < 5"
        case while_2 = "repeat"
    }

}
