//
//  ContentView.swift
//  Bullshy
//
//  Created by P.M. Student on 1/5/21.
//

import SwiftUI



struct ContentView: View {
    
    @State private var alertIsVisible = false
    
   // @State private var alertIsVisible2 :Bool = false
    
    @State private var SliderNum = 50.0
    
    @State private var game = Game()
    
    var body: some View {
        
        
        ZStack {
            BackgroundView(game: $game)
            
            VStack {
                InstructionsView(game:$game)
                
                
              SliderView(sliderValue: $SliderNum)
                
            HitMeButton(alertIsVisible: $alertIsVisible, sliderValue: $SliderNum, game: $game)
                
                
            }
        }
        
    
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView().previewLayout(.fixed(width: 568, height: 320))
            .preferredColorScheme(.dark)
        
        ContentView()
            
        ContentView().previewLayout(.fixed(width: 568, height: 320))
   
    
    
    }
}
