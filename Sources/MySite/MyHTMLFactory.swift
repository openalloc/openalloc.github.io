import Foundation
import Publish
import Plot

struct MyHTMLFactory: HTMLFactory {
    
    func makeIndexHTML(for index: Index,
                       context: PublishingContext<MySite>) throws -> HTML {
        HTML(
            .title(context.site.title),
            .lang(context.site.language),
            .head(for: index, on: context.site),
            .body {
                SiteHeader(context: context, selectedSelectionID: nil)
                Wrapper(index.body)
                SiteFooter()
            }
        )
    }

    func makeSectionHTML(for section: Section<MySite>,
                         context: PublishingContext<MySite>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: section, on: context.site),
            .body {
                SiteHeader(context: context, selectedSelectionID: section.id)
                Wrapper {
                    H1(section.title)
                    ItemList(items: section.items, site: context.site)
                }
                SiteFooter()
            }
        )
    }
    
    func makeItemHTML(for item: Item<MySite>,
                      context: PublishingContext<MySite>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: item, on: context.site),
            .body(
                .class("item-page"),
                .components {
                    SiteHeader(context: context, selectedSelectionID: item.sectionID)
                    Wrapper {
                        Article {
                            Div(item.content.body).class("content")
                            Span("Tagged with: ")
                            ItemTagList(item: item, site: context.site)
                        }
                    }
                    SiteFooter()
                }
            )
        )
    }
    
    func makePageHTML(for page: Page,
                      context: PublishingContext<MySite>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: page, on: context.site),
            .body {
                SiteHeader(context: context, selectedSelectionID: nil)
                Wrapper(page.body)
                SiteFooter()
            }
        )
    }

    func makeTagListHTML(for page: TagListPage,
                         context: PublishingContext<MySite>) throws -> HTML? {
        // Has an empty HTML, because tags are deactivated for now
        nil
    }
    
    func makeTagDetailsHTML(for page: TagDetailsPage,
                            context: PublishingContext<MySite>) throws -> HTML? {
        // Has an empty HTML, because tags are deactivated for now
        nil
    }
}

private struct ItemList<Site: Website>: Component {
    var items: [Item<Site>]
    var site: Site

    var body: Component {
        List(items) { item in
            Article {
                H1(Link(item.title, url: item.path.absoluteString))
                Paragraph {
                    Text("\(MySite.textualDateFormatter.string(from: item.date)) — \(item.description)")
                }
                //ItemTagList(item: item, site: site)
            }
        }
        .class("item-list")
    }
}

private struct ItemTagList<Site: Website>: Component {
    var item: Item<Site>
    var site: Site

    var body: Component {
        List(item.tags) { tag in
            Link(tag.string, url: site.path(for: tag).absoluteString)
        }
        .class("tag-list")
    }
}


private struct Wrapper: ComponentContainer {
    @ComponentBuilder var content: ContentProvider

    var body: Component {
        Div(content: content).class("wrapper")
    }
}


private struct SiteHeader<Site: Website>: Component {
    var context: PublishingContext<Site>
    var selectedSelectionID: Site.SectionID?

    var body: Component {
        Header {
            //Wrapper {
                Table {
                    TableRow {
                        TableCell {
                            Link(url: "/") {
                                Image(url: "/images/both_icons.png", description: "FlowAllocator Logo")
                            }
                        }
                        TableCell {
                            Wrapper {
                                Link(context.site.name, url: "/")
                                    .class("site-name")
                                
                                Paragraph {
                                    Text(context.site.description)
                                }
                                .class("site-subtitle")
                                
                                if Site.SectionID.allCases.count > 1 {
                                    navigation
                                }
                            }
                        }
                    }
                }
                .class("headertable")
            //}
        }
    }

    private var navigation: Component {
        Navigation {
            List(Site.SectionID.allCases) { sectionID in
                let section = context.sections[sectionID]

                return Link(section.title, url: section.path.absoluteString)
                    .class(sectionID == selectedSelectionID ? "selected" : "")
            }
        }
    }
}

private struct SiteFooter: Component {
    var body: Component {
        Footer {
            Paragraph {
                Text("Copyright 2021, OpenAlloc LLC. All Rights Reserved")
            }
            Paragraph {
                Text("Follow ")
                Link("@FlowAllocator", url: "https://twitter.com/FlowAllocator")
                Text(" on Twitter")
            }
        }
    }
}
