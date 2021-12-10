//
//  unitTests.swift
//  unitTests
//
//  Created by Tewodros Mengesha on 10.12.2021.
//

import XCTest
@testable import mvvm_unitTest

class unitTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
    
    func testCourseeViewmodel() {
        let course = Course(id: 0, name: "My Course Name", numberOfLessons: 10)
            let courseViewModel = CourseViewModel(course: course)
               
           XCTAssertEqual(course.name, courseViewModel.name)
           XCTAssertEqual("Lessons: \(course.numberOfLessons)", courseViewModel.detailTextString)
           XCTAssertEqual(.none, courseViewModel.accessoryType)
    }
    
    func testCourseViewModelLessonsOverThreshold() {
        let course = Course(id: 0, name: "My Course Name", numberOfLessons: 100)
        let courseViewModel = CourseViewModel(course: course)
                
        XCTAssertEqual("Lessons 30+ Check it Out!", courseViewModel.detailTextString)
        XCTAssertEqual(.detailDisclosureButton, courseViewModel.accessoryType)
    }
    

}
