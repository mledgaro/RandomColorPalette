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
    
    var body: some View
    {
        VStack{
            HStack
            {
                Spacer()
                ColorCardView(color: colorPalette[0])
                Spacer()
                ColorCardView(color: colorPalette[1])
                Spacer()
            }
            HStack
            {
                Spacer()
                ColorCardView(color: colorPalette[2])
                Spacer()
                ColorCardView(color: colorPalette[3])
                Spacer()
            }
            HStack
            {
                Spacer()
                ColorCardView(color: colorPalette[4])
                Spacer()
            }
        }
    }
}

struct PaletteView_Previews: PreviewProvider {
    static var previews: some View {
        PaletteView(colorPalette: AppColors.testPalette)
    }
}
