//
//  shapes.swift
//  Bullshy
//
//  Created by P.M. Student on 1/12/21.
//

import SwiftUI

struct shapes: View {
    var body: some View {
        VStack{
            Circle()
                .strokeBorder(Color.green,lineWidth: 40)
                .frame(width: 200, height: 100)
            
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
            Capsule()
                .fill(Color.pink)
            Ellipse()
                .fill(Color.orange)

            
        }
        .background(Color.yellow)
    }
}

struct shapes_Previews: PreviewProvider {
    static var previews: some View {
        shapes()
    }
}
