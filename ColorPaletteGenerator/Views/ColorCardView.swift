//
//  ColorView.swift
//  ColorPaletteGenerator
//
//  Created by MAC on 19/08/22.
//

import SwiftUI

struct ColorCardView: View
{

    var color: Color
    @Binding var clipboardColor: Color
    
    var body: some View
    {
        VStack(alignment: .center, spacing: 5.0)
        {
            Rectangle()
                .frame(width: 100.0, height: 100.0)
                .foregroundColor(color)
                .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            Text(color.hex)
                .font(.headline)
                .fontWeight(.bold)
        }
        .contentShape(Rectangle())
        .padding(.all, 10.0)
        .background(.white)
        .border(Color.white, width: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
        .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
        .onTapGesture {
            let pasteboard = UIPasteboard.general
            pasteboard.string = color.hex
            print(color.hex)
            clipboardColor = color
        }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCardView(color: .black, clipboardColor: .constant(Color.black))
    }
}
