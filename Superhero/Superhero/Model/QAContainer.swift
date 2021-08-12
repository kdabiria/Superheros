//
//  QAContainer.swift
//  Superhero
//
//  Created by Kamyar Dabiri on 8/10/21.
//

import Foundation


class QAContainer: ObservableObject{
    
    var QAholder: [String: [String: String]]
    
    init(QAholder: [String: [String: String]]) {
        self.QAholder = QAholder
    }
    
    func getQAholder(key: String) -> Dictionary<String,String>  {
        return QAholder[key]!
    }
    
    func setQAholder(newDict: [String: [String: String]]) {
        self.QAholder = newDict
    }
}
