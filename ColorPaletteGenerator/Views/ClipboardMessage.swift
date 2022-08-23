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
    @Binding var show: Bool
    
    var body: some View {
        if show
        {
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
            .onAppear
            {
                print("clipboard message")
                Task {
                    try? await Task.sleep(nanoseconds: 1_500_000_000)
                    show = false
                }
            }
            .onDisappear
            {
                print("hide clipboard msg")
            }
        }
    }
}

struct ClipboardMessage_Previews: PreviewProvider {
    static var previews: some View {
        ClipboardMessage(color: .constant(Color.black), show: .constant(true))
    }
}
