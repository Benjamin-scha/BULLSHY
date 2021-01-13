//
//  BackgroundView.swift
//  Bullshy
//
//  Created by P.M. Student on 1/12/21.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game:Game
    
    
    var body: some View {
        VStack{
            TopView(game: $game)
            Spacer()
            BottomView(game: $game)
        }
        .padding()
        .background(
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
    }
}


struct TopView: View {
    @Binding var game:Game
    
    
    var body: some View {
        HStack{
        RoundedImageViewStroked(systemName: "arrow.counterclockwise")
        Spacer()
        RoundedImageViewFilled(systemName: "list.dash")
        }
        
        
    }
}

struct NumberView:View {
    
    var title:String
    var Text: String
    
    var body: some View{
        Color.gray.frame(width: 56,height: 56)
    }

}




struct BottomView: View {
    @Binding var game:Game
    
    
    var body: some View {
        HStack{
            NumberView(title: "Sore", Text: String(game.score))
        Spacer()
            NumberView(title: "Round", Text: String(game.round))
        }
        
        
    }
}




struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
