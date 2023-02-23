//
//  VideoGameDealList.swift
//  F1 Finder
//
//  Created by Hudson Aibel on 1/23/23.
//

import SwiftUI

struct AmiiboList : View {
    @State var amiiboDetail:Amiibo?
    var body: some View {
        if let amiiboDetail = amiiboDetail {
            NavigationView{
                List(amiiboDetail.amiibo, id: \.name) { amiibo in
                    NavigationLink {
                        AmiiboDetail(amiiboDetail: amiibo)
                    } label: {
                        Text(amiibo.name)
                    }
                    
                    
                    
                }
                .navigationTitle("Amiibo")
                
                
                
                
            }
        } else {
            VStack{
                Image(systemName: "magnifyingglass")}
                Text("Loading...")
                .onAppear(perform: {
                    loadAmiibo { (amiibo) in
                        self.amiiboDetail = amiibo
                    }
                })
        }
    }
}
struct VideoGameDealList_Previews: PreviewProvider {
    static var previews: some View {
        AmiiboList()
    }
}
