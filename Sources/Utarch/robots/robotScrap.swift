import Foundation
import SwiftSoup

struct RobotScrap {
    let dom: Element
    let link: String
    
    init(link: String){
        let robota = ToolScrap(link: link)
        self.link = link
        self.dom = robota.getHtml()
    }
    
    func getImportantText(){
        let dom = self.dom
        let paragraphsTags:[Element] = try! dom.getElementsByTag("p").array()
        if ( paragraphsTags.count < 3 ){
            return
        }
        
        var namesParentsOfParagraphsTags: [String] = []
        
        for tag in paragraphsTags{
            let parentClassName = try! tag.parents().first()!.className()
            namesParentsOfParagraphsTags.append(parentClassName)
        }

        var parentOfParagraphs: [Element] = []
        
        for tag in paragraphsTags {
            let valor = tag.parents().first()!
            parentOfParagraphs.append(valor)
        }
        
        var counts: [Element: Int] = [:]
        
        for item in parentOfParagraphs {
            counts[item] = (counts[item] ?? 0) + 1
        }
        
        
        var accountant: Int = 0
        var chosenClass: Element = Element(Tag(""), "")
        
        for (className, numberTags) in counts{
            if(numberTags > accountant ){
                accountant = numberTags
                chosenClass = className
            }
        }
        
        
        for childTag in chosenClass.children(){
            let childTagName = childTag.tagName()
            let text = try! childTag.text()
            if text == "" {
                print("")
                switch childTagName{
                    case "pre":
                        print("-", text)
                case "ul":
                    for i in childTag.children(){
                        print("        - ", try! i.text())
                    }
                    
                default:
                    continue
                }
                
            }else{
                switch childTagName{
                case "p":
                        print("    ", text)
                
                case "h1":
                    print("-", text)
                
                case "h2":
                    print("-", text)
                
                
                case "h3":
                    print("-", text)
                    
                default:
                    continue
                }
                
            }

        }
    }
}


