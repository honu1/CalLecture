//
//  File.swift
//  Caculator
//
//  Created by honu on 2017. 9. 8..
//  Copyright © 2017년 honuCompany. All rights reserved.
//

import Foundation

func mul(fVal : Double, sVal : Double) -> Double {
    return fVal * sVal
}

class CalculatorBrain {
    
    private var accumlator = 0.0
    
    func setOperand(operand: Double) {
        accumlator = operand
    }

    var operations: Dictionary<String, Operation> = [
        "π" : .Constant(Double.pi),
        "e" : .Constant(M_E),
        "√" : .UnaryOperation(sqrt), //sqrt
        "cos" : .UnaryOperation(cos), //cos
//        "+" : .BinaryOperation(add),
//        "-" : .BinaryOperation{(firstValue: Double, secondValue: Double) in Double},
//        "*" : .BinaryOperation{(firstValue: Double, secondValue: Double) -> Double},
//        "/" : .BinaryOperation{(firstValue: Double, secondValue: Double) -> Double}
    ]
    
    func add(firstValue: Double, secondValue: Double) -> Double {
        return firstValue + secondValue
    }
    
    enum Operation {
        case Constant(Double)
        case UnaryOperation((Double) -> Double)
        case BinaryOperation((Double, Double) -> Double)
        case Equals
    }
    
    func performOperation(symbol: String) {

        if let operation = operations[symbol] {
            switch operation {
            case .Constant(let value):
                accumlator = value
                break;
            case .UnaryOperation(let function):
                accumlator = function(accumlator)
                break;
            case .BinaryOperation(let function):
                //accumlator =
                break;
            default:
                break;
            }
        }
    }
    
    var result: Double {
        get {
            return accumlator
        }
    }
    
    
}
