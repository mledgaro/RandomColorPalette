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
    //let palette: [Color]
    
    init(from decoder: Decoder) throws
    {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        print(values)
    }
    
    enum CodingKeys: String, CodingKey
    {
        case palette = "result"
    }
}
