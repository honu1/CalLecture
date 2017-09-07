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
        "π" : Operation.Constant, //M_PI,
        "e" : Operation.Constant, //M_E,
        "√" : Operation.UnaryOperation, //sqrt
        "cos" : Operation.UnaryOperation //cos
    ]
    
    enum Operation {
        case Constant
        case UnaryOperation
        case BinaryOperation
        case Equals
    }
    
    func performOperation(symbol: String) {
//        
//        if let operation = operations[symbol] {
//            switch operation {
//            case .Cons:
//                <#code#>
//            default:
//                <#code#>
//            } operation {
//                
//            }
        }
        
//        switch symbol {
//        case "π":
//            accumlator = Double.pi
//            break
//        case "√":
//            accumlator = sqrt(accumlator)
//            break
//        case "cos":
//            accumlator = cos(accumlator)
//            break
//        default:
//            break
//        }
//    }
    
    var result: Double {
        get {
            return 0.0
        }
    }
    
    
}
