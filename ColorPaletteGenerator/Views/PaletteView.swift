//
//  PaletteView.swift
//  ColorPaletteGenerator
//
//  Created by MAC on 20/08/22.
//

import SwiftUI

struct PaletteView: View
{
    var colorPalette: [Color]
    
    @Binding var clipboardColor: Color
    
    var body: some View
    {
        VStack{
            HStack
            {
                Spacer()
                ColorCardView(color: colorPalette[0], clipboardColor: $clipboardColor)
                Spacer()
                ColorCardView(color: colorPalette[1], clipboardColor: $clipboardColor)
                Spacer()
            }
            HStack
            {
                Spacer()
                ColorCardView(color: colorPalette[2], clipboardColor: $clipboardColor)
                Spacer()
                ColorCardView(color: colorPalette[3], clipboardColor: $clipboardColor)
                Spacer()
            }
            HStack
            {
                Spacer()
                ColorCardView(color: colorPalette[4], clipboardColor: $clipboardColor)
                Spacer()
            }
        }
    }
}

struct PaletteView_Previews: PreviewProvider {
    static var previews: some View {
        PaletteView(colorPalette: AppColors.testPalette, clipboardColor: .constant(Color.black))
    }
}
