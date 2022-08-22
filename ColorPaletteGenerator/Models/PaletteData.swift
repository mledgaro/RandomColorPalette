//
//  PaletteData.swift
//  ColorPaletteGenerator
//
//  Created by MAC on 22/08/22.
//

import Foundation
import SwiftUI

@MainActor
class PaletteData: ObservableObject
{
    //@Published var palette: [Color] = []
    
    
    init()
    {
        Task
        {
            await load()
        }
    }
    
    func load() async
    {
        
        do {
            //self.palette = try await api.fetchRandomPalette()
            try await ColormindAPI.fetchRandomPalette()
        } catch {
            print(error)
        }
        
    }
}

