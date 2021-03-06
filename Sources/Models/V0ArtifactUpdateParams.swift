//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class V0ArtifactUpdateParams: APIModel {

    public var isPublicPageEnabled: Bool?

    public init(isPublicPageEnabled: Bool? = nil) {
        self.isPublicPageEnabled = isPublicPageEnabled
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        isPublicPageEnabled = try container.decodeIfPresent("is_public_page_enabled")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(isPublicPageEnabled, forKey: "is_public_page_enabled")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0ArtifactUpdateParams else { return false }
      guard self.isPublicPageEnabled == object.isPublicPageEnabled else { return false }
      return true
    }

    public static func == (lhs: V0ArtifactUpdateParams, rhs: V0ArtifactUpdateParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
