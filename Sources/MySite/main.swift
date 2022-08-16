import Foundation
import Publish
import Plot
//import S3PublishDeploy
//.deploy(using: .s3("flowallocator.app", pathToAWSBinary: "/opt/homebrew/bin/aws")),

try MySite().publish(
    using: [
        .addMarkdownFiles(),
        .copyResources(),
        .generateHTML(withTheme: .myTheme),
        .generateSiteMap(),
        .deploy(using: .gitHub("openalloc/openalloc.github.io", useSSH: false)),
    ])
