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
    
    
    var body: some View
    {
        ZStack
        {
            AppColors.background.ignoresSafeArea()
            VStack
            {
                HStack
                {
                    Spacer()
                    Text(/*@START_MENU_TOKEN@*/"Color #000000 copied to your clipboard"/*@END_MENU_TOKEN@*/)
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.all, 10.0)
                        .background(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
                Text("Color palette generator")
                    .font(.largeTitle)
                    .padding(.vertical, 10.0)
                
                PaletteView(colorPalette: AppColors.testPalette )
                Spacer()
                HStack
                {
                    Spacer()
                    Button("Generate palette") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
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
