//: Playground - noun: a place where people can play

import UIKit


var str = "Hello, playground"


class TodoObject
{
    
    var ime:String
    var datum = NSDate()
    var datumSpremembe = NSDate()
    var prioriteta:Priority = Priority.NIZKA
    var tip:Tip = Tip.KNJIGE
    var stanje:Stanje = Stanje.ZASEBNO
    
    
    init(ime:String, tip : Tip, prioriteta : Priority, stanje : Stanje)
    {
        self.ime = ime
        self.datum = NSDate()
        self.prioriteta = prioriteta
        self.stanje = stanje
        
        
    }
    
    func description()
    {
        print( " \(self.datum), \(self.tip), \(self.prioriteta), \(self.ime), \(self.stanje)")
        
    }
    
    
}

enum Tip
{
    case KNJIGE, DOGODEK
}

enum Stanje
{
    case SPOSOJENO, VRNJENO, BRANJE, SLUZBA, ZASEBNO, IZOBRAZEVANJE, DRUZENJE
}

enum Priority
{
   case NIZKA,SREDNJA,VISOKA
}


var todo1 = TodoObject(ime: "iOS Seminar", tip: Tip.DOGODEK, prioriteta : Priority.VISOKA, stanje: Stanje.IZOBRAZEVANJE)
var todo2 = TodoObject(ime: "Jobs", tip: Tip.KNJIGE, prioriteta : Priority.SREDNJA, stanje: Stanje.BRANJE)
var todo3 = TodoObject(ime: "druzabne igre", tip: Tip.DOGODEK, prioriteta : Priority.NIZKA, stanje: Stanje.DRUZENJE)
todo1.description()
print(todo1.ime)
