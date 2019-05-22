//
//  ViewController.swift
//  Wearher
//
//  Created by Yaroslav on 5/22/19.
//  Copyright © 2019 Yaroslav. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {

  let cityNameLable:UILabel = {
    let lable = UILabel();
    lable.text = "Vinnytsa, Ukraine"
    lable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    lable.sizeToFit()
    lable.translatesAutoresizingMaskIntoConstraints = false

    return lable
  }()
  
  let imgViewWeather:UIImageView = {
    let imgView = UIImageView()
    imgView.image = UIImage(named: "rain")
    imgView.translatesAutoresizingMaskIntoConstraints = false
    imgView.sizeToFit()
    
    return imgView
  }()
  
  let pressureLable:UILabel = {
    let lable = UILabel();
    lable.text = "740 mm"
    lable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    lable.sizeToFit()
    lable.translatesAutoresizingMaskIntoConstraints = false
    
    return lable
  }()
  
  let humidityLable:UILabel = {
    let lable = UILabel()
    lable.text = "30%"
    lable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    lable.sizeToFit()
    lable.translatesAutoresizingMaskIntoConstraints = false
    
    return lable
  }()
  
  let temperaturelable:UILabel = {
    let lable = UILabel()
    lable.text = "34˚C"
    lable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    lable.font = UIFont.systemFont(ofSize: 100)
    lable.sizeToFit()
    lable.translatesAutoresizingMaskIntoConstraints = false
    
    return lable
  }()
  
  let feelsTemperature:UILabel = {
    let lable = UILabel()
    lable.text = "feels like 34˚C"
    lable.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    lable.sizeToFit()
    lable.translatesAutoresizingMaskIntoConstraints = false
    
    return lable
  }()
  
  let buttomRefresh:UIButton = {
    let button = UIButton()
    button.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    button.titleLabel?.text = "Refresh"
    button.setTitle("Refresh", for: .normal)
    button.sizeToFit()
    button.translatesAutoresizingMaskIntoConstraints = false
    
    return button
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let center = view.bounds.size.width / 2
    print("h = ", cityNameLable.bounds.size.width / 2)
    
    view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
    
    view.addSubview(cityNameLable)
    cityNameLable.leftAnchor.constraint(equalTo: view.leftAnchor, constant: center - cityNameLable.bounds.size.width / 2).isActive = true
    cityNameLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
    
    view.addSubview(imgViewWeather)
    imgViewWeather.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 60).isActive = true
    imgViewWeather.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -60).isActive = true
    imgViewWeather.topAnchor.constraint(equalTo: cityNameLable.bottomAnchor, constant: 10).isActive = true
    imgViewWeather.widthAnchor.constraint(equalToConstant: view.bounds.size.width / 1.3).isActive = true
    imgViewWeather.heightAnchor.constraint(equalToConstant: view.bounds.size.width / 1.3).isActive = true
    
    view.addSubview(pressureLable)
    pressureLable.leftAnchor.constraint(equalTo: imgViewWeather.leftAnchor).isActive = true
    pressureLable.topAnchor.constraint(equalTo: imgViewWeather.bottomAnchor, constant: 10).isActive = true
    
    view.addSubview(humidityLable)
    humidityLable.rightAnchor.constraint(equalTo: imgViewWeather.rightAnchor).isActive = true
    humidityLable.topAnchor.constraint(equalTo: pressureLable.topAnchor).isActive = true
    
    view.addSubview(temperaturelable)
    temperaturelable.topAnchor.constraint(equalTo: humidityLable.bottomAnchor, constant: 10).isActive = true
    temperaturelable.leftAnchor.constraint(equalTo: view.leftAnchor, constant: center - temperaturelable.bounds.size.width / 2).isActive = true
    //temperaturelable.leftAnchor.constraint(equalTo: imgViewWeather.leftAnchor).isActive = true
    //temperaturelable.rightAnchor.constraint(equalTo: imgViewWeather.rightAnchor).isActive = true
    
    view.addSubview(feelsTemperature)
    feelsTemperature.topAnchor.constraint(equalTo: temperaturelable.bottomAnchor, constant: 10).isActive = true
    feelsTemperature.leftAnchor.constraint(equalTo: view.leftAnchor, constant: center - feelsTemperature.bounds.size.width / 2).isActive = true
    
    view.addSubview(buttomRefresh)
    buttomRefresh.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
    buttomRefresh.leftAnchor.constraint(equalTo: view.leftAnchor, constant: center - buttomRefresh.bounds.size.width / 2).isActive = true
    
  }
  
}



