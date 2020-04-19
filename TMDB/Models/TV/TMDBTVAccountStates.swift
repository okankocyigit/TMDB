public struct TMDBTVAccountStates: Codable {
    public let id: Int
    public let favorite, watchlist: Bool
    public let rated: TMDBBool
}

public enum TMDBBool: Codable {
    case `false`
    case `true`(value: Double)
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let rated = try? container.decode(Bool.self) {
            if rated == false {
                self = .false
                return
            }
        }
        if let rated = try? container.decode(TMDBValue.self) {
            self = .true(value: rated.value)
            return
        }
        throw DecodingError.typeMismatch(TMDBValue.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for TMDBValue"))
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .false:
            try container.encode(false)
        case .true(let value):
            try container.encode(value)
        }
    }
    
    public struct TMDBValue: Codable {
        public let value: Double
    }
    
}
