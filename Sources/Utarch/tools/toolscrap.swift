import Foundation
import SwiftSoup

struct ToolScrap{
    let link: String
    init(link: String){
        self.link = link
    }
    
    func getContent() -> String {
        do{
            let url = URL(string: self.link)!
            let htmlInString = try String(contentsOf: url)
            return htmlInString
        }catch {
            print(error)
            return ""
        }

    }
    
    func getHtml() -> Element{
        do{
            let dom = try SwiftSoup.parse(self.getContent())
            return dom
        } catch {
            print(error)
            return Element(Tag(""), "")
        }
    }
}
