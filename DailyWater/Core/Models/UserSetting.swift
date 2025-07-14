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
    var dailyGoal: Double
    
    // 알람 설정
    var notification: Bool
    
    // 추천 옵션
    var recommandation: Bool
    
    // 앱 사용 시작일
    var startDate: Date
    
    init(
        dailyGoal: Double = 2000,
        notification: Bool = true,
        recommandation: Bool = true,
        startDate: Date = Date()
    ) {
        self.dailyGoal = dailyGoal
        self.notification = notification
        self.recommandation = recommandation
        self.startDate = startDate
    }
    
}





// MARK: - 알람 시간 설정
struct NotificationTime: Identifiable, Codable, Equatable {
    let id: UUID
    let hour: Int
    let minute: Int
    
    // 생성자(내부 UUID 할당)
    init (hour: Int, minute: Int) {
        self.id = UUID()
        self.hour = hour
        self.minute = minute
    }
    
    // 시간 -> Date 객체 변환
    var dateComponent: DateComponents {
        var components = DateComponents()
        components.hour = hour
        components.minute = minute
        return components
    }
}



// MARK: - 고정된 알림 시간(09:00~21:00, by: 3h)
extension NotificationTime {
    static var fixedTiems: [NotificationTime] {
        [
            NotificationTime(hour: 9, minute: 0),
            NotificationTime(hour: 12, minute: 0),
            NotificationTime(hour: 15, minute: 0),
            NotificationTime(hour: 18, minute: 0),
            NotificationTime(hour: 21, minute: 0),
            
        ]
    }
}


// MARK: - 샘플 데이터
extension UserSetting {
    static var `default`: UserSetting {
        UserSetting()
    }
    
    // 많은 물의 양
    static var highGoal: UserSetting {
        UserSetting (
            dailyGoal: 3000
        )
    }
    
    // 알림 비활성화
    static var noNotification: UserSetting {
        UserSetting(
            dailyGoal: 1500,
            notification: false
        )
    }
}
