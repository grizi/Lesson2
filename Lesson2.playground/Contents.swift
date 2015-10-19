//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Valuta
{
    var currency:String
    var value:Double
    
    init(currency:String, value:Double)
    {
        self.currency = currency
        self.value = value
    }
}



class Converter {
    func converter (value:Double  , startCurrency:Valuta , targetCurrency:Valuta) -> (convertedValue:Double, targetCurrencyr:Valuta)
    {
        let convertedValue = value * (startCurrency.value / targetCurrency.value)
        let targetCurrencyr = targetCurrency
        return (convertedValue, targetCurrencyr)
    }
}


let USD = Valuta(currency: "USD",value: 1.0)
let EUR = Valuta(currency: "EUR",value: 1.2)
let HRK = Valuta(currency: "HRK",value: 0.16)

var convert = Converter()

//var result:(convertedValue:Double, targetCurrency:Valuta) =
var x = convert.converter(10.00,startCurrency:EUR,targetCurrency:HRK)
var y   = convert.converter(100, startCurrency: USD, targetCurrency: EUR)
var z = convert.converter(786.273, startCurrency: HRK, targetCurrency: USD)

print(x.convertedValue)
print(y.convertedValue)
print(z.convertedValue)
