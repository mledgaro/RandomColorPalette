//
//  ColormindAPI.swift
//  ColorPaletteGenerator
//
//  Created by MAC on 20/08/22.
//

import Foundation
import SwiftUI

struct ColorPalette: Decodable
{
    var palette: [Color]
    
    init(from decoder: Decoder) throws
    {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        let colors = try values.decode([[Int]].self, forKey: .result)
        
        palette = []
        
        for c in colors
        {
            palette.append(Color(r: c[0], g: c[1], b: c[2]))
        }
        
        print(palette)
    }
    
    enum CodingKeys: String, CodingKey
    {
        case result
    }
}
