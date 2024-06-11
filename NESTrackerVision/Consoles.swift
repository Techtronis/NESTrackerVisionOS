import Foundation
import SwiftUI

struct ConsoleDetails: Identifiable{
    var id = UUID()
    var imgName: String = ""
    var jpnName: String = ""
    var consoleName: String = ""
    var mostSoldGame: String = ""
    var initialPrice: String = ""
    var ReleaseDate: String = ""
    var Discontinuation: String = ""
    var category: String = ""
    var estimatedPricedToday: String = ""
    var cables: String = ""
    var processor: String = ""
    var screenSize: String = ""
    var modelNumber: String = ""
    var dims: String = ""
    @State var favorites: Bool = false
    var discontinued: Bool = true
    var isHandheld: Bool = true
    var isRegionLocked: Bool = false
}


struct ConsoleList {
    //The consoles list but I'll only put one to save space
    static let categories = Dictionary(grouping: consoles, by: {$0.category})
    
    static var consoles = [
        //Current Consoles
        ConsoleDetails(imgName: "NS_OG",
                       jpnName: "ニンテンドースイッチ",
                       consoleName: "Nintendo Switch",
                       mostSoldGame: "Mario Kart 8 Deluxe",
                       initialPrice: "$299.99",
                       ReleaseDate: "Mar 3, 2017",
                       Discontinuation: "Still Available",
                       category: "Nintendo Switch",
                       estimatedPricedToday: "$200-250 used",
                       cables: """
                        HDMI,\"
                         USB Type-C, Micro SD card slot,\"
                         3x USB Ports\"
                        """,
                       processor: "Nvidia Tegra X1",
                       screenSize: """
                       Capacitive touch screen
                        6.2 inch LCD Screen
                        1280 x 720
                       """,
                       modelNumber: """
                       V1: HAC-001
                        V2: HAC-001(-01)
                       """,
                       dims: """
                          W: 9.40\"
                           H: 4.01\"
                           D: 0.55\"
                          """,
                       favorites: false,
                       discontinued: false,
                       isHandheld: true,
                       isRegionLocked: false),
        ConsoleDetails(imgName: "NS_LITE",
                       jpnName: "ニンテンドースイッチライト",
                       consoleName: "Nintendo Switch Lite",
                       mostSoldGame:  "Mario Kart 8 Deluxe",
                       initialPrice: "$249.99",
                       ReleaseDate: "Sept 20, 2019",
                       Discontinuation: "Still Available",
                       category: "Nintendo Switch",
                       estimatedPricedToday: "$100-150 used",
                       cables: """
                       USB Type-C,
                        Micro SD card slot
                       """,
                       processor: "Nvidia Tegra X1+",
                       screenSize: """
                      Capacitive touch screen
                       5.5 inch LCD
                       1280 x 720
                      """,
                       modelNumber: "HDH-001",
                       dims: """
                       W: 8.18\"
                        H: 3.38\"
                        D: 0.55\"
                       """,
                       favorites: false,
                       discontinued: false,
                       isHandheld: true,
                       isRegionLocked: false),
        ConsoleDetails(imgName: "NS_OLED",
                       jpnName: "有機ELモデル",
                       consoleName: "Nintendo Switch OLED",
                       mostSoldGame:  "Mario Kart 8 Deluxe",
                       initialPrice: "$349.99",
                       ReleaseDate: "Oct 8, 2021",
                       Discontinuation: "Still Available",
                       category: "Nintendo Switch",
                       estimatedPricedToday: "$250-300 used",
                       cables: """
                       HDMI,
                        USB Type-C,
                        Micro SD card slot,
                        2x USB Ports,
                        LAN port
                       """,
                       processor: "Nvidia Tegra X1",
                       screenSize: """
                       Capacitive touch screen
                        7-inch OLED display
                        1280 x 720
                       """,
                       modelNumber: "HEG-001",
                       dims: """
                       W: 9.5\"
                        H: 4\"
                        D: 0.55\"
                       """,
                       favorites: false,
                       discontinued: false,
                       isHandheld: true,
                       isRegionLocked: false),
        //Remakes
        ConsoleDetails(imgName: "NESCLASSIC",
                       jpnName: "ニンテンドークラシックミニ ファミリーコンピュータ",
                       consoleName: "NES Classic Edition",
                       mostSoldGame: "Super Mario Bros.",
                       initialPrice: "$59.99",
                       ReleaseDate: """
                       US: November 11th, 2016
                        JPN: November 10th, 2016
                        PAL: November 11th, 2016
                       """,
                       Discontinuation: "2017",
                       category: "Remakes",
                       estimatedPricedToday: "$100-200 used depending on condition",
                       cables: "HDMI, Micro USB",
                       processor: "Quad-Core ARM Cortex-A7",
                       modelNumber: "CLV-101",
                       dims: """
                       W: 5\"
                        H: 4\"
                        D: 1\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "SNESCLASSIC",
                       jpnName: "ニンテンドークラシックミニ スーパーファミコン",
                       consoleName: "SNES Classic Edition",
                       mostSoldGame: "Super Mario World",
                       initialPrice: "$75.59",
                       ReleaseDate: """
                       US: September 29th, 2017
                        JPN: October 5th, 2017
                        PAL: September 29th, 2017
                       """,
                       Discontinuation: "2018",
                       category: "Remakes",
                       estimatedPricedToday: "$100-200 used depending on condition",
                       cables: "HDMI, Micro USB",
                       processor: "Allwinner R16",
                       modelNumber: "CLV-301",
                       dims: """
                       W: 4.33\"
                        H: 1.59\"
                        D: 5.23\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "GW59",
                       consoleName: "Super Mario Bros.",
                       mostSoldGame: "Special Anniversary",
                       initialPrice: "49.99",
                       ReleaseDate: "Nov 13, 2020",
                       Discontinuation: "2021",
                       category: "Game & Watch",
                       estimatedPricedToday: "$50-80 used depending on condition",
                       cables: "USB Type-C",
                       processor: "STM32H7B0VBT6",
                       screenSize: "2.36 inch LCD",
                       modelNumber: "CLV-003",
                       dims: """
                       W: 2.6\"
                        H: 4.9\"
                        D: 0.2\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW60",
                       consoleName: "The legend of Zelda",
                       mostSoldGame: "Special Anniversary",
                       initialPrice: "49.99",
                       ReleaseDate: "Nov 13, 2021",
                       Discontinuation: "2022",
                       category: "Game & Watch",
                       estimatedPricedToday: "50-80 used depending on condition",
                       cables: "USB Type-C",
                       processor: "STM32H7B0VBT6",
                       screenSize: "2.36 inch LCD",
                       modelNumber: "HXB-001",
                       dims: """
                       W: 2.6\"
                        H: 4.9\"
                        D: 0.2\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        
        //Color TV Game
        ConsoleDetails(imgName: "CTG6",
                       jpnName: "カラーテレビゲーム6",
                       consoleName: "Color TV Game 6 (Japan only)",
                       mostSoldGame: "Light Tennis",
                       initialPrice: "¥9,800",
                       ReleaseDate: "June 1, 1977",
                       Discontinuation: "1980",
                       category: "Color TV Game",
                       estimatedPricedToday: "$100-400 used depending on condition",
                       cables: "RF out, AC Adapter",
                       processor: "Unknown",
                       modelNumber: "CTG-6S",
                       dims: "Unknown",
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "CTG15",
                       jpnName: "カラーテレビゲーム15",
                       consoleName: "Color TV Game 15 (Japan only)",
                       mostSoldGame: "Light Tennis",
                       initialPrice: "¥15,800",
                       ReleaseDate: "June 8, 1977",
                       Discontinuation: "1980",
                       category: "Color TV Game",
                       estimatedPricedToday: "$100-400 used depending on condition",
                       cables: "RF out, AC Adapter",
                       processor: "Unknown",
                       modelNumber: "CTG-15S",
                       dims: "Unknown",
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "CTG112",
                       jpnName: "カラーテレビゲームレーシング112",
                       consoleName: "Color TV Racing 112 (Japan only)",
                       mostSoldGame: "Racing Game",
                       initialPrice: "¥12,000",
                       ReleaseDate: "June 8, 1978",
                       Discontinuation: "1980",
                       category: "Color TV Game",
                       estimatedPricedToday: "$100-400 used depending on condition",
                       cables: "RF out, AC Adapter",
                       processor: "Unknown",
                       modelNumber: "CTG-112S",
                       dims: "Unknown",
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "CTGBK",
                       jpnName: "カラー テレビゲーム ブロック崩し",
                       consoleName: "Color TV Block Kuzushi (Japan only)",
                       mostSoldGame: "Racing Game",
                       initialPrice: "¥13,500",
                       ReleaseDate: "Apr 23, 1979",
                       Discontinuation: "1980",
                       category: "Color TV Game",
                       estimatedPricedToday: "$100-400 used depending on condition",
                       cables: "RF out, AC Adapter",
                       processor: "Unknown",
                       modelNumber: "CTG-BK6",
                       dims: "Unknown",
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "COMPTG",
                       jpnName: "コンピュータ TV ゲーム",
                       consoleName: "Computer TV Game (Japan only)",
                       mostSoldGame: "Computer Othello",
                       initialPrice: "¥48,000",
                       ReleaseDate: "Apr 23, 1980",
                       Discontinuation: "1983",
                       category: "Color TV Game",
                       estimatedPricedToday: "$100-400 used depending on condition",
                       cables: "RF out, AC Adapter",
                       processor: "Unknown",
                       modelNumber: "CTG-HC10",
                       dims: "Unknown",
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        //Other
        ConsoleDetails(imgName: "NINPS",
                       jpnName: "ニンテンドプレイステーション",
                       consoleName: "Nintendo Playstation",
                       mostSoldGame: "No games released",
                       initialPrice: "No initial Price",
                       ReleaseDate: "Unknown",
                       Discontinuation: "Unknown",
                       category: "Other",
                       estimatedPricedToday: "$300'000",
                       cables: "Unknown",
                       processor: "Unknown",
                       modelNumber: "Unknown",
                       dims: "Unknown",
                       favorites: false,
                       discontinued: true,
                       isHandheld: false),
        ConsoleDetails(imgName: "PQCube",
                       jpnName: "パナソニックQ",
                       consoleName: "Panasonic Q Gamecube",
                       mostSoldGame: "Super Smash Bros Melee",
                       initialPrice: "$429.99",
                       ReleaseDate: "December 13, 2001",
                       Discontinuation: "2003",
                       category: "Other",
                       estimatedPricedToday: "$200-650 used depending on condition",
                       cables: """
                            4x Controller Ports,
                             2 memory slots,
                             AC Adapter
                            """,
                       processor: "485 MHz PowerPC 750CXe",
                       modelNumber: "SL-GC10",
                       dims: "Unknown",
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "pkmnmini",
                       jpnName: "ポケモンミニ",
                       consoleName: "Pokémon Mini",
                       mostSoldGame: "Pokémon Party mini",
                       initialPrice: "$40",
                       ReleaseDate: "December 14, 2001",
                       Discontinuation: "2005",
                       category: "Other",
                       estimatedPricedToday: "$100-150 used depending on condition",
                       cables: "1x AAA Battery Slot, 1x Game Card slot",
                       processor: "4 MHz Epson S1C88",
                       screenSize: "96 x 64 Monochrome LCD",
                       modelNumber: "MIN-001",
                       dims: "Unknown",
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: false),
        ConsoleDetails(imgName: "WII",
                       consoleName: "iQue Wii",
                       mostSoldGame: "-",
                       initialPrice: "-",
                       ReleaseDate: "Unknown due to it being cancelled",
                       Discontinuation: "-",
                       category: "Other",
                       estimatedPricedToday: "-",
                       cables: "AV Multi Out, AC adapter, 2x Memory slots,  4x Gamecube controller ports",
                       processor: "IBM PowerPC Broaswell",
                       modelNumber: "-",
                       dims: """
                       W: 2.37\"
                        H: 6.18\"
                        D: 7.75\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "chnswitch",
                       jpnName: "腾讯Nintendo Switch",
                       consoleName: "Tencent Nintendo Switch",
                       mostSoldGame: "Mario Kart 8 Deluxe",
                       initialPrice: "~$297",
                       ReleaseDate: "December 10th 2019",
                       Discontinuation: "Still Available",
                       category: "Other",
                       estimatedPricedToday: "-",
                       cables: """
                        HDMI,\"
                         USB Type-C, Micro SD card slot,\"
                         3x USB Ports\"
                        """,
                       processor: "Nvidia Tegra X1",
                       screenSize: """
                       Capacitive touch screen
                        6.2 inch LCD Screen
                        1280 x 720
                       """,
                       modelNumber: "HAC-001(-01)",
                       dims: """
                       W: 2.37\"
                        H: 6.18\"
                        D: 7.75\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: true),
        
        //Old Home Consoles
        ConsoleDetails(imgName: "FAMICOM",
                       jpnName: "ファミリーコンピュータ",
                       consoleName: "Famicom (Japan only)",
                       mostSoldGame: "Super Mario Bros",
                       initialPrice: "¥14,800",
                       ReleaseDate: "July 15, 1983",
                       Discontinuation: "2003",
                       category: "Home Consoles",
                       estimatedPricedToday: "$40-120 used depending on condition",
                       cables: "RF out, AC Adapter",
                       processor: "Ricoh 2A03",
                       modelNumber: "HVC-001",
                       dims:"""
                       W: 5.6\"
                        D: 9.1\"
                        H: 3.1\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "NES",
                       consoleName: "NES",
                       mostSoldGame: "Super Mario Bros",
                       initialPrice: "$179.99",
                       ReleaseDate: """
                       USA: October 18th, 1985
                        EU: September 1st, 1986
                       """,
                       Discontinuation: "1991",
                       category: "Home Consoles",
                       estimatedPricedToday: "$50-100 used depending on condition",
                       cables: "AV cables, AC Adapter",
                       processor: "Ricoh 2A03",
                       modelNumber: "NES-001",
                       dims: """
                       W: 10.1\"
                        H: 8\"
                        D: 3.5\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "SF_JPN",
                       jpnName: "スーパーファミコン",
                       consoleName: "Super Famicom (Japan Only)",
                       mostSoldGame: "Super Mario World",
                       initialPrice: "$25,000",
                       ReleaseDate: "Nov 21, 1990",
                       Discontinuation: "2003",
                       category: "Home Consoles",
                       estimatedPricedToday: "$35-85 used depending on condition",
                       cables: "RF Out, AV, AC Adapter",
                       processor: "Ricoh 5A22",
                       modelNumber: "SNS-101",
                       dims: """
                       W: 7.67\"
                        H: 2.75\"
                        D: 9.44\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "US_SNES",
                       jpnName: "",
                       consoleName: "Super NES (North America Only)",
                       mostSoldGame: "Super Mario World",
                       initialPrice: "$199.99",
                       ReleaseDate: "Sept 9, 1991",
                       Discontinuation: "1999",
                       category: "Home Consoles",
                       estimatedPricedToday: "$50-150 used depending on condition",
                       cables: "RF Out, AV, AC Adapter",
                       processor: "Ricoh 5A22",
                       modelNumber: "SNS-101",
                       dims: """
                       W: 8\"
                        H: 2.68\"
                        D: 10\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "EU_SNES",
                       jpnName: "",
                       consoleName: "Super NES (EU Version)",
                       mostSoldGame: "Super Mario World",
                       initialPrice: "$199.99",
                       ReleaseDate: "Sept 9, 1991",
                       Discontinuation: "1999",
                       category: "Home Consoles",
                       estimatedPricedToday: "$50-150 used depending on condition",
                       cables: "RF Out, AV, AC Adapter",
                       processor: "Ricoh 5A22",
                       modelNumber: "SNS-101",
                       dims: """
                       W: 7.67\"
                        H: 2.75\"
                        D: 9.44\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "topnes",
                       jpnName: "ニューファミコン",
                       consoleName: "NES Top Loader",
                       mostSoldGame: "Super Mario Bros",
                       initialPrice: "$49.99",
                       ReleaseDate: """
                       US: October 11th, 1993
                        JPN: October 21st, 1993
                       """,
                       Discontinuation: "2003",
                       category: "Home Consoles",
                       estimatedPricedToday: "$100-250 used depending on condition",
                       cables: "AV cables, AC Adapter",
                       processor: "Ricoh 2A03",
                       modelNumber: "NES-101",
                       dims: """
                       W: 14\"
                        H: 22\"
                        D: 6\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "N64",
                       jpnName: "ニンテンドウ64",
                       consoleName: "Nintendo 64",
                       mostSoldGame: "Super Mario 64",
                       initialPrice: "$199.99",
                       ReleaseDate: "Sept 29, 1996",
                       Discontinuation: "2002",
                       category: "Home Consoles",
                       estimatedPricedToday: "$60-120 used depending on condition",
                       cables: "AV Multi Out, AC Adapter",
                       processor: "NEC VR4300",
                       modelNumber: "NUS-001",
                       dims: """
                       US: June 23rd, 1996
                        JPN: September 26th, 1996
                        PAL: March 1st, 1997
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "GAMECUBE",
                       jpnName: "ニンテンドーゲームキューブ",
                       consoleName: "Gamecube",
                       mostSoldGame: "Super Smash Bros Melee",
                       initialPrice: "$199",
                       ReleaseDate: """
                       US: November 18th, 2001
                        JPN: September 14th, 2001
                        PAL: May 3rd, 2002
                       """,
                       Discontinuation: "2007",
                       category: "Home Consoles",
                       estimatedPricedToday: "$40-130 used depending on condition",
                       cables: "AV Multi Out, AC Adapter",
                       processor: "IBM PowerPC 750CXe",
                       modelNumber: "DOL-001 or DOL-101",
                       dims: """
                       W: 5.9\"
                        H: 4.3\"
                        D: 9.44\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "WII",
                       jpnName: "ウイー",
                       consoleName: "Wii (Gamecube)",
                       mostSoldGame: "Wii Sports",
                       initialPrice: "$249.99",
                       ReleaseDate: """
                       US: November 19th, 2006
                        JPN: December 2nd, 2006
                        PAL: December 8th, 2006
                       """,
                       Discontinuation: "2013",
                       category: "Home Consoles",
                       estimatedPricedToday: "$40-100 used depending on condition",
                       cables: "AV Multi Out, AC adapter, 2x Memory slots,  4x Gamecube controller ports",
                       processor: "IBM PowerPC Broadway",
                       modelNumber: "RVL-001",
                       dims: """
                       W: 2.37\"
                        H: 6.18\"
                        D: 7.75\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "WIING",
                       consoleName: "Wii Family Edition",
                       mostSoldGame: "Wii Sports",
                       initialPrice: "$149.99",
                       ReleaseDate: """
                       US: October 23rd, 2011
                        EU: November 4th, 2011
                        AU: November 11th, 2011
                       """,
                       Discontinuation: "2013",
                       category: "Home Consoles",
                       estimatedPricedToday: "$40-100 used depending on condition",
                       cables: "AV Multi Out, AC adapter",
                       processor: "IBM PowerPC Broadway",
                       modelNumber: "RVL-101",
                       dims: """
                       W: 2.37\"
                        H: 6.18\"
                        D: 7.75\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "WII_MINI",
                       jpnName: "ウイーミニ",
                       consoleName: "Wii Mini",
                       mostSoldGame: "Wii Sports",
                       initialPrice: "$99.99",
                       ReleaseDate: """
                       US: November 17th, 2013
                        EU: March 15th, 2013
                       """,
                       Discontinuation: "2017",
                       category: "Home Consoles",
                       estimatedPricedToday: "$40-70 used depending on condition",
                       cables: "HDMI, USB Type-C",
                       processor: "IBM PowerPC Broadway",
                       modelNumber: "RVL-201",
                       dims: "7.67\" 2.75\" 9.44\"",
                       favorites: false,
                       discontinued: true,
                       isHandheld: false),
        ConsoleDetails(imgName: "WII_U",
                       jpnName: "ウイーユウ",
                       consoleName: "Wii U",
                       mostSoldGame: "Mario Kart 8",
                       initialPrice: "$299.99",
                       ReleaseDate: """
                       US: November 18th, 2012
                        JPN: December 8th, 2012
                        EU: November 30th, 2012
                       """,
                       Discontinuation: "2017",
                       category: "Home Consoles",
                       estimatedPricedToday: "$50-150 used depending on condition",
                       cables: "HDMI, AV Multi Out, AC Adapter",
                       processor: "IBM PowerPC Espresso",
                       modelNumber: "WUP-001 (deluxe) WUP-001(-02) (basic)",
                       dims: """
                       W: 6.8\"
                        H: 1.8\"
                        D: 10.6\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        //Nintendo DS / 3DS
        ConsoleDetails(imgName: "DS_PHAT",
                       jpnName: "ニンテンドーDS",
                       consoleName: "Original Nintendo DS",
                       mostSoldGame: "New Super Mario Bros",
                       initialPrice: "$149.99",
                       ReleaseDate: """
                       US: November 21st, 2004
                        JPN: December 2nd, 2003
                        EU: March 11th, 2005
                       """,
                       Discontinuation: "2009",
                       category: "Nintendo DS / 3DS",
                       estimatedPricedToday: "$20-60 used depending on condition",
                       cables: "AC Adapter",
                       processor: "ARM946E-S (16.78 MHz)",
                       screenSize: """
                       Top: 3 inch display
                        Bottom: 3 inch resistive touch screen
                       """,
                       modelNumber: "NTR-001",
                       dims: """
                       W: 5.85\"
                        H: 3.33\" (closed) 6.3\" (opened)
                        D: 1.13\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: false),
        ConsoleDetails(imgName: "DS_LITE",
                       jpnName: "ニンテンドーDS Lite",
                       consoleName: "Nintendo DS Lite",
                       mostSoldGame: "New Super Mario Bros",
                       initialPrice: "$129.99",
                       ReleaseDate: """
                       US: June 11th, 2006
                        JPN: March 2nd, 2006
                        EU: June 23rd, 2006
                       """,
                       Discontinuation: "2011",
                       category: "Nintendo DS / 3DS",
                       estimatedPricedToday: "$50-80 used depending on condition",
                       cables: "AC Adapter",
                       processor: "ARM7 (33 MHz) and ARM9 (67 MHz)",
                       screenSize: """
                       Top: 3 inch display
                        Bottom: 3 inch resistive touch screen
                       """,
                       modelNumber: "USG-001",
                       dims: """
                       W: 5.2\"
                        H: 2.9\" (closed) 5.47\" (opened)
                        D: 0.85\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: false),
        ConsoleDetails(imgName: "DSI",
                       jpnName: "ニンテンドーDSi",
                       consoleName: "Nintendo DSi",
                       mostSoldGame: "New Super Mario Bros",
                       initialPrice: "$169.99",
                       ReleaseDate: "Nov 1, 2008",
                       Discontinuation: """
                       US: April 5th, 2009
                        JPN: November 1st, 2008
                        EU: April 3rd, 2009
                       """,
                       category: "Nintendo DS / 3DS",
                       estimatedPricedToday: "$30-80 used depending on condition",
                       cables: "AC Adapter",
                       processor: "ARM7 (33 MHz) & ARM9 (133 MHz)",
                       screenSize: """
                       Top: 3.25 inch display
                        Bottom: 3.25 inch resistive touch screen
                       """,
                       modelNumber: "TWL-001",
                       dims: """
                       W: 5.39\"
                        H: 2.95\"
                        D: 0.74\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "DSI XL",
                       jpnName: "ニンテンドーDSi LL",
                       consoleName: "Nintendo DSi XL",
                       mostSoldGame: "New Super Mario Bros",
                       initialPrice: "$169.99",
                       ReleaseDate:  """
                       US: March 28th, 2010
                        JPN: November 21st, 2009
                        EU: March 5th, 2010
                       """,
                       Discontinuation: "2010",
                       category: "Nintendo DS / 3DS",
                       estimatedPricedToday: "$40-90 used depending on condition",
                       cables: "AC Adapter",
                       processor: "ARM7 (33 MHz) & ARM9 (133 MHz)",
                       screenSize: """
                       Top: 4.2 inch display
                        Bottom: 4.2 inch resistive touch screen
                       """,
                       modelNumber: "UTL-001",
                       dims: """
                       W: 6.33\"
                        H: 3.59\"
                        D: 0.83\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "3DS",
                       jpnName: "ニンテンドー3DS",
                       consoleName: "Nintendo 3DS",
                       mostSoldGame: "Mario Kart 7",
                       initialPrice: "$249.99",
                       ReleaseDate:  """
                       US: March 27th, 2011
                        JPN: February 26th, 2011
                        EU: March 25th, 2011
                       """,
                       Discontinuation: "2015",
                       category: "Nintendo DS / 3DS",
                       estimatedPricedToday: "$50-100 used depending on condition",
                       cables: "AC Adapter",
                       processor: "Dual Core ARM11 MPCore (268 MHz)",
                       screenSize: """
                       Top: 3.5 inch display
                        Bottom: 3.02 inch resistive touch screen
                       """,
                       modelNumber: "CTR-001",
                       dims: """
                       W: 5.3\"
                        H: 2.9\"
                        D: 0.83\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "3DSXL",
                       jpnName: "ニンテンドー3DS LL",
                       consoleName: "Nintendo 3DS XL",
                       mostSoldGame: "Mario Kart 7",
                       initialPrice: "$199.99",
                       ReleaseDate:  """
                       US: August 19th, 2012
                        JPN: July 28th, 2012
                        EU: July 28th, 2012
                       """,
                       Discontinuation: "2019",
                       category: "Nintendo DS / 3DS",
                       estimatedPricedToday: "$80-120 used depending on condition",
                       cables: "AC Adapter",
                       processor: "Dual Core ARM11 MPCore (268 MHz)",
                       screenSize: """
                       Top: 4.88 inch display
                        Bottom: 4.18 inch resistive touch screen
                       """,
                       modelNumber: "SPR-001",
                       dims: """
                       W: 6.1\"
                        H: 3.7\"
                        D: 0.87\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "NINTENDO2DS",
                       jpnName: "ニンテンドー2DS",
                       consoleName: "Nintendo 2DS",
                       mostSoldGame: "Mario Kart 7",
                       initialPrice: "$129.99",
                       ReleaseDate:  """
                       US: October 12th, 2013
                        JPN: February 27th, 2016
                        EU: October 12th, 2013
                       """,
                       Discontinuation: "2019",
                       category: "Nintendo DS / 3DS",
                       estimatedPricedToday: "$30-100 used depending on condition",
                       cables: "AC Adapter",
                       processor: "Dual Core ARM11 MPCore, Single Core ARM9",
                       screenSize: """
                       Top: 3.5 inch display
                        Bottom: 3.02 inch capacitive touch screen
                       """,
                       modelNumber: "FTR-001",
                       dims: """
                       W: 5.66\"
                        H: 5\"
                        D: 0.8\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "NEW3DS",
                       jpnName: "Newニンテンドー3DS",
                       consoleName: "New Nintendo 3DS",
                       mostSoldGame: "Mario Kart 7",
                       initialPrice: "$219.99",
                       ReleaseDate:  """
                       US: September 25th, 2015
                        JPN: October 11th, 2014
                        EU: February 13th, 2015
                       """,
                       Discontinuation: "2017",
                       category: "Nintendo DS / 3DS",
                       estimatedPricedToday: "$80-150 used depending on condition",
                       cables: "AC Adapter",
                       processor: "Quad Core ARM11 MPCore (804 MHz)",
                       screenSize: """
                       Top: 3.5 inch display
                        Bottom: 3.02 inch capacitive touch screen
                       """,
                       modelNumber: "KTR-001",
                       dims: """
                       W: 5.59\"
                        H: 3.17\" (Closed) 5.89\" (Opened)
                        D: 0.85\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "NEW3DSXL",
                       jpnName: "Newニンテンドー3DS LL",
                       consoleName: "New Nintendo 3DS XL",
                       mostSoldGame: "Mario Kart 7",
                       initialPrice: "$199.99",
                       ReleaseDate:  """
                       US: February 13th, 2015
                        JPN: October 11th, 2014
                        EU: February 13th, 2015
                       """,
                       Discontinuation: "2019",
                       category: "Nintendo DS / 3DS",
                       estimatedPricedToday: "$80-150 used depending on condition",
                       cables: "AC Adapter",
                       processor: "Quad Core ARM11 MPCore (804 MHz)",
                       screenSize: """
                       Top: 4.88 inch display
                        Bottom: 4.18 inch resistive touch screen
                       """,
                       modelNumber: "RED-001",
                       dims: """
                       W: 5.85\"
                        H: 3.33\"
                        D: 1.13\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "NEW2DSXL",
                       jpnName: "Newニンテンドー2DS LL",
                       consoleName: "New Nintendo 2DS XL",
                       mostSoldGame: "Mario Kart 7",
                       initialPrice: "$149.99",
                       ReleaseDate:  """
                       US: July 28th, 2017
                        JPN: July 13th, 2017
                        EU: July 28th, 2017
                       """,
                       Discontinuation: "2020",
                       category: "Nintendo DS / 3DS",
                       estimatedPricedToday: "$100-200 used depending on condition",
                       cables: "AC Adapter",
                       processor: "4x VFPv2 Co-Processor",
                       screenSize: """
                       Top: 4.88 inch display
                        Bottom: 4.18 inch resistive touch screen
                       """,
                       modelNumber: "JAN-001",
                       dims: """
                       W: 6.3\"
                        H: 3.4\"
                        (Closed) 6.4\" (Opened) D: 1.13\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: true),
        //iQue
        ConsoleDetails(imgName: "IQUEPLAYER",
                       jpnName: "神游机",
                       consoleName: "iQue Player",
                       mostSoldGame: "Dr. Mario 64",
                       initialPrice: "$73.00",
                       ReleaseDate: "November 17, 2003",
                       Discontinuation: "2016",
                       category: "iQue",
                       estimatedPricedToday: "$500-800 used depending on condition",
                       cables: "AC Adapter",
                       processor: "R-4300i 64Bit CPU @ 140.625 MHz",
                       modelNumber: "Unknown",
                       dims: "Unknown",
                       favorites: false,
                       discontinued: true,
                       isHandheld: false,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "IQUEGBA",
                       jpnName: "小神游GBA",
                       consoleName: "iQue GameBoy Advance",
                       mostSoldGame: "Super Mario World - Super Mario Advance 2",
                       initialPrice: "$72.00",
                       ReleaseDate: "June 8, 2004",
                       Discontinuation: "2010",
                       category: "iQue",
                       estimatedPricedToday: "$500-700 used depending on condition",
                       cables: "2x AA Batteries",
                       processor: "ARM7TDMI (16.8 MHz) & Sharp LR35902 (4.194 MHz)",
                       screenSize: "2.9 inch TFT",
                       modelNumber: "AGB-001",
                       dims: """
                       W: 5.7\"
                        H: 3.2\"
                        D: 0.96\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: false),
        ConsoleDetails(imgName: "IQUEGBASP",
                       jpnName: "小神游GBA SP",
                       consoleName: "iQue GameBoy Advance SP",
                       mostSoldGame: "Super Mario World - Super Mario Advance 2",
                       initialPrice: "$72.00",
                       ReleaseDate: "Oct 28, 2004",
                       Discontinuation: "2008",
                       category: "iQue",
                       estimatedPricedToday: "$500-700 used depending on condition",
                       cables: "AC Adapter",
                       processor: "RISC-CPU (16.78 MHz)",
                       screenSize: "2.9 inch Backlit (AGS-101) / Frontlit (AGS-001) TFT",
                       modelNumber: "AGS-001 (Frontlit) or AGS-101 (Backlit)",
                       dims: """
                       W: 3.23\"
                        H: 3.3\"
                        D: 2.44\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: false),
        ConsoleDetails(imgName: "IQUEGBM",
                       consoleName: "iQue Micro",
                       mostSoldGame: "Super Mario World - Super Mario Advance 2",
                       initialPrice: "$99.00",
                       ReleaseDate: "Oct 1, 2005",
                       Discontinuation: "2008",
                       category: "iQue",
                       estimatedPricedToday: "$400-700 used depending on condition",
                       cables: "AC Adapter",
                       processor: "ARM7TDMI (16.78 MHz)",
                       screenSize: "2 inch backlit TFT",
                       modelNumber: "OXY-001",
                       dims: """
                       W: 2\"
                        H: 4\"
                        D: 0.7\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: false),
        ConsoleDetails(imgName: "IQUEDS",
                       jpnName: "",
                       consoleName: "iQue DS",
                       mostSoldGame: "New Super Mario Bros.",
                       initialPrice: "$130.00",
                       ReleaseDate: "July 23, 2005",
                       Discontinuation: "2009",
                       category: "iQue",
                       estimatedPricedToday: "$160-200 used depending on condition",
                       cables: "AC Adapter",
                       processor: "ARM946E-S (16.78 MHz)",
                       screenSize: """
                       Top: 3 inch display
                       Bottom: 3 inch resistive touch screen
                       """,
                       modelNumber: "NTR-001",
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "IQUEDSLITE",
                       jpnName: "",
                       consoleName: "iQue DS Lite",
                       mostSoldGame: "New Super Mario Bros.",
                       initialPrice: "$110.00",
                       ReleaseDate: "June 26, 2006",
                       Discontinuation: "2011",
                       category: "iQue",
                       estimatedPricedToday: "$160-200 used depending on condition",
                       cables: "AC Adapter",
                       processor: "ARM7 (33 MHz) and ARM9 (67 MHz)",
                       screenSize: """
                       Top: 3 inch display
                        Bottom: 3 inch resistive touch screen
                       """,
                       modelNumber: "UGS-001",
                       dims: """
                       W: 5.2\"
                        H: 2.9\" (closed) 5.47\" (opened)
                        D: 0.85\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "IQUEDSI",
                       jpnName: "",
                       consoleName: "iQue DSi",
                       mostSoldGame: "New Super Mario Bros.",
                       initialPrice: "$129.99",
                       ReleaseDate: "Nov 1, 2008",
                       Discontinuation: "2014",
                       category: "iQue",
                       estimatedPricedToday: "$160-200 used depending on condition",
                       cables: "AC Adapter",
                       processor: "ARM7 (33 MHz) & ARM9 (133 MHz)",
                       screenSize: """
                       Top: 3.25 inch display
                        Bottom: 3.25 inch resistive touch screen
                       """,
                       modelNumber: "TWL-001",
                       dims: """
                       W: 5.39\"
                        H: 2.95\"
                        D: 0.74\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: true),
        ConsoleDetails(imgName: "IQUE3DSXL",
                       jpnName: "",
                       consoleName: "iQue 3DS XL",
                       mostSoldGame: "Mario Kart 7",
                       initialPrice: "$149.99",
                       ReleaseDate: "Dec, 2012",
                       Discontinuation: "2019",
                       category: "iQue",
                       estimatedPricedToday: "$200-300 used depending on condition",
                       cables: "AC Adapter",
                       processor: "Dual Core ARM11 MPCore (268 MHz)",
                       screenSize: """
                       Top: 4.88 inch display
                        Bottom: 4.18 inch resistive touch screen
                       """,
                       modelNumber: "SPR-001",
                       dims: """
                       W: 6.1\"
                        H: 3.7\"
                        D: 0.87\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: true),
        
        //Old Handhelds
        ConsoleDetails(imgName: "GB_FAT",
                       jpnName: "ゲームボーイ",
                       consoleName: "Original GameBoy",
                       mostSoldGame: "Tetris",
                       initialPrice: "$89.99",
                       ReleaseDate:  """
                       US: July 31st, 1989
                        JPN: April 21st, 1989
                        EU: September 28th, 1990
                       """,
                       Discontinuation: "2001",
                       category: "Game Boy",
                       estimatedPricedToday: "$50-130 used depending on condition",
                       cables: "4x AA Batteries",
                       processor: "Sharp LR35902 (4.19 MHz)",
                       screenSize: "2.6 inch LCD",
                       modelNumber: "DMG-001",
                       dims: """
                       W: 3.5\"
                        H: 5.8\"
                        D: 1.3\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: false),
        ConsoleDetails(imgName: "VB",
                       jpnName: "バーチャルボーイ",
                       consoleName: "Virtual Boy",
                       mostSoldGame: "Wario Land",
                       initialPrice: "$179.95",
                       ReleaseDate:  """
                       US: August 14th, 1995
                        JPN: July 21st, 1995
                        EU: -
                       """,
                       Discontinuation: "1996",
                       category: "Game Boy",
                       estimatedPricedToday: "$60-250 used depending on condition",
                       cables: "6x AA Batteries",
                       processor: "NEC V810 (20 MHz)",
                       screenSize: "2x 384x224 Red 2 Bit Displays",
                       modelNumber: "VUE-001",
                       dims: """
                       W: 10\"
                        H: 8.5\"
                        D: 4.3\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: false),
        ConsoleDetails(imgName: "GB_POCKET",
                       jpnName: "ゲームボーイポケット",
                       consoleName: "GameBoy Pocket",
                       mostSoldGame: "Tetris",
                       initialPrice: "$69.99",
                       ReleaseDate:  """
                       US: September 3rd, 1996
                        JPN: July 21st, 1996
                        EU: -
                       """,
                       Discontinuation: "2003",
                       category: "Game Boy",
                       estimatedPricedToday: "$50-80 used depending on condition",
                       cables: "2x AAA Batteries",
                       processor: "Sharp LR35902 (4.19 MHz)",
                       screenSize: "2.6 inch LCD",
                       modelNumber: "MGB-001",
                       dims: """
                       W: 3.05\"
                        H: 5.02\"
                        D: 0.99\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GB_LIGHT",
                       jpnName: " ゲームボーイライト",
                       consoleName: "GameBoy Light",
                       mostSoldGame: "Tetris",
                       initialPrice: "$89.99",
                       ReleaseDate:  """
                       US: -
                        JPN: April 14th, 1998
                        EU: -
                       """,
                       Discontinuation: "2003",
                       category: "Game Boy",
                       estimatedPricedToday: "$90-140 used depending on condition",
                       cables: "2x AAA Batteries",
                       processor: "Sharp LR35902 (4.19 MHz)",
                       screenSize: "2.6 inch Frontlit LCD",
                       modelNumber: "MGB-101",
                       dims: """
                       W: 5.08\"
                        H: 6.54\"
                        D: 2.76\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: false),
        ConsoleDetails(imgName: "GBC",
                       jpnName: "ゲームボーイカラー",
                       consoleName: "GameBoy Color",
                       mostSoldGame: "Pokémon Red/Blue/Yellow/Green",
                       initialPrice: "$69.99",
                       ReleaseDate:  """
                       US: November 18th, 1998
                        JPN: October 21st, 1998
                        EU: November 23rd, 1998
                       """,
                       Discontinuation: "2003",
                       category: "Game Boy",
                       estimatedPricedToday: "$50-130 used depending on condition",
                       cables: "2x AA Batteries",
                       processor: "Sharp LR35902 (8.4 MHz)",
                       screenSize: "2.9 inch TFT",
                       modelNumber: "CGB-001",
                       dims: """
                       W: 3.07\"
                        H: 5.25\"
                        D: 1.07\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: false),
        ConsoleDetails(imgName: "GBA",
                       jpnName: "ゲームボーイアドバンス",
                       consoleName: "GameBoy Advance",
                       mostSoldGame: "Pokémon Ruby/Sapphire",
                       initialPrice: "$99.99",
                       ReleaseDate:  """
                       US: June 11th, 2001
                        JPN: March 21st, 2001
                        EU: June 22nd, 2001
                       """,
                       Discontinuation: "2010",
                       category: "Game Boy",
                       estimatedPricedToday: "$40-100 used depending on condition",
                       cables: "2x AA Batteries",
                       processor: "ARM7TDM (16.8 MHz)",
                       screenSize: "2.9 inch TFT",
                       modelNumber: "AGB-001",
                       dims: """
                       W: 5.7\"
                        H: 3.2\"
                        D: 0.96\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GBA_SP",
                       jpnName: "ゲームボーイアドバンスSP",
                       consoleName: "GameBoy Advance SP",
                       mostSoldGame: "Pokémon Ruby/Sapphire",
                       initialPrice: "$99.99",
                       ReleaseDate:  """
                       US: March 23rd, 2003
                        JPN: February 14th, 2003
                        EU: March 28th, 2003
                       """,
                       Discontinuation: "2008",
                       category: "Game Boy",
                       estimatedPricedToday: "$70-130 used depending on condition",
                       cables: "AC Adapter",
                       processor: "ARM7TDM (16.8 MHz)",
                       screenSize: "2.9 inch TFT",
                       modelNumber: "AGS-001 (Frontlit) AGS-101 (Backlit)",
                       dims: """
                       W: 3.23\"
                        H: 3.3\"
                        D: 2.44\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: false),
        ConsoleDetails(imgName: "GB_MICRO",
                       jpnName: "ゲームボーイミクロ",
                       consoleName: "GameBoy Micro",
                       mostSoldGame: "Pokémon Ruby/Sapphire",
                       initialPrice: "$99.99",
                       ReleaseDate:  """
                       US: September 19th, 2005
                        JPN: September 13th, 2005
                        EU: November 4th, 2005
                       """,
                       Discontinuation: "2008",
                       category: "Game Boy",
                       estimatedPricedToday: "$80-200 used depending on condition",
                       cables: "AC Adapter",
                       processor: "16.8 MHz ARM",
                       screenSize: "2 inch backlit TFT",
                       modelNumber: "OXY-001",
                       dims: """
                       W: 2\"
                        H: 4\"
                        D: 0.7\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true,
                       isRegionLocked: false),
        //Game & Watch
        ConsoleDetails(imgName: "GW01",
                       consoleName: "Ball",
                       mostSoldGame: "Silver",
                       initialPrice: "84.99",
                       ReleaseDate: "Apr 28, 1980",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "AC-01",
                       dims: """
                      W: 3.74\"
                       H: 2.48\"
                       D: 0.45\"
                      """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW02",
                       consoleName: "Flagman",
                       mostSoldGame: "Silver",
                       initialPrice: "84.99",
                       ReleaseDate: "June 5, 1980",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "FL-02",
                       dims: """
                       W: 3.74\"
                        H: 2.48\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW03",
                       consoleName: "Vermin",
                       mostSoldGame: "Silver",
                       initialPrice: "84.99",
                       ReleaseDate: "July 10, 1980",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "MT-03",
                       dims: """
                       W: 3.74\"
                        H: 2.48\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW04",
                       consoleName: "Fire",
                       mostSoldGame: "Silver",
                       initialPrice: "84.99",
                       ReleaseDate: "July 31, 1980",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "RC-04",
                       dims: """
                       W: 3.74\"
                        H: 2.48\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW05",
                       consoleName: "Judge",
                       mostSoldGame: "Silver",
                       initialPrice: "84.99",
                       ReleaseDate: "Oct 4, 1980",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "IP-05",
                       dims: """
                       W: 3.74\"
                        H: 2.48\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW06",
                       consoleName: "Manhole",
                       mostSoldGame: "Gold",
                       initialPrice: "84.99",
                       ReleaseDate: "Jan 29, 1981",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "MH-06",
                       dims: """
                       W: 3.74\"
                        H: 2.48\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW07",
                       consoleName: "Helmet",
                       mostSoldGame: "Gold",
                       initialPrice: "84.99",
                       ReleaseDate: "Feb 21, 1981",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "CN-07",
                       dims: """
                       W: 3.74\"
                        H: 2.48\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW08",
                       consoleName: "Lion",
                       mostSoldGame: "Gold",
                       initialPrice: "84.99",
                       ReleaseDate: "Apr 29, 1981",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "LN-08",
                       dims: """
                       W: 3.74\"
                        H: 2.48\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW09",
                       consoleName: "Parachute",
                       mostSoldGame: "Wide Sceen",
                       initialPrice: "84.99",
                       ReleaseDate: "June 19, 1981",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "PR-21",
                       dims: """
                       W: 4.4\"
                        H: 2.6\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW10",
                       consoleName: "Octopus",
                       mostSoldGame: "Wide Sceen",
                       initialPrice: "84.99",
                       ReleaseDate: "July 16, 1981",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "OC-22",
                       dims: """
                       W: 4.4\"
                        H: 2.6\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW11",
                       consoleName: "Popeye",
                       mostSoldGame: "Wide Sceen",
                       initialPrice: "84.99",
                       ReleaseDate: "Aug 4, 1983",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "PP-23",
                       dims: """
                       W: 4.4\"
                        H: 2.6\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW12",
                       consoleName: "Chef",
                       mostSoldGame: "Wide Sceen",
                       initialPrice: "84.99",
                       ReleaseDate: "Sep 8, 1981",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "FP-24",
                       dims: """
                       W: 4.4\"
                        H: 2.6\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW13",
                       consoleName: "Mickey Mouse",
                       mostSoldGame: "Wide Sceen",
                       initialPrice: "84.99",
                       ReleaseDate: "Oct 9, 1981",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "MC-25",
                       dims: """
                       W: 4.4\"
                        H: 2.6\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW14",
                       consoleName: "Egg",
                       mostSoldGame: "Wide Sceen",
                       initialPrice: "84.99",
                       ReleaseDate: "Oct 9, 1981",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "EG-26",
                       dims: """
                       W: 4.4\"
                        H: 2.6\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW15",
                       consoleName: "Turtle Bridge",
                       mostSoldGame: "Wide Sceen",
                       initialPrice: "84.99",
                       ReleaseDate: "Feb 1, 1982",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "TL-28",
                       dims: """
                       W: 4.4\"
                        H: 2.6\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW16",
                       consoleName: "Fire Attack",
                       mostSoldGame: "Wide Sceen",
                       initialPrice: "84.99",
                       ReleaseDate: "March 26, 1982",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "ID-29",
                       dims: """
                       W: 4.4\"
                        H: 2.6\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW17",
                       consoleName: "Snoopy Tennis",
                       mostSoldGame: "Wide Sceen",
                       initialPrice: "84.99",
                       ReleaseDate: "Apr 28, 1982",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "SP-30",
                       dims: """
                       W: 4.4\"
                        H: 2.6\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW18",
                       consoleName: "Oil Panic",
                       mostSoldGame: "Multi-Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "May 28, 1982",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2x 2.5 inch LCD",
                       modelNumber: "OP-51",
                       dims: """
                       W: 4.52\"
                        H: 2.95\" (Closed), 5.51\" (Opened)
                        D: 0.98\" (Closed), 0.59\" (Opened)
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW19",
                       consoleName: "Donkey Kong",
                       mostSoldGame: "Multi-Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "June 3, 1982",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2x 2.5 inch LCD",
                       modelNumber: "DK-52",
                       dims: """
                       W: 4.52\"
                        H: 2.95\" (Closed), 5.51\" (Opened)
                        D: 0.98\" (Closed), 0.59\" (Opened)
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW20",
                       consoleName: "Mickey & Donald",
                       mostSoldGame: "Multi-Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "Nov 12, 1982",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2x 2.5 inch LCD",
                       modelNumber: "MD-53",
                       dims: """
                       W: 4.52\"
                        H: 2.95\" (Closed), 5.51\" (Opened)
                        D: 0.98\" (Closed), 0.59\" (Opened)
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW21",
                       consoleName: "Greenhouse",
                       mostSoldGame: "Multi-Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "Dec 6, 1982",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2x 2.5 inch LCD",
                       modelNumber: "GH-54",
                       dims: """
                       W: 4.52\"
                        H: 2.95\" (Closed), 5.51\" (Opened)
                        D: 0.98\" (Closed), 0.59\" (Opened)
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW22",
                       consoleName: "Donkey Kong 2",
                       mostSoldGame: "Multi-Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "March 7, 1983",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2x 2.5 inch LCD",
                       modelNumber: "JR-55",
                       dims: """
                       W: 4.52\"
                        H: 2.95\" (Closed), 5.51\" (Opened)
                        D: 0.98\" (Closed), 0.59\" (Opened)
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW23",
                       consoleName: "Mario Bros.",
                       mostSoldGame: "Multi-Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "March 14, 1983",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2x 2.5 inch LCD",
                       modelNumber: "MW-56",
                       dims: """
                       W: 4.52\"
                        H: 2.95\" (Closed), 5.51\" (Opened)
                        D: 0.98\" (Closed), 0.59\" (Opened)
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW24",
                       consoleName: "Rain Shower",
                       mostSoldGame: "Multi-Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "Aug 10, 1983",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2x 2.5 inch LCD",
                       modelNumber: "LP-57",
                       dims: """
                       W: 4.52\"
                        H: 2.95\" (Closed), 5.51\" (Opened)
                        D: 0.98\" (Closed), 0.59\" (Opened)
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW25",
                       consoleName: "Life Boat",
                       mostSoldGame: "Multi-Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "Oct 25, 1983",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2x 2.5 inch LCD",
                       modelNumber: "TC-58",
                       dims: """
                       W: 4.52\"
                        H: 2.95\" (Closed), 5.51\" (Opened)
                        D: 0.98\" (Closed), 0.59\" (Opened)
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW26",
                       consoleName: "Pinball",
                       mostSoldGame: "Multi-Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "Dec 5, 1983",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2x 2.5 inch LCD",
                       modelNumber: "PB-59",
                       dims: """
                       W: 4.52\"
                        H: 2.95\" (Closed), 5.51\" (Opened)
                        D: 0.98\" (Closed), 0.59\" (Opened)
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW27",
                       consoleName: "Black Jack",
                       mostSoldGame: "Multi-Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "Feb 15, 1985",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2x 2.5 inch LCD",
                       modelNumber: "BJ-60",
                       dims: """
                       W: 4.52\"
                        H: 2.95\" (Closed), 5.51\" (Opened)
                        D: 0.98\" (Closed), 0.59\" (Opened)
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW28",
                       consoleName: "Squish",
                       mostSoldGame: "Multi-Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "Apr 1986",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2x 2.5 inch LCD",
                       modelNumber: "MG-61",
                       dims: """
                       W: 4.52\"
                        H: 2.95\" (Closed), 5.51\" (Opened)
                        D: 0.98\" (Closed), 0.59\" (Opened)
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW29",
                       consoleName: "Bombsweeper",
                       mostSoldGame: "Multi-Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "Jun 1987",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2x 2.5 inch LCD",
                       modelNumber: "BD-62",
                       dims: """
                       W: 4.52\"
                        H: 2.95\" (Closed), 5.51\" (Opened)
                        D: 0.98\" (Closed), 0.59\" (Opened)
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW30",
                       consoleName: "Safebuster",
                       mostSoldGame: "Multi-Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "Jan, 1988",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2x 2.5 inch LCD",
                       modelNumber: "JB-63",
                       dims: """
                       W: 4.52\"
                        H: 2.95\" (Closed), 5.51\" (Opened)
                        D: 0.98\" (Closed), 0.59\" (Opened)
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW31",
                       consoleName: "Gold Cliff",
                       mostSoldGame: "Multi-Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "Oct 1988",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2x 2.5 inch LCD",
                       modelNumber: "MV-64",
                       dims: """
                       W: 4.52\"
                        H: 2.95\" (Closed), 5.51\" (Opened)
                        D: 0.98\" (Closed), 0.59\" (Opened)
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW32",
                       consoleName: "Zelda",
                       mostSoldGame: "Multi-Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "Aug, 1989",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2x 2.5 inch LCD",
                       modelNumber: "ZL-65",
                       dims: """
                       W: 4.52\"
                        H: 2.95\" (Closed), 5.51\" (Opened)
                        D: 0.98\" (Closed), 0.59\" (Opened)
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW33",
                       consoleName: "Donkey Kong Jr.",
                       mostSoldGame: "New Wide Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "Oct 26, 1982",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "DJ-101",
                       dims: """
                       W: 4.4\"
                        H: 2.6\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW34",
                       consoleName: "Mario's Cement Factory",
                       mostSoldGame: "New Wide Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "June 16, 1983",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "ML-102",
                       dims: """
                       W: 4.4\"
                        H: 2.6\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW35",
                       consoleName: "Tropical Fish",
                       mostSoldGame: "New Wide Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "July 9, 1985",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "TF-104",
                       dims: """
                       W: 4.4\"
                        H: 2.6\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW36",
                       consoleName: "Super Mario Bros.",
                       mostSoldGame: "New Wide Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "Mar 8, 1988",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "YM-105",
                       dims: """
                       W: 4.4\"
                        H: 2.6\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true),
        ConsoleDetails(imgName: "GW37",
                       consoleName: "Climber",
                       mostSoldGame: "New Wide Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "Mar 8, 1988",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "DR-106",
                       dims: """
                       W: 4.4\"
                        H: 2.6\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW38",
                       consoleName: "Ballon Fight",
                       mostSoldGame: "New Wide Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "Mar 8, 1988",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "BF-107",
                       dims: """
                       W: 4.4\"
                        H: 2.6\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW39",
                       consoleName: "Mario the Juggler",
                       mostSoldGame: "New Wide Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "Oct 16, 1991",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "MB-108",
                       dims: """
                       W: 4.4\"
                        H: 2.6\"
                        D: 0.45\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW40",
                       consoleName: "Donkey Kong Jr.",
                       mostSoldGame: "Tabletop",
                       initialPrice: "84.99",
                       ReleaseDate: "Apr 28, 1983",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "CJ-71",
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW41",
                       consoleName: "Mario's Cement Factory",
                       mostSoldGame: "Tabletop",
                       initialPrice: "84.99",
                       ReleaseDate: "Apr 28, 1983",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "CM-72",
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW42",
                       consoleName: "Snoopy",
                       mostSoldGame: "Tabletop",
                       initialPrice: "84.99",
                       ReleaseDate: "July 5, 1983",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "SM-73",
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW43",
                       consoleName: "Popeye",
                       mostSoldGame: "Tabletop",
                       initialPrice: "84.99",
                       ReleaseDate: "Aug 17, 1983",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "PG-74",
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW44",
                       consoleName: "Snoopy",
                       mostSoldGame: "Panorama",
                       initialPrice: "84.99",
                       ReleaseDate: "Aug 30, 1983",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "3 inch LCD",
                       modelNumber: "SM-91",
                       dims: """
                       W: 3.46\"
                        H: 5.74\"
                        D: 0.82\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW45",
                       consoleName: "Popeye",
                       mostSoldGame: "Panorama",
                       initialPrice: "84.99",
                       ReleaseDate: "Aug 30, 1983",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "3 inch LCD",
                       modelNumber: "PG-92",
                       dims: """
                       W: 3.46\"
                        H: 5.74\"
                        D: 0.82\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW46",
                       consoleName: "Donkey Kong Jr.",
                       mostSoldGame: "Panorama",
                       initialPrice: "84.99",
                       ReleaseDate: "Oct 7, 1983",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "3 inch LCD",
                       modelNumber: "CJ-93",
                       dims: """
                       W: 3.46\"
                        H: 5.74\"
                        D: 0.82\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW47",
                       consoleName: "Mario's Bombs Away",
                       mostSoldGame: "Panorama",
                       initialPrice: "84.99",
                       ReleaseDate: "Nov 10, 1983",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "3 inch LCD",
                       modelNumber: "TB-94",
                       dims: """
                       W: 3.46\"
                        H: 5.74\"
                        D: 0.82\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW48",
                       consoleName: "Mickey Mouse",
                       mostSoldGame: "Panorama",
                       initialPrice: "84.99",
                       ReleaseDate: "Feb 14, 1984",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "3 inch LCD",
                       modelNumber: "DC-95",
                       dims: """
                       W: 3.46\"
                        H: 5.74\"
                        D: 0.82\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW49",
                       consoleName: "Donkey Kong Circus",
                       mostSoldGame: "Panorama",
                       initialPrice: "84.99",
                       ReleaseDate: "Sep 6, 1984",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "3 inch LCD",
                       modelNumber: "MK-96",
                       dims: """
                       W: 3.46\"
                        H: 5.74\"
                        D: 0.82\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW50",
                       consoleName: "Spitball Sparky",
                       mostSoldGame: "Super Color",
                       initialPrice: "84.99",
                       ReleaseDate: "Feb 7, 1984",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "3 inch LCD",
                       modelNumber: "BU-201",
                       dims: """
                       W: 2.75\"
                        H: 5.7\"
                        D: 0.47\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW51",
                       consoleName: "Crab Grab",
                       mostSoldGame: "Super Color",
                       initialPrice: "84.99",
                       ReleaseDate: "Feb 21, 1984",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "3 inch LCD",
                       modelNumber: "UD-202",
                       dims: """
                       W: 2.75\"
                        H: 5.7\"
                        D: 0.47\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW52",
                       consoleName: "Boxing",
                       mostSoldGame: "Micro VS.",
                       initialPrice: "84.99",
                       ReleaseDate: "July 30, 1984",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "3 inch LCD",
                       modelNumber: "BX-301",
                       dims: """
                       W: 6.22\"
                        H: 3.38\"
                        D: 0.94\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW53",
                       consoleName: "Donkey Kong 3",
                       mostSoldGame: "Micro VS.",
                       initialPrice: "84.99",
                       ReleaseDate: "Aug 20, 1984",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "3 inch LCD",
                       modelNumber: "AK-302",
                       dims: """
                       W: 6.22\"
                        H: 3.38\"
                        D: 0.94\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW54",
                       consoleName: "Donkey Kong Hockey",
                       mostSoldGame: "Micro VS.",
                       initialPrice: "84.99",
                       ReleaseDate: "Nov 13, 1984",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "3 inch LCD",
                       modelNumber: "HK-303",
                       dims: """
                       W: 6.22\"
                        H: 3.38\"
                        D: 0.94\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW55",
                       consoleName: "Super Mario Bros.",
                       mostSoldGame: "Crystal Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "June 25, 1986",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "3 inch LCD",
                       modelNumber: "YM-801",
                       dims: """
                       W: 2.4\"
                        H: 5.66\"
                        D: 0.31\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW56",
                       consoleName: "Climber",
                       mostSoldGame: "Crystal Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "July 4, 1986",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "3 inch LCD",
                       modelNumber: "DR-802",
                       dims: """
                       W: 2.4\"
                        H: 5.66\"
                        D: 0.31\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW57",
                       consoleName: "Balloon Fight",
                       mostSoldGame: "Crystal Screen",
                       initialPrice: "84.99",
                       ReleaseDate: "Nov 19, 1986",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$70-200 used depending on condition",
                       cables: "2 LR44 batteries",
                       processor: "Sharp SM5xx family",
                       screenSize: "3 inch LCD",
                       modelNumber: "BF-803",
                       dims: """
                       W: 2.4\"
                        H: 5.66\"
                        D: 0.31\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true),
        ConsoleDetails(imgName: "GW58",
                       consoleName: "Ball",
                       mostSoldGame: "Club Nintendo",
                       initialPrice: "84.99",
                       ReleaseDate: "Sept 30, 2015",
                       Discontinuation: "1991",
                       category: "Game & Watch",
                       estimatedPricedToday: "$50-100 used depending on condition",
                       cables: "1 CR2024",
                       processor: "Sharp SM5xx family",
                       screenSize: "2.35 inch LCD",
                       modelNumber: "RGW-001",
                       dims: """
                       W: 9.40\"
                        H: 4.01\"
                        D: 0.55\"
                       """,
                       favorites: false,
                       discontinued: true,
                       isHandheld: true)]
    
    
    
}
