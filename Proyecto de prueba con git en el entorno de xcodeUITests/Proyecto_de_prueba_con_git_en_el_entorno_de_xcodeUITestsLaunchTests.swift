//
//  Proyecto_de_prueba_con_git_en_el_entorno_de_xcodeUITestsLaunchTests.swift
//  Proyecto de prueba con git en el entorno de xcodeUITests
//
//  Created by Brais Rodríguez Calvo on 3/11/23.
//

import XCTest

final class Proyecto_de_prueba_con_git_en_el_entorno_de_xcodeUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
