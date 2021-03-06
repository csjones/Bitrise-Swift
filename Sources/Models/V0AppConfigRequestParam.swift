//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class V0AppConfigRequestParam: APIModel {

    public var appConfigDatastoreYaml: String?

    public init(appConfigDatastoreYaml: String? = nil) {
        self.appConfigDatastoreYaml = appConfigDatastoreYaml
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        appConfigDatastoreYaml = try container.decodeIfPresent("app_config_datastore_yaml")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(appConfigDatastoreYaml, forKey: "app_config_datastore_yaml")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0AppConfigRequestParam else { return false }
      guard self.appConfigDatastoreYaml == object.appConfigDatastoreYaml else { return false }
      return true
    }

    public static func == (lhs: V0AppConfigRequestParam, rhs: V0AppConfigRequestParam) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
