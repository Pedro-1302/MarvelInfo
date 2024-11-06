//
//  MarvelInfoApp.swift
//  MarvelInfo
//
//  Created by Pedro Franco on 06/11/24.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        configureFirebasePlist()
        return true
    }
    
    func configureFirebasePlist() {
        if let filePath = Bundle.main.path(forResource: "GoogleService-Info", ofType: "plist"),
           let options = FirebaseOptions(contentsOfFile: filePath) {
            
            options.apiKey = Bundle.main.object(forInfoDictionaryKey: "API_KEY") as? String ?? "N/A"
            options.gcmSenderID = Bundle.main.object(forInfoDictionaryKey: "GCM_SENDER_ID") as? String ?? "N/A"
            options.projectID = Bundle.main.object(forInfoDictionaryKey: "PROJECT_ID") as? String ?? "N/A"
            options.storageBucket = Bundle.main.object(forInfoDictionaryKey: "STORAGE_BUCKET") as? String ?? "N/A"
            options.googleAppID = Bundle.main.object(forInfoDictionaryKey: "GOOGLE_APP_ID") as? String ?? "N/A"
            
            FirebaseApp.configure(options: options)
        }
    }
}

@main
struct MarvelInfoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .preferredColorScheme(.dark)
        }
    }
}
