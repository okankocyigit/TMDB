public struct TMDBCertifications: Codable {
    public let certifications: [String: [TMDBCertification]]
}

public struct TMDBCertification: Codable {
    public let certification, meaning: String
    public let order: Int
}
