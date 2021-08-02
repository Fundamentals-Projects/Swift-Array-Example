//
//  main.swift
//  Swift-Array-Example
//
//  Created by Omairys Uzcátegui on 2021-05-28.
//

import Foundation
//1. Find and print the minimum grade.
func minimumGrade (grades:[Double]) -> Double{
    var minGrade = grades[0]
    for item in grades{
        if item < minGrade {
            minGrade = item
        }
    }
    return minGrade
}
//2. Find and print the name of the student who gets the highest grade
func theHighestGrade (grades:[Double])-> Int{
    var maxGrade = grades[0]
    
    for item in grades{
        if item > maxGrade {
            maxGrade = item
        }
    }
    return grades.firstIndex(of: maxGrade)!
}
//3. Find how many students failed (their grades less than 50)
func howManyFail (grades:[Double]) -> Int{
    var howMany = 0
    for i in 0...grades.count-1{
        if grades[i] < 5 {
            print(grades[i])
            howMany+=1
            
        }
    }
    return howMany
}

//4. Print names of A grade students
func aGrades (grades:[Double], students:[String]) -> Array<String>{
    var aGrades = [String]()
    for i in 0...grades.count-1{
        if grades[i] >= 8 {
            aGrades.append(students[i])
        }
    }
    return aGrades
}
//5. Find the average and then find and print the name of the student whose grade is the nearest to the average
func average (grades:[Double]) -> Double{
    var sum = 0.0
    for item in grades {
        sum += item
    }
    return sum / Double(grades.count)
}

func nearest(students: [String], grades: [Double]) -> Array<String>{
    let nearestValue = average(grades:grades)
    var newGrades = [String]()
    for i in 0..<students.count {
        if (grades[i] <= nearestValue-1) && (grades[i] <= nearestValue+1){
            newGrades.append(students[i])
        }
    }
    return newGrades
}

let students = ["Alan","Emma","Chris","Daniel","Willian","Harry","Federic","Charles","Amy","Dominique"]
let grades = [3.5,4.0,6.0,4.0,8.4,8.8,9.0,5.0,2.9,6.6]


print("The minimun grade: ", minimumGrade(grades:grades))
print("The highest grade: ", students[theHighestGrade(grades:grades)])
print("How many students failed: ", howManyFail(grades:grades))
print("Print names of A grade students: ", aGrades(grades:grades, students:students))
print("The average: ", average(grades:grades))
print("Print whose grade is the nearest to the average: ", nearest(students:students, grades:grades))
