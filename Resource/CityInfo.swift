//
//  CityInfo.swift
//  0711HW
//
//  Created by Jimin on 7/16/25.
//

import Foundation

struct City {
    let cityName: String
    let cityEnglishName: String
    let cityExplain: String
    let cityImage: String
    let domesticTravel: Bool
}

struct CityInfo {
    let city: [City] = [
        City(cityName: "방콕", cityEnglishName: "Bangkok", cityExplain: "방콕, 파타야, 후아힌, 코사멧, 코사무이", cityImage: "https://images.unsplash.com/photo-1716872491897-078d9b89be49?q=80&w=3540&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domesticTravel: false),
        City(cityName: "오사카", cityEnglishName: "Osaka", cityExplain: "오사카, 교토, 고베, 나라", cityImage: "https://images.unsplash.com/photo-1716881768763-4088391a445e?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domesticTravel: false),
        City(cityName: "다낭", cityEnglishName: "Danang", cityExplain: "다낭, 호이안, 후에", cityImage: "https://images.unsplash.com/photo-1716619240251-54a22779ed8a?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domesticTravel: false),
        City(cityName: "제주", cityEnglishName: "Jeju", cityExplain: "제주, 섭지코지, 성산일출봉", cityImage: "https://images.unsplash.com/photo-1716565679084-2c3dbececc5e?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domesticTravel: true),
        City(cityName: "부산", cityEnglishName: "Busan", cityExplain: "부산, 해운대, 마린시티", cityImage: "https://images.unsplash.com/photo-1716619222059-62e8670293e6?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domesticTravel: true),
        City(cityName: "파리", cityEnglishName: "Paris", cityExplain: "파리, 베르사유, 몽생미셀, 스트라스부르", cityImage: "https://images.unsplash.com/photo-1715638427009-8b0fe7096838?q=80&w=3542&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domesticTravel: false),
        City(cityName: "시드니", cityEnglishName: "Sydney", cityExplain: "시드니, 블루마운틴, 울릉공, 뉴캐슬", cityImage: "https://images.unsplash.com/photo-1716117273853-75a1989029f2?q=80&w=3464&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domesticTravel: false),
        City(cityName: "전주", cityEnglishName: "Jeonju", cityExplain: "전주, 한옥 마을, 오목대, 경기전", cityImage: "https://images.unsplash.com/photo-1715646527352-3e9a4e406952?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domesticTravel: true),
        City(cityName: "밀라노", cityEnglishName: "Milano", cityExplain: "밀라노, 꼬모, 베로나, 베르가모, 시르미오네", cityImage: "https://plus.unsplash.com/premium_photo-1715616257496-5e14778bbc0c?q=80&w=3415&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domesticTravel: false),
        City(cityName: "리스본", cityEnglishName: "Lisbon", cityExplain: "리스본, 신트라, 카스카이스, 오비두스", cityImage: "https://images.unsplash.com/photo-1715559067654-d485ab2618aa?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domesticTravel: false),
        City(cityName: "서울", cityEnglishName: "Seoul", cityExplain: "서울, 남산타워, 롯데타워, 경복궁", cityImage: "https://images.unsplash.com/photo-1715880005923-0013a6820a72?q=80&w=3540&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domesticTravel: true),
        City(cityName: "두바이", cityEnglishName: "Dubai", cityExplain: "두바이, 아부다비, 알 아인", cityImage: "https://images.unsplash.com/photo-1715073145727-393bbded41d9?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domesticTravel: false),
        City(cityName: "홍콩", cityEnglishName: "Hongkong", cityExplain: "홍콩, 마카오", cityImage: "https://images.unsplash.com/photo-1715547748806-dab4f4dfbc85?q=80&w=3387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domesticTravel: false),
        City(cityName: "토론토", cityEnglishName: "Toronto", cityExplain: "토론토, 나이아가라, 킹스턴, 블루마운틴", cityImage: "https://images.unsplash.com/photo-1715645943531-a57960d41818?q=80&w=3540&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domesticTravel: false),
        City(cityName: "대전", cityEnglishName: "Daejeon", cityExplain: "대전, 성심당", cityImage: "https://plus.unsplash.com/premium_photo-1695084221958-079096c96e05?q=80&w=3461&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", domesticTravel: true),
    ]
}
