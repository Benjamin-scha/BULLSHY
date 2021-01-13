//
//  UI_Interactibles.swift
//  Bullshy
//
//  Created by P.M. Student on 1/11/21.
//

import SwiftUI

struct HitMeButton: View {
    
    
    @Binding var alertIsVisible:Bool
    
    @Binding var sliderValue:Double
    
    @Binding var game: Game
    
    
    var body: some View{
        Button(action: {
            print("I am the lord")
            game.score+=game.points(sliderValu: Int(self.sliderValue.rounded()))

            self.alertIsVisible = true
        }) {
            Text("poke me".uppercased())
                .bold().font(.title3)
        }
        
        .foregroundColor(.white)
        .padding(20.0)
        .background(
            ZStack {
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.white.opacity(0.0)]), startPoint: .top, endPoint: .bottom)
            }
        )
        .cornerRadius(21.0)
        .overlay(
            RoundedRectangle(cornerRadius: 21.0)
                .strokeBorder(Color.white,lineWidth: 2.0)
        )
        .alert(isPresented: $alertIsVisible, content: {
            let roundedSliderVal : Int =
                Int(self.sliderValue.rounded())
            return Alert(title: Text("Hello there. the sliders value is \(roundedSliderVal). \n" + "you scored \(self.game.points(sliderValu: roundedSliderVal)) points this round"), message: Text("your score is now \(game.score)"), dismissButton: .default(Text("General Kenobi")))
        })
    }
}


struct newView: View {
    
    @State var DDouble:Double = 50
       
        @State var isVis = false
        
        @State var game = Game()
    
    var body: some View{
        VStack{
            SliderView(sliderValue: $DDouble)
            HitMeButton(alertIsVisible: $isVis, sliderValue: $DDouble, game: $game)
        }
        
    }
    
}

struct SliderView: View {
    
    @Binding var sliderValue: Double
    
    var body: some View {
        HStack {
            Text("1").bold().padding()
            Slider(value: $sliderValue, in: 1.0...100.0)
                
            Text("100").bold()
           
            
        }.padding()
        
    }
}





struct UI_Interactibles_Previews: PreviewProvider {
    
    
    static var previews: some View {
       newView()
    }
}
