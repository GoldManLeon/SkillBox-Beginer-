//
//  ViewController.swift
//  WeatherDemo
//
//  Created by Левон on 31.10.2020.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var cityTemperatureLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    
    // MARK: - UIViewController Events

    override func viewDidLoad() {
        super.viewDidLoad()

        getWeatherData(for: "Moscow")
    }

    // MARK: - IBActions

    @IBAction func getWeather() {
        if let city = cityTextField.text {
            getWeatherData(for: city)
        }
    }
    // MARK: - Methods

    func getWeatherData(for city: String) {
        let urlString =  "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=eb730bdb3e95f6880bf3f49d124faf89"
        guard let url = URL(string: urlString) else { return }

        let task = URLSession.shared.dataTask(with: url){ data, _, error in
            if let data = data, error == nil {
                DispatchQueue.main.async {
                    self.setLabelsData(from: data as NSData)
                }
            }
        }
        task.resume()
    }

    func setLabelsData(from data: NSData){
        let json =  try? JSONSerialization.jsonObject(with: data as Data,
                                                      options: JSONSerialization.ReadingOptions.allowFragments) as? NSDictionary

        if let name = json?["name"] as? String{
            cityNameLabel.text = name
        }

        if let main = json?["main"] as? NSDictionary{
            if let temp = main["temp"] as? Double{
            self.cityTemperatureLabel.text = String(format: "%.0f", temp - 273.15)
            }
        }
    }
}



