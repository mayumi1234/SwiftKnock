//
//  Struct.swift
//  SwiftKnockApp
//
//  Created by m.yamanishi on 2020/10/11.
//

import Foundation
import UIKit

let cellId = "cellId"

extension UIColor {
    class func hex ( string : String, alpha : CGFloat) -> UIColor {
        let string_ = string.replacingOccurrences(of: "#", with: "")
        let scanner = Scanner(string: string_ as String)
        var color: UInt32 = 0
        if scanner.scanHexInt32(&color) {
            let r = CGFloat((color & 0xFF0000) >> 16) / 255.0
            let g = CGFloat((color & 0x00FF00) >> 8) / 255.0
            let b = CGFloat(color & 0x0000FF) / 255.0
            return UIColor(red:r,green:g,blue:b,alpha:alpha)
        } else {
            return UIColor.white;
        }
    }
}

class Struct: NSObject {
    
    enum First: String, CaseIterable {
        case for_in_1 = "繰り返し処理（for-in、while、repeat-while）"
        case defer_sentence = "defer文"
        case generics = "ジェネリクス（関数、クラス）"
    }
    
    enum repeatFomartCollection: String, CaseIterable {
        case for_in_1 = "for-in文"
        case for_in_2 = "while文"
    }
    
    enum deferFomartCollection: String, CaseIterable {
        case defer_1 = "単体のdefer文"
        case defer_2 = "複数のdefer文"
        case defer_3 = "注意点"
    }
    
    enum genericsFomartCollection: String, CaseIterable {
        case generics_1 = "ジェネリック関数"
        case generics_2 = "ジェネリッククラス"
    }
    
    enum genericsFuncCollection: String, CaseIterable {
        case generics_1 = "Int(ジェネリック関数)"
        case generics_2 = "Double(ジェネリック関数)"
        case generics_3 = "String(ジェネリック関数)"
        case generics_4 = "Boolean(ジェネリック関数)"
    }
    
    enum genericsClassCollection: String, CaseIterable {
        case generics_1 = "Int(ジェネリッククラス)"
        case generics_2 = "Double(ジェネリッククラス)"
        case generics_3 = "String(ジェネリッククラス)"
        case generics_4 = "Boolean(ジェネリッククラス)"
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
        case defer_1 = """
                        スコープを抜ける際に実行したい処理を定義する。
                        複数のdefer文を記述した場合は逆順で実行される。
                       """
        case defer_3 = """
                        あくまでdeferは処理をスコープが終わるまで待つというものであり、deferが待ち始める前にbreakやreturnなどでスコープを抜けてしまうと実行されない。
                       """
        case generics_1 = """
                            func 関数名<T>(引数名: 型) -> 戻り値の型 {
                              // 処理
                            }
                          """
        case generics_2 = """
                          class クラス名<T> {
                            // 処理
                          }
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
        case defer_1 = """
                        func deferTest() {

                        // ここに入る回答を選んでください

                            print("Hello, World.")
                        }
                        deferTest()

                        // 【結果】
                        // Hello, World.
                        // defer文実行
                       """
        case defer_2 = """
                        func deferTest() {

                            defer {
                                print("defer文実行_1")
                            }

                            defer {
                                print("defer文実行_2")
                            }

                            // ここに入る回答を選んでください。

                            print("Hello, World.")
                        }
                        deferTest()

                        // 【結果】
                        // Hello, World.
                        // defer文実行_3
                        // defer文実行_2
                        // defer文実行_1
                       """
        case defer_3 = """
                        func deferTest(param: String) {

                            if param == "blue" {
                                print("スコープを抜けます")
                                return
                            }
                            defer {
                                print("defer文実行")
                            }
                        }
                        deferTest(param: "blue")

                        // 【結果】
                        // ここに入る回答を選んでください。
                       """
        case generics_1 = """
                            func testGenerics<T> (param1: T, param2: T) -> (T, T) {
                                return (param1, param2)
                            }
                          """
        case generics_2 = """
                          class Test<T> {
                              var data: T

                              init(data: T) {
                                  self.data = data
                              }
                          }
                          """
    }
    
    enum genericsSourceCode: String {
        case generics_1 = """
                            // Int型
                            // ここに入る回答を下から選んでみよう。
                            // 型の確認
                            print(type(of: resultInt.data)) // 結果: Int
                            // 値の確認
                            print(resultInt.data) // 結果: 10
                           """
        case generics_2 = """
                            // Double型
                            // ここに入る回答を下から選んでみよう。
                            // 型の確認
                            print(type(of: resultDouble.data)) // 結果: Double
                            // 値の確認
                            print(resultDouble.data) // 結果: 1.0
                          """
        case generics_3 = """
                            // String型
                            // ここに入る回答を下から選んでみよう。
                            // 型の確認
                            print(type(of: resultString.data)) // 結果: String
                            // 値の確認
                            print(resultString.data) // 結果: Hello
                          """
        case generics_4 = """
                            // Boolean型
                            // ここに入る回答を下から選んでみよう。
                            // 型の確認
                            print(type(of: resultBoolean.data)) // 結果: Boolean
                            // 値の確認
                            print(resultBoolean.data) // 結果: true
                          """
    }
    
    enum deferAnswerText: String {
        case defer_1 = """
                        (A) defer { print("defer文実行") }
                        (B) print { print("defer文実行") }
                        (C) switch { print("defer文実行") }
                        """
        case defer_2 = """
                        (A) defer { print("defer文実行_1") }
                        (B) defer { print("defer文実行_3") }
                        (C) defer { print("defer文実行_2") }
                       """
        case defer_3 = """
                        (A) スコープを抜けます
                            defer文実行
                        (B) defer文実行
                            スコープを抜けます
                        (C) スコープを抜けます
                       """
    }
    
    enum genericsAnswerText: String {
        case genercs_1 = """
                         (A) let resultInt = testGenerics(param1: 1, param2: 2)
                         (B) let resultInt = testGenerics(param1: 1.0, param2: 2.0)
                         (C) let resultInt = testGenerics(param1: true, param2: false)
                         """
        case genercs_2 = """
                         (A) let resultDouble = testGenerics(param1: 1, param2: 2)
                         (B) let resultDouble = testGenerics(param1: 1.0, param2: 2.0)
                         (C) let resultDouble = testGenerics(param1: true, param2: false)
                         """
        case genercs_3 = """
                         (A) let resultString = testGenerics(param1: 1, param2: 2)
                         (B) let resultString = testGenerics(param1: 1.0, param2: 2.0)
                         (C) let resultString = testGenerics(param1: "1", param2: "2")
                         """
        case genercs_4 = """
                         (A) let resultBool = testGenerics(param1: true, param2: false)
                         (B) let resultBool = testGenerics(param1: 1.0, param2: 2.0)
                         (C) let resultBool = testGenerics(param1: "1", param2: "2")
                         """
        case genercs_5 = """
                         (A) let resultInt = Test(data: 10.0)
                         (B) let resultInt = Test(data: 10)
                         (C) let resultInt = Test(data: true)
                         """
        case genercs_6 = """
                         (A) let resultDouble = Test(data: 1)
                         (B) let resultDouble = Test(data: true)
                         (C) let resultDouble = Test(data: 1.0)
                         """
        case genercs_7 = """
                         (A) let resultString = Test(data: "Hello")
                         (B) let resultString = Test(data: true)
                         (C) let resultString = Test(data: 1.0)
                         """
        case genercs_8 = """
                         (A) let resultBoolean = Test(data: 10)
                         (B) let resultBoolean = Test(data: true)
                         (C) let resultBoolean = Test(data: 1.0)
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
        case A = "A"
        case B = "B"
        case C = "C"
    }
    
    enum correctOrNotcorrect: String {
        case correct = "正解！"
        case not_correct = "不正解！"
    }

}
