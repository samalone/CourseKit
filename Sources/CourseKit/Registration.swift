//
//  File.swift
//  
//
//  Created by Stuart A. Malone on 3/23/23.
//

import Foundation
import JWT

public struct RegistrationPayload: JWTPayload {
    enum CodingKeys: String, CodingKey {
        case expiration = "exp"
        case name
        case publicKey
    }
    
    public var expiration: ExpirationClaim
    public var name: String
    public var publicKey: String
    
    public func verify(using signer: JWTSigner) throws {
        try self.expiration.verifyNotExpired()
    }
    
    public init(expiration: ExpirationClaim, name: String, publicKey: String) {
        self.expiration = expiration
        self.name = name
        self.publicKey = publicKey
    }
}
