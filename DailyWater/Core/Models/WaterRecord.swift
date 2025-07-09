//
//  WaterRecord.swift
//  DailyWater
//
//  Created by 이민지 on 7/10/25.
//

import Foundation


// MARK: - 물 섭취 기록 생성자
struct WaterRecord: Identifiable, Codable, Equatable {
    let id: UUID
    let amount: Double // 살수
    let timestamp: Date
    
    // 기본 생성자
    init(amount: Double, timestamp: Date = Date()) {
        self.id = UUID()
        self.amount = amount
        self.timestamp = timestamp
    }
    
    
}


extension WaterRecord {
    
    // 기록된 날짜(시간 제외)
    var recordDate: Date {
        Calendar.current.startOfDay(for: timestamp)
    }
    
    // TODO: - 물 양 리터 단위로 변환(계산된 프로퍼티)
   
    
    // TODO: - 문자열 변환(L, ml 단위)(계산된 프로퍼티)
    
}



extension Array where Element == WaterRecord {
    
    // 특정 날짜 기록들만 필터링
    /*
     * params : 날짜
     */
    func recordsForDate(_ date: Date) -> [WaterRecord] {
        let targetDate = Calendar.current.startOfDay(for: date)
        return self.filter { record in
            Calendar.current.isDate(record.timestamp, inSameDayAs: targetDate)}
    }
    
    // 특정 날짜 총 섭취량
    func totalAmount(_ date: Date) -> Double {
        recordsForDate(date).reduce(0) { $0 + $1.amount}
    }
    
    
    // 날짜별로 그룹화된 딕셔너리 반환
    func groupByDate() -> [Date: [WaterRecord]] {
        Dictionary(grouping: self) { record in
            Calendar.current.startOfDay(for: record.timestamp)
        }
    }
}
