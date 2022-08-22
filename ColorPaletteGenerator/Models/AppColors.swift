//
//  AppColors.swift
//  ColorPaletteGenerator
//
//  Created by MAC on 20/08/22.
//

import Foundation
import SwiftUI

struct AppColors
{
    //static let background = Color(red: 232/255, green: 236/255, blue: 243/255)
    static let background = Color(r: 232, g: 236, b: 243)
    static let generateBtn = Color(red: 126/255, green: 108/255, blue: 202/255)
    static let testPalette = [
        Color(r: 238, g: 237, b: 240), // rgb(238, 237, 240) - EEEDF0
        Color(r: 202, g: 174, b: 136), // rgb(202, 174, 136) - CAAE88
        Color(r: 199, g: 168, b: 165), // rgb(199, 168, 165) - C7A8A5
        Color(r: 238, g: 149, b: 123), // rgb(238, 149, 123) - EE957B
        Color(r: 237, g: 93, b: 59) // rgb(237, 93, 59) - ED5D3B
    ]
}

extension Color
{
    init(r: Int, g: Int, b: Int)
    {
        let range = 0...255
        let rc = range ~= r ? Double(r) : 0.0
        let gc = range ~= g ? Double(g) : 0.0
        let bc = range ~= b ? Double(b) : 0.0
        
        self.init(red: rc / 255, green: gc / 255, blue: bc / 255)
    }
    
    var hex: String
    {
        let colorComponents = UIColor(self).cgColor.components
        
        let r = colorComponents?[0] ?? 0
        let g = colorComponents?[1] ?? 0
        let b = colorComponents?[2] ?? 0
        
        let hexr = String(format:"%02X", Int(r * 255))
        let hexg = String(format:"%02X", Int(g * 255))
        let hexb = String(format:"%02X", Int(b * 255))
        
        return "#\(hexr)\(hexg)\(hexb)"
    }
}
