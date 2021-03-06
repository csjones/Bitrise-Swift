//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class V0BuildAbortParams: APIModel {

    public var abortReason: String?

    public var abortWithSuccess: Bool?

    public var skipNotifications: Bool?

    public init(abortReason: String? = nil, abortWithSuccess: Bool? = nil, skipNotifications: Bool? = nil) {
        self.abortReason = abortReason
        self.abortWithSuccess = abortWithSuccess
        self.skipNotifications = skipNotifications
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        abortReason = try container.decodeIfPresent("abort_reason")
        abortWithSuccess = try container.decodeIfPresent("abort_with_success")
        skipNotifications = try container.decodeIfPresent("skip_notifications")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(abortReason, forKey: "abort_reason")
        try container.encodeIfPresent(abortWithSuccess, forKey: "abort_with_success")
        try container.encodeIfPresent(skipNotifications, forKey: "skip_notifications")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0BuildAbortParams else { return false }
      guard self.abortReason == object.abortReason else { return false }
      guard self.abortWithSuccess == object.abortWithSuccess else { return false }
      guard self.skipNotifications == object.skipNotifications else { return false }
      return true
    }

    public static func == (lhs: V0BuildAbortParams, rhs: V0BuildAbortParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
