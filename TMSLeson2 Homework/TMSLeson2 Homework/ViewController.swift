//
//  ViewController.swift
//  TMSLeson2 Homework
//
//  Created by Наталья Мазур on 22.11.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // все переменные были переведены в константы, т.к. далее в коде не изменяются
        
        let first = 2.5
        let second = 9.7
        let third = 6.9
        let fourth = 8.2
        var result = 0
        
        var arrayOfValues: [Double] = []
        arrayOfValues.append(first)
        arrayOfValues.append(second)
        arrayOfValues.append(third)
        arrayOfValues.append(fourth)
        
        // MARK: Cумма целых частей чисел 2.5, 9.7, 6.9, 8.2
        
        for intValue in arrayOfValues {
            result += Int(intValue)
        }
//      Вариант №2:  result = Int(first) + Int(second) + Int(third) + Int(fourth)
        
        print(result)
        
        // MARK: Cумма дробных частей чисел 2.5, 9.7, 6.9, 8.2
        
        let sumOfFractions = first.truncatingRemainder(dividingBy: 1) + second.truncatingRemainder(dividingBy: 1) + third.truncatingRemainder(dividingBy: 1) + fourth.truncatingRemainder(dividingBy: 1)
        
        print(String(format: "%.1f", sumOfFractions))
        
        // MARK: Проверка, является ли число чётным
        
        for doubleValue in arrayOfValues {
            Int(doubleValue) % 2 == 0 ? print("\(Int(doubleValue)) - чётное число") : print("\(Int(doubleValue)) - нечётное число")
        }
        

    }


}
