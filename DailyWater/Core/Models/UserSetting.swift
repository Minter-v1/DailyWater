//
//  UserSetting.swift
//  DailyWater
//
//  Created by 이민지 on 7/10/25.
//

import Foundation

// TODO: - 사용자 설정 데이터 모델 구현
struct UserSetting: Codable, Equatable {
    // 일일 목표량
    var dailyGoal: Int
    
    // 알람 설정
    var notification: Bool
    
    // 추천 옵션
    var recommandation: Bool
    
    // 앱 사용 시작일
    var startDate: Date
    
    
}


// TODO: - 계산된 프로퍼티
