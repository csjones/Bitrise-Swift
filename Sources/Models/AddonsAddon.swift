//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AddonsAddon: APIModel {

    public var bannerImage: String?

    public var cardHeaderColors: [String]?

    public var categories: [String]?

    public var description: String?

    public var developerLinks: [AddonsDeveloperLink]?

    public var documentationURL: String?

    public var hasUi: Bool?

    public var icon: String?

    public var id: String?

    public var plans: [AddonsPlan]?

    public var platforms: [String]?

    public var previewImages: [String]?

    public var setupGuide: String?

    public var subtitle: String?

    public var summary: String?

    public var title: String?

    public init(bannerImage: String? = nil, cardHeaderColors: [String]? = nil, categories: [String]? = nil, description: String? = nil, developerLinks: [AddonsDeveloperLink]? = nil, documentationURL: String? = nil, hasUi: Bool? = nil, icon: String? = nil, id: String? = nil, plans: [AddonsPlan]? = nil, platforms: [String]? = nil, previewImages: [String]? = nil, setupGuide: String? = nil, subtitle: String? = nil, summary: String? = nil, title: String? = nil) {
        self.bannerImage = bannerImage
        self.cardHeaderColors = cardHeaderColors
        self.categories = categories
        self.description = description
        self.developerLinks = developerLinks
        self.documentationURL = documentationURL
        self.hasUi = hasUi
        self.icon = icon
        self.id = id
        self.plans = plans
        self.platforms = platforms
        self.previewImages = previewImages
        self.setupGuide = setupGuide
        self.subtitle = subtitle
        self.summary = summary
        self.title = title
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        bannerImage = try container.decodeIfPresent("banner_image")
        cardHeaderColors = try container.decodeArrayIfPresent("card_header_colors")
        categories = try container.decodeArrayIfPresent("categories")
        description = try container.decodeIfPresent("description")
        developerLinks = try container.decodeArrayIfPresent("developer_links")
        documentationURL = try container.decodeIfPresent("documentation_url")
        hasUi = try container.decodeIfPresent("has_ui")
        icon = try container.decodeIfPresent("icon")
        id = try container.decodeIfPresent("id")
        plans = try container.decodeArrayIfPresent("plans")
        platforms = try container.decodeArrayIfPresent("platforms")
        previewImages = try container.decodeArrayIfPresent("preview_images")
        setupGuide = try container.decodeIfPresent("setup_guide")
        subtitle = try container.decodeIfPresent("subtitle")
        summary = try container.decodeIfPresent("summary")
        title = try container.decodeIfPresent("title")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(bannerImage, forKey: "banner_image")
        try container.encodeIfPresent(cardHeaderColors, forKey: "card_header_colors")
        try container.encodeIfPresent(categories, forKey: "categories")
        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(developerLinks, forKey: "developer_links")
        try container.encodeIfPresent(documentationURL, forKey: "documentation_url")
        try container.encodeIfPresent(hasUi, forKey: "has_ui")
        try container.encodeIfPresent(icon, forKey: "icon")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(plans, forKey: "plans")
        try container.encodeIfPresent(platforms, forKey: "platforms")
        try container.encodeIfPresent(previewImages, forKey: "preview_images")
        try container.encodeIfPresent(setupGuide, forKey: "setup_guide")
        try container.encodeIfPresent(subtitle, forKey: "subtitle")
        try container.encodeIfPresent(summary, forKey: "summary")
        try container.encodeIfPresent(title, forKey: "title")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AddonsAddon else { return false }
      guard self.bannerImage == object.bannerImage else { return false }
      guard self.cardHeaderColors == object.cardHeaderColors else { return false }
      guard self.categories == object.categories else { return false }
      guard self.description == object.description else { return false }
      guard self.developerLinks == object.developerLinks else { return false }
      guard self.documentationURL == object.documentationURL else { return false }
      guard self.hasUi == object.hasUi else { return false }
      guard self.icon == object.icon else { return false }
      guard self.id == object.id else { return false }
      guard self.plans == object.plans else { return false }
      guard self.platforms == object.platforms else { return false }
      guard self.previewImages == object.previewImages else { return false }
      guard self.setupGuide == object.setupGuide else { return false }
      guard self.subtitle == object.subtitle else { return false }
      guard self.summary == object.summary else { return false }
      guard self.title == object.title else { return false }
      return true
    }

    public static func == (lhs: AddonsAddon, rhs: AddonsAddon) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}