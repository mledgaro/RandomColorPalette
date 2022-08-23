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
    @Published var palette: ColorPalette? = nil
    
    init()
    {
        Task
        {
            await load()
        }
    }
    
    func load() async
    {
        do
        {
            let cpalette = try await ColormindAPI.fetchRandomPalette()
            palette = cpalette
            //print(palette?.palette)
        }
        catch
        {
            print(error)
        }
    }
    
}
