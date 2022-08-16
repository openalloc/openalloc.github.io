import Foundation
import Publish
import Plot

struct MySite: Website {
    
    /// Basics values
    var url = URL(string: "https://openalloc.github.io/flow")!
    var title = "FlowAllocator and FlowWorth Apps"
    var name = "FlowAllocator / FlowWorth"
    var description = "Two Power Tools for the Do-It-Yourself Investor"
    var language: Language { .english }
    //var favicon: Favicon? { Favicon() }
    var imagePath: Path? { nil }
    
    enum SectionID: String, WebsiteSectionID {
        case allocator = "FlowAllocator"
        case worth = "FlowWorth"
        case open = "OpenAlloc"
        case privacy
        case terms
        case support
    }
    
    /// We just use basic metadata values
    struct ItemMetadata: WebsiteItemMetadata {}
    
    /// All dates use the same time zone and locale
    static func dateFormatter(with format: String) -> DateFormatter {
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone(identifier: "US/East")
        formatter.locale = Locale(identifier: "en-US")
        formatter.dateFormat = format
        return formatter
    }
    
    /// Formats dates like `2020-02-23`. For `<time>` elements.
    static var htmlDateFormatter = dateFormatter(with: "MM-dd-yyyy")
    
    /// Formats dates like `February 23, 2020`. For posts and post lists.
    static var textualDateFormatter = dateFormatter(with: "MMMM d, yyyy")
}

extension Theme where Site == MySite {
    static var myTheme: Self {
        Theme(htmlFactory: MyHTMLFactory())
    }
}
