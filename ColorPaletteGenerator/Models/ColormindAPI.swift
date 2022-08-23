//
//  ColormindAPI.swift
//  ColorPaletteGenerator
//
//  Created by MAC on 22/08/22.
//

import Foundation
import SwiftUI

struct ColormindAPI
{
    static private let apiUrl = URL(string: "http://colormind.io/api/")
    static private let reqParams: String = "{\"model\": \"default\"}"
    
    static func fetchRandomPalette() async throws -> [Color]
    {
        var apiRequest = URLRequest(url: apiUrl!)
        
        apiRequest.httpMethod = "POST"
        apiRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        apiRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        apiRequest.httpBody = reqParams.data(using: .utf8)
        
        let (data, _) = try await URLSession.shared.data(for: apiRequest)
        
        let response = try JSONDecoder().decode(ColorPalette.self, from: data)
        
        return response.palette
    }
    
}
