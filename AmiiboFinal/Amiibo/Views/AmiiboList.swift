//
//  VideoGameDealList.swift
//  F1 Finder
//
//  Created by Hudson Aibel on 1/23/23.
//

import SwiftUI

struct AmiiboList : View {
    @State var amiiboDetail:Amiibo?
    @State private var searchText = ""
    
    var body: some View {
        if let amiiboDetail = amiiboDetail {
            NavigationView {
                var amiiboSet = Set(amiiboDetail.amiibo.map { $0.name })
                
                List(amiiboDetail.amiibo.filter({ amiibo in
                    let isMatchingSearchText = searchText.isEmpty ? true : amiibo.name.lowercased().contains(searchText.lowercased())
                    let isUniqueName = amiiboSet.contains(amiibo.name)
                    if isUniqueName {
                        amiiboSet.remove(amiibo.name)
                    }
                    
                    return isMatchingSearchText && isUniqueName
                }), id: \.name) { amiibo in
                    NavigationLink {
                        AmiiboDetail(amiiboDetail: amiibo)
                    } label: {
                        Text(amiibo.name)
                    }
                }
                .navigationTitle("Amiibo")
                .searchable(text: $searchText)
            }
        } else {
            VStack{
                Image(systemName: "magnifyingglass")
                Text("Loading...")
                    .onAppear(perform: {
                        loadAmiibo { (amiibo) in
                            self.amiiboDetail = amiibo
                        }
                    })
            }
        }
    }
}
struct VideoGameDealList_Previews: PreviewProvider {
    static var previews: some View {
        AmiiboList()
    }
}
