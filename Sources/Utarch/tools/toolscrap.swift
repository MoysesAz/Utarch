import Foundation
import SwiftSoup

struct ToolScrap{
    let link: String
    init(link: String){
        self.link = link
    }

    func getContent() -> String {
        let url = URL(string: self.link)!
        let htmlInString = try! String(contentsOf: url)
        return htmlInString
    }

    func getHtml() -> Element{
        let dom = try! SwiftSoup.parse(self.getContent())
        return dom
    }
}
