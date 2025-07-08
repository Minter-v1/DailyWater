//
//  Constants.swift
//  DailyWater
//
//  Created by 이민지 on 7/9/25.
//


import SwiftUI

struct AppConstants {
    
    // MARK: - Colors
    // TODO: - 색상 정의
    struct Colors {}
    
    // MARK: - Typography
    // TODO: - 색상 등록 필요
    struct Typography {
        static let boldTitle = Font.custom("Pretendard", size: 32)
        static let thinTitle = Font.custom("Pretendard", size: 32).weight(.thin)
        static let modalTitle = Font.custom("Pretendard", size: 28).weight(.thin)
        
        static let infoCaption = Font.custom("Pretendard", size: 32)
        
        static let settingTitle = Font.custom("Pretendard", size: 20)
        static let settingCaption = Font.custom("Pretendard", size: 16)
        
        static let screenTitle = Font.custom("Pretendard", size: 24)
        
    }
    
    
    // MARK: - Default Values
    // TODO: - 기본값 정의
    struct Defaults {}
    
}
