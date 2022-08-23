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
    let gridItems = [GridItem(.adaptive(minimum: 130))]
    
    @Binding var clipboardColor: Color
    
    var body: some View
    {
        
        ScrollView
        {
            LazyVGrid(columns: gridItems)
            {
                ForEach(0..<colorPalette.count)
                {
                    index in
                    
                    ColorCardView(color: colorPalette[index], clipboardColor: $clipboardColor)
                }
            }
        }
        
    }
}

struct PaletteView_Previews: PreviewProvider {
    static var previews: some View {
        PaletteView(colorPalette: AppColors.testPalette, clipboardColor: .constant(Color.black))
    }
}
