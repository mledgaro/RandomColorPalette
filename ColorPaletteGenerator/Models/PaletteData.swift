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
    @Published var palette: [Color] = AppColors.testPalette
    @Published var mainColor: String = "#000000"
    
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
            self.palette = try await ColormindAPI.fetchRandomPalette()
            self.mainColor = self.palette[0].hex
        }
        catch
        {
            print(error)
        }
    }
    
}
