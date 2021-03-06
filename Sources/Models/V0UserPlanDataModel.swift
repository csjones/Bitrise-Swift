//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class V0UserPlanDataModel: APIModel {

    public var currentPlan: V0PlanDataModel?

    public var pendingPlan: V0PlanDataModel?

    public var trialExpiresAt: String?

    public init(currentPlan: V0PlanDataModel? = nil, pendingPlan: V0PlanDataModel? = nil, trialExpiresAt: String? = nil) {
        self.currentPlan = currentPlan
        self.pendingPlan = pendingPlan
        self.trialExpiresAt = trialExpiresAt
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        currentPlan = try container.decodeIfPresent("current_plan")
        pendingPlan = try container.decodeIfPresent("pending_plan")
        trialExpiresAt = try container.decodeIfPresent("trial_expires_at")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(currentPlan, forKey: "current_plan")
        try container.encodeIfPresent(pendingPlan, forKey: "pending_plan")
        try container.encodeIfPresent(trialExpiresAt, forKey: "trial_expires_at")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0UserPlanDataModel else { return false }
      guard self.currentPlan == object.currentPlan else { return false }
      guard self.pendingPlan == object.pendingPlan else { return false }
      guard self.trialExpiresAt == object.trialExpiresAt else { return false }
      return true
    }

    public static func == (lhs: V0UserPlanDataModel, rhs: V0UserPlanDataModel) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
