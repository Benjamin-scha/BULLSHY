//
//  roundedViews.swift
//  Bullshy
//
//  Created by P.M. Student on 1/12/21.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    
    var systemName: String
    
    var body: some View {
        Image(systemName:systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 54.0,height: 56.0)
            .overlay(Circle()
                        .stroke( Color("ButtonStrokeColor"),lineWidth: 2.0))
        
        
    
    }
}
struct RoundedImageViewFilled: View {
    
    var systemName: String
    
    var body: some View {
        Image(systemName:systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: 54.0,height: 56.0)
            .background(
                Circle()
                    .fill(Color("ButtonFilledBackgroundColor")))
           
    }
}




struct PreviewView:View {
    var body: some View{
        VStack(spacing: 20){
            RoundedImageViewStroked(systemName:"arrow.counterclockwise")
            RoundedImageViewFilled(systemName:"list.dash")
        
        }
        
    }
}



struct roundedViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        
    }
}
