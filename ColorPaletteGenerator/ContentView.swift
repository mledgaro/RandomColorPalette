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
            }
            VStack
            {
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
                    .background(
                        Color(
                        red: 126/255,
                        green: 108/255,
                        blue: 202/255))
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
        .background(
            Color(
                red: 232/255,
                green: 236/255,
                blue: 243/255))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
