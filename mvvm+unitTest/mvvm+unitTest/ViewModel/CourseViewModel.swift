//
//  CourseViewModel.swift
//  mvvm+unitTest
//
//  Created by Tewodros Mengesha on 10.12.2021.
//

import Foundation
import UIKit

struct CourseViewModel {
    
    let name: String
    let detailTextString : String
    let accessoryType: UITableViewCell.AccessoryType
    
    init(course: Course) {
        self.name = course.name
        
        if(course.numberOfLessons > 35) {
            detailTextString =  "Lessons 30+ Check it out!"
            accessoryType = .detailDisclosureButton
        } else {
            detailTextString =  "Lessons: \(course.numberOfLessons)"
            accessoryType = .none
        }
    }
}
