//
//  ContentView.swift
//  ColorPaletteGenerator
//
//  Created by MAC on 19/08/22.
//

import SwiftUI

struct ContentView: View
{
    @StateObject var paletteData = PaletteData()
    
    @State var clipboardColor = Color.black
    
    var body: some View
    {
        ZStack
        {
            AppColors.background.ignoresSafeArea()
            VStack
            {
                ClipboardMessage(color: $clipboardColor)
                
                Text("Color palette generator")
                    .font(.largeTitle)
                    .padding(.vertical, 10.0)
                
                PaletteView(colorPalette: paletteData.palette, clipboardColor: $clipboardColor)

                HStack
                {
                    Spacer()
                    
                    Button("Generate palette") {
                        Task {
                            await paletteData.load()
                        }
                    }
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                    .background(AppColors.generateBtn)
                    .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                }
                
                Spacer()
                
                Text("Or just shake your phone to generate new palettes")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                HStack
                {
                    Spacer()
                    
                    Text("Click to copy individual colors")
                        .font(.footnote)
                        .frame(maxWidth: .infinity, maxHeight: 50
                        )
                        .background(.white)
                        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
