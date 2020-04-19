public struct TMDBPersonDetail: Codable {
    public let birthday, knownForDepartment, deathday: String?
    public let id: Int
    public let name: String
    public let alsoKnownAs: [String]
    public let gender: Int
    public let biography: String
    public let popularity: Double
    public let placeOfBirth, profilePath: String?
    public let adult: Bool
    public let imdbID: String?
    public let homepage: String?

    public enum CodingKeys: String, CodingKey {
        case birthday
        case knownForDepartment = "known_for_department"
        case deathday, id, name
        case alsoKnownAs = "also_known_as"
        case gender, biography, popularity
        case placeOfBirth = "place_of_birth"
        case profilePath = "profile_path"
        case adult
        case imdbID = "imdb_id"
        case homepage
    }
}
