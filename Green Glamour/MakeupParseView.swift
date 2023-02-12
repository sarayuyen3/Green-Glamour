//
//  MakeupParseView.swift
//  Green Glamour
//
//  Created by Sarayu Yenumula on 2/11/23.
//

import SwiftUI

struct MakeupParseView: View {
    var makeups = loadCSV(from: "sephora_product_catolog_abbreviated - Sheet1")
    var body: some View {
        print(makeups)
                return List(makeups){ makeup in
                    Text(makeup.original_brand)
        }
    }
}

struct MakeupParseView_Previews: PreviewProvider {
    static var previews: some View {
        MakeupParseView()
    }
}
