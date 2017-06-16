//
//  MyBrad.swift
//  BradS09
//
//  Created by iii on 2017/6/16.
//  Copyright © 2017年 iii. All rights reserved.
//

import Foundation

class Brad01 {
    var x = 10  // 物件屬性
}
class Brad02 {
    static var x1 = 12  // 類別的屬性
    static var x2:Int?
    static var x3:Int {
        return x1 * 100
    }
    var x4 = 123
    var x1 = 321
    init(){
        print(x4)
        print(Brad02.x1)
        print(x1)
    }
}
class Brad03 {
    var x = 100
    static var y = 200
    func f1(){
        x += 1
        Brad03.f2()
        print("Brad03:f1()")
    }
    static func f1(){
       print("Brad03:static:f1()")
    }
    class func f3(){
        
    }
    static func f2(){
        //x += 1
        y += 1
        f1()
    }
}

class MyBike {
    static var counter = 0
    var counter = 0
    init(){
        MyBike.counter += 1
        counter += 1
        print("Create a new Bike!")
    }
}
//---------------
class Super1 {
    init(){print("Super:init()")}
}
class Sub11 : Super1 {
    // 沒有定義任何init,呼叫Super1.init
}
class Sub12: Super1 {
    override init(){
        print("Sub12:init()")
    }
}
class Sub13: Super1 {
    init(_ : Int){}
}
//--------------------
class Super2 {
    init(){print("Super2:init()")}
    init(_ :Int){print("Super2:init(Int)")}
    init(_ :Double){print("Super2:init(Double)")}
}
class Sub21 : Super2 {
}
class Sub22 : Super2 {
    override init(){
        super.init()
        print("Sub22:init()")
    }
    override init(_ : Int){
        super.init()
    }
    init(_ : String){
        super.init()
    }
}
//--------------------
class Super3 {
    init(){print("Super3:init()")}
}
class Sub31 : Super3 {
    override init(){
        print("doSomething")
    }
    convenience init(_ : Int){
        print("Sub31:init(Int)")
        self.init("Brad")
    }
    init( _ : String){
    }
}
class TWId {
    convenience init(){
        self.init(false)
    }
    convenience init(_ gender:Bool){
        self.init(gender, 1)
    }
    convenience init(_ area:Int){
        self.init(true, area)
    }
    init(_ gender:Bool, _ area : Int){
        print("main logic")
    }
}















