//
//  TextViews.swift
//  Bullshy
//
//  Created by P.M. Student on 1/11/21.
//

import SwiftUI


struct InstructionsView:View {
    @Binding var game:Game
    
    
    var body: some View{
        VStack{
            InstructionText()
            
            BigNumberText(text:String( game.Target))
            
        }
    }

}



struct InstructionText: View {
    var text:String = "Put the bullshy as close as you can to:"
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .fontWeight(.bold)
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
    }
}


struct BigNumberText:View {
    var text :String
    var body:some View{
        
        Text(String(text))
            .foregroundColor(Color("TextColor"))
            .bold()
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .kerning( -1.0/*@END_MENU_TOKEN@*/)
    }
}


struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        InstructionText()
    }
    
    
    
    
}
