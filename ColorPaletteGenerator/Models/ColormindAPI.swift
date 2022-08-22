//
//  ColormindAPI.swift
//  ColorPaletteGenerator
//
//  Created by MAC on 22/08/22.
//

import Foundation

struct ColormindAPI
{
    static private let apiUrl = URL(string: "http://colormind.io/api/")
    static private let reqParams = "{\"model\": \"default\"}"
    
    static func fetchRandomPalette() async throws
    {
        
        var apiRequest = URLRequest(url: apiUrl!)
        
        apiRequest.httpMethod = "POST"
        apiRequest.httpBody = reqParams.data(using: .utf8)
        apiRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        async let (data, _) = URLSession.shared.data(from: apiUrl!)
        //let response = try await JSONDecoder().decode(Response.self, from: data)
        //return response.users
        let value = try await String(data: data, encoding: .utf8)!
        print(value)
    }
    
}
