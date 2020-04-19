public struct TMDBImages: Codable {
    public let id: Int
    public let backdrops, posters: [TMDBImage]
}
