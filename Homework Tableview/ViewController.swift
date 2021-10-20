//
//  ViewController.swift
//  Homework Tableview
//
//  Created by Ceren Çapar on 20.10.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{
    @IBOutlet weak var tableView: UITableView!
    
    var cityNamesArray = [Cities]()
    var chosenCity : Cities?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let Ankara = Cities(name: "Ankara", image: UIImage(named: "Ankara")!)
        let Izmir = Cities(name: "Izmir", image: UIImage(named: "Izmir")!)
        let Hatay = Cities(name: "Hatay", image: UIImage(named: "Hatay")!)
        let Istanbul = Cities(name: "Istanbul", image: UIImage(named: "Istanbul")!)
        let Sivas = Cities(name: "Sivas", image: UIImage(named: "Sivas")!)
        let Antalya = Cities(name: "Antalya", image: UIImage(named: "Antalya")!)
        let Balikesir = Cities(name: "Balikesir", image: UIImage(named: "Balikesir")!)
        let Mugla = Cities(name: "Mugla", image: UIImage(named: "Mugla")!)
        let Van = Cities(name: "Van", image: UIImage(named: "Van")!)
        let Amasya = Cities(name: "Amasya", image: UIImage(named: "Amasya")!)
        
        
        
        cityNamesArray.append(Ankara)
        cityNamesArray.append(Izmir)
        cityNamesArray.append(Hatay)
        cityNamesArray.append(Istanbul)
        cityNamesArray.append(Sivas)
        cityNamesArray.append(Antalya)
        cityNamesArray.append(Balikesir)
        cityNamesArray.append(Mugla)
        cityNamesArray.append(Van)
        cityNamesArray.append(Amasya)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityNamesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cityNamesArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenCity = cityNamesArray[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedCity = chosenCity
        }
    }

}

