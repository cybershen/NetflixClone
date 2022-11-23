//
//  YoutubeSearchResponse.swift
//  NetflixClone
//
//  Created by Назар Жиленко on 23.11.2022.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: idVideoElement
} 

struct idVideoElement: Codable {
    let kind: String
    let videoId: String
}
