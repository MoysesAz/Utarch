import SwiftSoup
import Foundation


func Main(){
    let logo = """
    ==================================================================================
         ███    █▄      ███        ▄████████    ▄████████  ▄████████    ▄█    █▄
        ███    ███ ▀█████████▄   ███    ███   ███    ███ ███    ███   ███    ███
        ███    ███    ▀███▀▀██   ███    ███   ███    ███ ███    █▀    ███    ███
        ███    ███     ███   ▀   ███    ███  ▄███▄▄▄▄██▀ ███         ▄███▄▄▄▄███▄▄
        ███    ███     ███     ▀███████████ ▀▀███▀▀▀▀▀   ███        ▀▀███▀▀▀▀███▀
        ███    ███     ███       ███    ███ ▀███████████ ███    █▄    ███    ███
        ███    ███     ███       ███    ███   ███    ███ ███    ███   ███    ███
        ████████▀     ▄████▀     ███    █▀    ███    ███ ████████▀    ███    █▀
                                              ███    ███
    ==================================================================================

    """
    print(logo)
    print("Enter a subject (or type exit to exit): ")
    let input = readLine() ?? ""
    if input != ""{
        if input == "exit"{
            return
        }
        else{
            let google = robotGoogleSearch(input).getLinks()
            for link in google{
                    RobotScrap(link: link).getImportantText()
                    RobotScrap(link: link).getImportantText()
                    print("")
                    print("LINK:", link)
                    print("")
                    print("=========================================================================================================")
            }
        }
    }
    else{
        return Main()
    }
}

Main()

