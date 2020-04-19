public struct TMDBListItemStatus: Codable {
    public let itemPresent: Bool

    public enum CodingKeys: String, CodingKey {
        case itemPresent = "item_present"
    }
}
