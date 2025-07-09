//
//  Constants.swift
//  DailyWater
//
//  Created by 이민지 on 7/9/25.
//


import SwiftUI

struct AppConstants {
    
    // MARK: - Colors
    struct Colors {
        static let primaryColor = Color(red: 0.51, green: 0.76, blue: 0.98) // 물 색상, 버튼 텍스트,
        static let backgroudColor = Color(red: 0.95, green: 0.95, blue: 0.95)
        static let text65 = Color(red: 0.65, green: 0.65, blue: 0.65)
        static let text73 = Color(red: 0.73, green: 0.73, blue: 0.73)
        static let text54 = Color(red: 0.54, green: 0.54, blue: 0.54)
        
        
    }
    
    // MARK: - Typography
    struct Typography {
        static let boldTitle = Font.custom("Pretendard", size: 32) // 사용자 정보 입력
        static let thinTitle = Font.custom("Pretendard", size: 32).weight(.thin)
        static let modalTitle = Font.custom("Pretendard", size: 28).weight(.thin) // 모달 타이틀
        
        static let formLabel = Font.custom("Pretendard", size: 32)
        
        static let settingTitle = Font.custom("Pretendard", size: 20)
        static let settingCaption = Font.custom("Pretendard", size: 16)
        
        static let screenTitle = Font.custom("Pretendard", size: 24)
        
    }
    
    
    // MARK: - Default Values
    struct Defaults {
        static let height = "180 kg"
        static let weight = "70 kg"
        static let defaultWater = "500 ml"
    }
    
}
