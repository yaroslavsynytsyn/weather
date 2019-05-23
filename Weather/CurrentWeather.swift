//
//  File.swift
//  WeatherApp
//
//  Created by Yaroslav on 5/23/19.
//  Copyright © 2019 Yaroslav. All rights reserved.
//

import Foundation
import UIKit

struct CurrentWeather {
  let temperature: Double
  let appearentTemperature: Double
  let humidity: Double
  let pressure: Double
  let icon:UIImage
}

extension CurrentWeather {
  var temperatureString: String {
    return "\(Int(temperature))˚C"
  }
  
  var apperentTemperatureString: String {
    return "feels like \(Int(appearentTemperature))˚C"
  }
  
  var humidityString:String {
    return "\(Int(humidity))%"
  }
  
  var pressureString: String  {
    return "\(Int(pressure))mm "
  }
}
