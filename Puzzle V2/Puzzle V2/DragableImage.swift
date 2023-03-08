//
//  DragableImage.swift
//  Puzzle V2
//
//  Created by Hudson Aibel on 3/7/23.
//

import SwiftUI


struct DragableImage: View {
    private let imageSize: CGFloat = 120
    @State private var offset = CGSize.zero
    var imageName: String
    var endLocation: CGPoint
    
    init(imageName: String, endLocation: CGPoint){
        self.offset = CGSize(
            width: Int.random(in:-120...120),
            height: Int.random(in:-120...120)
        )
        self.imageName = imageName
        self.endLocation = endLocation
    }
    
    
    var dragGesture: some Gesture{
        DragGesture()
            .onChanged{ value in
              
                var x = value.startLocation.x + value.translation.width - imageSize/2
                var y = value.startLocation.y + value.translation.height - imageSize/2
                
                if abs(x - endLocation.x) < 30 && abs(y - endLocation.y) < 30{                     x = endLocation.x
                    y = endLocation.y
                }
                offset = CGSize(
                    width:x,
                    height:y
                )
                
            }
    }
       var body: some View {
          Image(imageName)
               .resizable()
               .frame(width: imageSize, height: imageSize)
               .offset(offset)
               .gesture(dragGesture)
       }
   }


struct DragView_Previews: PreviewProvider {
    static var previews: some View {
        DragableImage(imageName: "00", endLocation: CGPointMake(0, 0))
    }
}
