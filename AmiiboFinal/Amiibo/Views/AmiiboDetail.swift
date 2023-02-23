//  Created by Hudson Aibel on 1/23/23.

import SwiftUI

struct AmiiboDetail: View {
    var amiiboDetail:AmiiboElement?
    var body: some View {
        if let amiiboDetail = amiiboDetail {
            VStack{
                Text(amiiboDetail.name)
                    .font(.title)
                Text("Game Series: " + amiiboDetail.gameSeries!)
                Divider()
                AsyncImage(url: URL(string: amiiboDetail.image)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    Text("loading...")
                }
                Spacer()
                
            }
        }
        else {
            Text("problem loading")
            
        }
    }
}

struct AmiiboDetail_Preview: PreviewProvider {
    static var previews: some View {
        AmiiboDetail()
    }
}
