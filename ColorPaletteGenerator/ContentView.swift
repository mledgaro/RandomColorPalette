//
//  ContentView.swift
//  ColorPaletteGenerator
//
//  Created by MAC on 19/08/22.
//

import SwiftUI

struct ContentView: View
{
    
    var body: some View
    {
        VStack
        {
            Spacer()
            HStack
            {
                Spacer()
                ColorView()
                Spacer()
                ColorView()
                Spacer()
            }
            Spacer()
            HStack
            {
                Spacer()
                ColorView()
                Spacer()
                ColorView()
                Spacer()
            }
            Spacer()
            HStack
            {
                Spacer()
                ColorView()
                Spacer()
                ColorView()
                Spacer()
            }
            Spacer()
        }
        .background(.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
