//
//  Notifications.swift
//  VT2NH
//
//  Created by Kevin Edwards on 12/19/24.
//


import UserNotifications
import SwiftUI

class Notifications {
    static func requestPermission() async {
        let options: UNAuthorizationOptions = [.alert, .badge, .sound]
        
        let center = UNUserNotificationCenter.current()
        do {
            let granted = try await center.requestAuthorization(options: options)
            if granted {
                print("Notification permission granted.")
            } else {
                print("Notification permission denied.")
            }
        } catch {
            print("Error requesting notification permission: \(error)")
        }
    }
    
    static func sendNotification(eventName: String) {
        let content = UNMutableNotificationContent()
        content.title = "Upcoming Event"
        content.body = "Don't miss out on \(eventName) happening near you!"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print("Error scheduling notification: \(error)")
            }
        }
    }
}
