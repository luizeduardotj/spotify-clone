//
//  AuthManager.swift
//  Spotify
//
//  Created by Luiz Oliveira on 28/12/21.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct ClientSecurity {
        static var clientId: String? {
            return ProcessInfo.processInfo.environment["clientId"]
        }
        
        static var clientSecret: String? {
            return ProcessInfo.processInfo.environment["clientSecret"]
        }
    }
    
    public var signInURL: URL? {
        let base = "https://accounts.spotify.com/authorize"
        let redirectURI = "https://luizedu.dev"
        let scopes = "user-read-private"
        let url = "\(base)?response_type=code&client_id=\(ClientSecurity.clientId!)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        return URL(string: url)
    }
    
    private init() {}
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    public func exchangeCodeForToken(
        code: String,
        completion: @escaping ((Bool) -> Void)
    ) {
        
    }
    
    public func refreshAccessToken() {
        
    }
    
    private func cacheToken() {
        
    }
}
