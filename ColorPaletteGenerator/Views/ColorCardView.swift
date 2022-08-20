//
//  ColorView.swift
//  ColorPaletteGenerator
//
//  Created by MAC on 19/08/22.
//

import SwiftUI

struct ColorCardView: View
{
    
    var body: some View
    {
        VStack(alignment: .center, spacing: 5.0)
        {
            Rectangle()
                .frame(width: 100.0, height: 100.0)
                .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            Text("#000000")
                .font(.headline)
                .fontWeight(.bold)
        }
        .padding(.all, 10.0)
        
        .background(.white)
        .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
        .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCardView()
    }
}
