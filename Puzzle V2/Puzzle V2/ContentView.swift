//
//  ContentView.swift
//  Puzzle V2
//
//  Created by Hudson Aibel on 3/7/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        
        ZStack{
            DragableImage(imageName: "00", endLocation: CGPointMake(-120, -120))
            DragableImage(imageName: "01", endLocation: CGPointMake(-120, 0))
            DragableImage(imageName: "02", endLocation: CGPointMake(-120, 120))
            DragableImage(imageName: "10", endLocation: CGPointMake(0, -120))
            DragableImage(imageName: "11", endLocation: CGPointMake(0, 0))
            DragableImage(imageName: "12", endLocation: CGPointMake(0, 120))
            DragableImage(imageName: "20", endLocation: CGPointMake(120, -120))
            DragableImage(imageName: "21", endLocation: CGPointMake(120, 0))
            DragableImage(imageName: "22", endLocation: CGPointMake(120, 120))
        }
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DragableImage(imageName: "00", endLocation: CGPointMake(0, 0))
    }
}
