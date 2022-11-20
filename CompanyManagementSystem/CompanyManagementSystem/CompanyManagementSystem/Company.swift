//
//  Company.swift
//  CompanyManagementSystem
//
//  Created by Utku Gökçen on 20.11.2022.
//

import Foundation

// MARK: -  Company
protocol CompanyFunctions{
    func addJrEmployee(employee: JrEmployee)
    func addSrEmployee(employee: SrEmployee)
    func addMidEmployee(employee: MidEmployee)
    func paySalary()
    func addIncome(amount: Double)
    func addExpense(amount: Double)
    func getSalary()
}

class Company: CompanyFunctions{
    var name: String
    var budget: Double
    var foundationYear: Int
    var employeeList: [Employee]
    
    init(){
        name = "My Company"
        budget = 1_000_000
        foundationYear = 1989
        employeeList = []
    }
    
    // This function adds income to the company budget.
    func addIncome(amount: Double) {
        budget += amount
    }
    
    //This function adds expense to the company budget.
    func addExpense(amount: Double) {
        budget -= amount
    }
    
    //This function pays salaries of employees.
    func paySalary(){
        for employee in employeeList{
            budget -= employee.salary
        }
    }
    
    //This function adds jr Employee to the company.
    func addJrEmployee(employee: JrEmployee){
        employeeList.append(employee)
    }
    
    //This function adds mid Employee to the company.
    func addMidEmployee(employee: MidEmployee){
        employeeList.append(employee)
    }
    
    //This function adds senior Employee to the company.
    func addSrEmployee(employee: SrEmployee){
        employeeList.append(employee)
    }
    
    //This function prints the salaries of the employees.
    func getSalary() {
        for employee in employeeList{
            print("Employee \(employee.name) \(employee.surname) has \(employee.salary) salary")
        }
    }
}

//Employee class
class Employee{
    var name: String
    var surname: String
    var age: Int
    var maritalStatus: String?
    var salary: Double {
        return Double(age * salaryFactor * 1000)
    }
    var salaryFactor: Int {
        return 0
    }
    
    init(employeeName: String, employeeSurname: String, employeeAge: Int, employeeMaritalStatus: String){
        name = employeeName
        surname = employeeSurname
        age = employeeAge
        maritalStatus = employeeMaritalStatus

    }
}

//JrEmployee class that inherits Employee class
class JrEmployee: Employee{
    override var salaryFactor: Int {
        return 2
    }
    override var salary: Double {
        return Double(age * salaryFactor * 1000)
    }
}

//MidEmployee class that inherits Employee class
class MidEmployee: Employee{
    override var salaryFactor: Int {
        return 3
    }
    override var salary: Double {
        return Double(age * salaryFactor * 1000)
    }
}

//SrEmployee class that inherits Employee class
class SrEmployee: Employee{
    override var salaryFactor: Int {
        return 4
    }
    override var salary: Double {
        return Double(age * salaryFactor * 1000)
    }
}
