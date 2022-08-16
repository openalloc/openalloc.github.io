import Foundation
import Publish
import Plot

try MySite().publish(
    using: [
        .addMarkdownFiles(),
        .copyResources(),
        .generateHTML(withTheme: .myTheme),
        .generateSiteMap(),
        .deploy(using: .gitHub("openalloc/openalloc.github.io", branch: "main", useSSH: false)),
    ])
