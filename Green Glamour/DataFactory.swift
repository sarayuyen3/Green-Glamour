//
//  DataFactory.swift
//  Green Glamour
//
//  Created by Sarayu Yenumula on 2/11/23.
//

import Foundation

struct Makeup: Identifiable {
    var original_brand: String = ""
    var original_highlights: String = ""
    var original_callout: String = ""
    var dupe_brand: String = ""
    var dupe_highlights: String = ""
    var dupe_callout: String = ""
    var id = UUID()
    
    
    init(raw: [String]){
        original_brand = raw[0]
        original_highlights = raw[5]
        original_callout = raw[7]
        dupe_brand = raw[8]
        dupe_highlights = raw[12]
        dupe_callout = raw[14]
        
    }
}

func loadCSV(from csvName: String) -> [Makeup]{
    var csvToStruct = [Makeup]()
    
    guard let filePath = Bundle.main.path(forResource: csvName, ofType: "csv") else{
        return[]
    }
    var data = ""
    do{
        data = try String(contentsOfFile: filePath)
    } catch {
        print(error)
        return []
    }
    var rows = data.components(separatedBy: "\n")
    let columnCount = rows.first?.components(separatedBy: ",").count
    rows.removeFirst()
    
    for row in rows {
        let csvColumns = row.components(separatedBy: ",")
        if csvColumns.count == columnCount{
            let makeupStruct = Makeup.init(raw: csvColumns)
            csvToStruct.append(makeupStruct)
        }
        
    }
    
    return csvToStruct
}
