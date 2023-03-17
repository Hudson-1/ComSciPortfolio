//  Created by Hudson Aibel on 1/23/23.

import SwiftUI

struct AmiiboDetail: View {
    var amiiboDetail:AmiiboElement?
    var body: some View {
        if let amiiboDetail = amiiboDetail {
            VStack{
                VStack{
                    HStack{
                        Text(amiiboDetail.name)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title)
                        Image(systemName: "person")
                    }
                    Divider()
                    Spacer()
                    HStack{
                        Text("Game Series: " + amiiboDetail.gameSeries!)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Image(systemName: "gamecontroller")
                    }
                    Divider()
                }
                .padding()
                AsyncImage(url: URL(string: amiiboDetail.image)){image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                }placeholder: {
                    ProgressView()
                }
                        .frame(width:500,height:500)
                
                Divider()
                HStack{
                    Text("Type of Amiibo: " + amiiboDetail.type)
                    Image(systemName: "person.text.rectangle")
                }
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
