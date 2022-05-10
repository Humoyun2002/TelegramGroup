//
//  KontactData.swift
//  TelegramGroup
//
//  Created by humoyun on 09/05/22.
//

import UIKit

struct Date {
    var imageFoto: String
    var name: String
    var vaqti: String
   
}
struct DataModel {
    let data = [
    Date(imageFoto: "woman",name: "asal", vaqti: "1 min oldin"),
    Date(imageFoto: "man",name: "Humoyun", vaqti: "5 min oldin"),
    Date(imageFoto: "man",name: "ali", vaqti: "10 min oldin"),
    Date(imageFoto: "man",name: "Shaxzod", vaqti: "11 min oldin"),
    Date(imageFoto: "woman",name: "munisa", vaqti: "12 min oldin"),
    Date(imageFoto: "man",name: "alex", vaqti: "12 min oldin"),
    Date(imageFoto: "man",name: "king", vaqti: "12 min oldin"),
    Date(imageFoto: "man",name: "alik", vaqti: "15 min oldin"),
    Date(imageFoto: "man",name: "behruz", vaqti: "20 min oldin"),
    Date(imageFoto: "woman",name: "asal", vaqti: "30 min oldin"),
    Date(imageFoto: "woman",name: "jayrona", vaqti: "1 soat oldin"),
    Date(imageFoto: "man",name: "abdulloh", vaqti: "6 soat oldin"),
    Date(imageFoto: "man",name: "karol", vaqti: "1 kun oldin"),
    Date(imageFoto: "man",name: "abdulaziz", vaqti: "2 kun oldin"),
    Date(imageFoto: "woman",name: "otika", vaqti: " 2 kun 3soat oldin"),
    Date(imageFoto: "woman",name: "shahzoda", vaqti: "2 kun 4soat oldin")

   ]
}



struct SettingsData{
    var imageSetting : String
    var nameSetting : String
}
struct SettingsDataModel {
    let SettingData = [
    SettingsData(imageSetting: "saved", nameSetting: "Saved Messages"),
    SettingsData(imageSetting: "phone", nameSetting: "Recent Calls"),
    SettingsData(imageSetting: "devices", nameSetting: "Devices"),
    SettingsData(imageSetting: "folder", nameSetting: "Chat Folders"),
    SettingsData(imageSetting: "notification", nameSetting: "Notifications and Sounds"),
    SettingsData(imageSetting: "padlock", nameSetting: "Privacy and Security"),
    SettingsData(imageSetting: "database", nameSetting: "Data and Storage"),
    SettingsData(imageSetting: "appearence", nameSetting: "Appearence"),
    SettingsData(imageSetting: "global", nameSetting: "Language"),
    SettingsData(imageSetting: "sticker", nameSetting: "Stickers and Emoji"),
    SettingsData(imageSetting: "ask", nameSetting: "Ask a Question"),
    SettingsData(imageSetting: "information", nameSetting: "Telegram FAQ"),
    SettingsData(imageSetting: "bulb", nameSetting: "Telegram Features")
    ]
}
