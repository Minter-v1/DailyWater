//
//  DailyProgress.swift
//  DailyWater
//
//  Created by 이민지 on 7/10/25.
//

import Foundation

// TODO: - 진행률 계산 및 시각화 데이터 구현
struct DailyProgress: Identifiable, Equatable {
    let id: UUID
    let date: Date
    let actualAmount: Double // 섭취량
    let goalAmount: Double // 목표량
    let records: [WaterRecord] // 물 섭취 기록자
    
    
    init(
        date: Date,
        actualAmount: Double,
        goalAmount: Double,
        records: [WaterRecord] = []
    ) {
        self.id = UUID()
        self.date = date
        self.actualAmount = actualAmount
        self.goalAmount = goalAmount
        self.records = records
        
    }
}


// MARK: - 진행률 처리
extension DailyProgress {
    
    // MARK: - 진행률 계산(%)
    var progressPercentage: Int {
        guard goalAmount > 0 else { return 0 }
        return Int((actualAmount / goalAmount) * 100)
    }
    
    
    // MARK: - 목표 달성 여부
    var isGoalAchieved: Bool {
        if (progressPercentage >= 100) {
            return true
        } else { return false }
    }
    
    // MARK: - 목표 대비 부족한 양
    var isremainedAmount: Double {
        max(0, goalAmount - actualAmount)
    }
    
    // MARK: - 물방울 높이
    var filedHeight: Double {
        min(1.0, Double(progressPercentage) / 100.0)
    }
    
}


// MARK: - method
extension DailyProgress {
    
    static func today(record: [WaterRecord], goalAmount: Double) -> DailyProgress {
        let today = Date() // 오늘 날짜
        let todayRecord = record.filter { Calendar.current.isDate($0.timestamp, inSameDayAs: today)} // 오늘 기록들
        let totalAmount = todayRecord.reduce(0) { $0 + $1.amount} // 오늘 섭취량 합산
        
        return DailyProgress(
            date: today,
            actualAmount: totalAmount,
            goalAmount: goalAmount,
            records: todayRecord
        )
    }
    
}
