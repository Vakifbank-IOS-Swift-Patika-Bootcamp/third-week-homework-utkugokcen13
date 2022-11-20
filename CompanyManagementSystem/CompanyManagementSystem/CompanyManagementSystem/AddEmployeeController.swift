//
//  AddEmployeeController.swift
//  CompanyManagementSystem
//
//  Created by Utku Gökçen on 20.11.2022.
//

import UIKit

class AddEmployeeController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var employeeSalary: UILabel!
    
    @IBOutlet weak var typePicker: UIPickerView!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var maritalStatusTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    var pickerElements = ["Senior", "Mid", "Junior"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        typePicker.delegate = self
        typePicker.dataSource = self
        employeeSalary.text = ""
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerElements.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
         return pickerElements[row]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func addClicked(_ sender: Any) {

        if (pickerElements[typePicker.selectedRow(inComponent: 0)] == "Senior"){
            var employee = SrEmployee(employeeName: nameTextField.text ?? "", employeeSurname: surnameTextField.text ?? "", employeeAge: Int(ageTextField.text ?? "") ?? 0, employeeMaritalStatus: maritalStatusTextField.text ?? "")
            ViewController.company.addSrEmployee(employee: employee)
            employeeSalary.text = "New employee salary: \(String(employee.salary))"
        }else if (pickerElements[typePicker.selectedRow(inComponent: 0)] == "Mid"){
            var employee = MidEmployee(employeeName: nameTextField.text ?? "", employeeSurname: surnameTextField.text ?? "", employeeAge: Int(ageTextField.text ?? "") ?? 0, employeeMaritalStatus: maritalStatusTextField.text ?? "")
            ViewController.company.addMidEmployee(employee: employee)
            employeeSalary.text = "New employee salary: \(String(employee.salary))"
        }else if (pickerElements[typePicker.selectedRow(inComponent: 0)] == "Junior"){
            var employee = JrEmployee(employeeName: nameTextField.text ?? "", employeeSurname: surnameTextField.text ?? "", employeeAge: Int(ageTextField.text ?? "") ?? 0, employeeMaritalStatus: maritalStatusTextField.text ?? "")
            ViewController.company.addJrEmployee(employee: employee)
            employeeSalary.text = "New employee salary: \(String(employee.salary))"
        }
        
        
    }
    
}
