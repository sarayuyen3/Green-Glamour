//
//  MakeupParseView.swift
//  Green Glamour
//
//  Created by Sarayu Yenumula on 2/11/23.
//

import SwiftUI


struct MakeupParseView: View {
    @State var orgs = ""
    var body: some View {
        ZStack{
            Color(red: 0, green: 0, blue: 0)
                .ignoresSafeArea()
            VStack{
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color.white)
                    .frame(width: 370, height: 50)
                    .overlay(
                        HStack{
                            Image(systemName: "magnifyingglass")
                            Text("hello"))
                    
                }
                                
                        }
        }
    }
    struct inclusivity_Previews: PreviewProvider {
        static var previews: some View {
            MakeupParseView()
        }
    }
                        }




