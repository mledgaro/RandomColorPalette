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
    static private let reqParams: String = "{\"model\": \"default\"}"
    
    static func fetchRandomPalette() async throws -> String?
    {
        
        var apiRequest = URLRequest(url: apiUrl!)
        
        apiRequest.httpMethod = "POST"
        apiRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        apiRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        apiRequest.httpBody = reqParams.data(using: .utf8)
        
        let (data, _) = try await URLSession.shared.data(for: apiRequest)
        
        let response = String(data: data, encoding: .utf8)
        
        print(response!)
        
        /*{
            (data, response, error) in
            
            // Check for Error
            if let error = error {
                print("Error took place \(error)")
                return
            }
            
            // Convert HTTP Response Data to a String
            if let data = data, let dataString = String(data: data, encoding: .utf8) {
                apiResp = dataString
            }
            
        }
        task.resume()*/
        
        //let response = try await JSONDecoder().decode(Response.self, from: data)
        return response
    }
    
}
