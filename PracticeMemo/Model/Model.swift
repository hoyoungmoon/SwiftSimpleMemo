//
//  Model.swift
//  PracticeMemo
//
//  Created by mac on 2023/04/11.
//

import Foundation

class Memo {
    var content: String
    var insertDate: Date

    init(content: String) {
        self.content = content
        insertDate = Date()
    }

    static var dummyMemoList = [
        Memo(content: "Lorem Ipsum1"),
        Memo(content: "Lorem Ipsum2"),
    ]
}
