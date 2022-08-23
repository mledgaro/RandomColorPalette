//
//  ClipboardMessage.swift
//  ColorPaletteGenerator
//
//  Created by MAC on 23/08/22.
//

import SwiftUI

struct ClipboardMessage: View
{
    @Binding var color: Color
    
    var body: some View {
        HStack
        {
            Spacer()
            Text("Color \(color.hex) copied to your clipboard")
                .font(.headline)
                .frame(maxWidth: .infinity)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding(.all, 10.0)
                .background(color)
                .border(.black, width: 0)
                .cornerRadius(30.0)
            Spacer()
        }
    }
}

struct ClipboardMessage_Previews: PreviewProvider {
    static var previews: some View {
        ClipboardMessage(color: .constant(Color.black))
    }
}
