//
//  ViewController.swift
//  learn-api-call
//
//  Created by The App Experts on 15/06/2021.
//  Copyright © 2021 TAE. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var employee:[Employee] = []
    let service = Service()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fetchEmployees()
    }
    
    func fetchEmployees(){
        let em1 = Employee(firstName: "a", lastName: "b")
        let em2 = Employee(firstName: "c", lastName: "d")
        let em3 = Employee(firstName: "e", lastName: "f")
        let em4 = Employee(firstName: "g", lastName: "h")
        
        employees.append(em1)
        employees.append(em2)
        employees.append(em3)
        employees.append(em4)
        
        service.fetchData(urlStr: "https://raw.githubusercontent.com/theappbusiness/engineering-challenge/main/endpoints/") { (data, error) in
            
            if let _data = data {
                
                do {
                    let caseStudy = try
                JSONDecoder().decode(CaseStudyResponse.self, from: _data)
            print(CaseStudyResponse)
                }catch {
                    print(error.localizedDescription)
                }
            }
            
        }
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employees.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        
        let emp1 - employees[indexPath.row]
        cell.textLabel?.text = "\(emp1.firstName)-\(emp1.lastName)"
        return cell
    }

}

