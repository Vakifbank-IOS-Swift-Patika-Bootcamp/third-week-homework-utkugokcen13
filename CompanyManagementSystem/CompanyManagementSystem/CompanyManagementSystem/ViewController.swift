//
//  ViewController.swift
//  CompanyManagementSystem
//
//  Created by Utku Gökçen on 14.11.2022.
//

import UIKit

class ViewController: UIViewController {
    static var company = Company()
    @IBOutlet weak var companyName: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var companyFoundationYear: UILabel!
    @IBOutlet weak var companyBudget: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        companyName.text = "Company Name: \(ViewController.company.name)"
        companyFoundationYear.text = "Foundation Year: \(String(ViewController.company.foundationYear))"
        companyBudget.text = "Budget: \(ViewController.company.budget)"
        
        
    }

    @IBAction func incomeClicked(_ sender: Any) {
        ViewController.company.addIncome(amount: Double(textField.text ?? "0.0") ?? 0.0)
        companyBudget.text = "Budget: \(ViewController.company.budget)"
    }
    
    @IBAction func expenseClicked(_ sender: Any) {
        ViewController.company.addExpense(amount: Double(textField.text ?? "0.0") ?? 0.0)
        companyBudget.text = "Budget: \(ViewController.company.budget)"
    }
    @IBAction func paySalaryClicked(_ sender: Any) {
        ViewController.company.paySalary()
        companyBudget.text = "Budget: \(ViewController.company.budget)"
        
    }
    
    @IBAction func addEmployeeClicked(_ sender: Any) {
        self.performSegue(withIdentifier: "addEmployeeSegue", sender: nil)
    }
    
    @IBAction func listEmployeeClicked(_ sender: Any) {
    }
    
}

