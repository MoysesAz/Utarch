import Foundation
import SwiftSoup


struct robotGoogleSearch{
    var scrap: ToolScrap
    var topic: String
    var urlSearchGoogle = "https://www.google.com/search?q="
    var dom: Element
    
    init(_ topic: String){
        self.topic = topic
        self.urlSearchGoogle += topic.replacingOccurrences(of: " ", with: "+")
        self.scrap = ToolScrap(link: self.urlSearchGoogle)
        self.dom = scrap.getHtml()
    }
    
    mutating func changeTopic(newTopic: String){
        self.topic = newTopic
        self.urlSearchGoogle = "https:// www.google.com/search?q=" + self.topic
        self.scrap = ToolScrap(link: self.urlSearchGoogle)
        self.dom = scrap.getHtml()
    }
    
    func getLinks() -> [String]{
        var listLinks: [String] = []
        for i in try! self.dom.getElementsByClass("egMi0 kCrYT"){
            let link = try! i.getElementsByTag("a").attr("href")
            if(link.contains("&sa")){
                let linkRegex = ToolRegex.init().matches(for: "h.*&sa", in: link)
                let result = linkRegex[0]
                let parsed = result.replacingOccurrences(of: "&sa", with: "")
                listLinks.append(parsed)
            }
        }
        return listLinks
    }
}


