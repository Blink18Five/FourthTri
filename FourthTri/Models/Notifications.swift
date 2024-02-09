//
//  Notifications.swift
//  FourthTri
//
//  Created by Ethan Bast on 2/7/24.
//

import Foundation


enum NotificationType: String {
    
    // RAW REPRESENTABLE CAUSES AN ERROR
    
    case sale
    case userCalendar
    case dailyTask
    case checkIn
    
    func getNotificationIcon(icon: NotificationType) -> String {
        
        switch icon {
        case .sale:
            return "gift"
        case .userCalendar:
            return "calendar"
        case .dailyTask:
            return "timer"
        case .checkIn:
            return "qrcode"
        }
        
    }
    
}
