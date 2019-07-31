//
//  AppDelegate.swift
//  GenericTableViewController
//
//  Created by Mohit Kumar on 30/07/19.
//  Copyright © 2019 Mohit Kumar. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let homeVC = GenericTableViewController<MyModel, MyTableViewCell>(data: getDataToDisplayForFirstpage())
        window?.rootViewController = UINavigationController(rootViewController: homeVC)
        window?.makeKeyAndVisible()
        homeVC.didSelect = { [weak self] model in
            guard let weakSelf = self else { return }
            let detailVC = GenericTableViewController<MyModel, MyTableViewCell2>(data: weakSelf.getDataToDisplayForFirstpage())
            (weakSelf.window?.rootViewController as! UINavigationController).pushViewController(detailVC, animated: true)
        }
        return true
    }
    
    func getDataToDisplayForFirstpage() -> [MyModel] {
        return [MyModel(imageName: "icon", title: "Sample Title 1", subTitle: "SubTitle1"),
                MyModel(imageName: "icon", title: "Sample Title 2", subTitle: "SubTitle2"),
                MyModel(imageName: "icon", title: "Sample Title 3", subTitle: "SubTitle3"),
                MyModel(imageName: "icon", title: "Sample Title 4", subTitle: "SubTitle4"),
                MyModel(imageName: "icon", title: "Sample Title 5", subTitle: "SubTitle5"),
                MyModel(imageName: "icon", title: "Sample Title 6", subTitle: "SubTitle6"),
                MyModel(imageName: "icon", title: "Sample Title 7", subTitle: "SubTitle7"),
                MyModel(imageName: "icon", title: "Sample Title 8", subTitle: "SubTitle8"),
                MyModel(imageName: "icon", title: "Sample Title 9", subTitle: "SubTitle9"),
                MyModel(imageName: "icon", title: "Sample Title 10", subTitle: "SubTitle10"),
                MyModel(imageName: "icon", title: "Sample Title 11", subTitle: "SubTitle11"),
                MyModel(imageName: "icon", title: "Sample Title 12", subTitle: "SubTitle 12")
        ]
    }
    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

