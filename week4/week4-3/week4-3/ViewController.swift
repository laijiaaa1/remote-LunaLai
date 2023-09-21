//
//  ViewController.swift
//  week4-3
//
//  Created by laijiaaa1 on 2023/9/19.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
 
    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationAddressLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fetch()
    }
    struct Station: Codable {
        let stationID: String
        let stationName: String
        let stationAddress: String
    }
    
    func fetch(){
        let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station")!
        let session = URLSession.shared
        let task = session.dataTask(with: url){
            (data, response, error) in
            guard let data = data else{ return }
            do{
                let decoder = JSONDecoder()
                let stations = try decoder.decode(Station.self, from: data)
                DispatchQueue.main.async {
                    self.stationIDLabel.text = stations.stationID
                    self.stationNameLabel.text = stations.stationName
                    self.stationAddressLabel.text = stations.stationAddress
                }
            }
            catch{
                print("error")
            }
        }
        task.resume()
    }
}
