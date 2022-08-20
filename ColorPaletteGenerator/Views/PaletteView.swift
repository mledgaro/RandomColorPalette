//
//  PaletteView.swift
//  ColorPaletteGenerator
//
//  Created by MAC on 20/08/22.
//

import SwiftUI

struct PaletteView: View
{
    var body: some View
    {
        VStack{
            HStack
            {
                Spacer()
                ColorCardView()
                Spacer()
                ColorCardView()
                Spacer()
            }
            HStack
            {
                Spacer()
                ColorCardView()
                Spacer()
                ColorCardView()
                Spacer()
            }
            HStack
            {
                Spacer()
                ColorCardView()
                Spacer()
            }
        }
    }
}

struct PaletteView_Previews: PreviewProvider {
    static var previews: some View {
        PaletteView()
    }
}
