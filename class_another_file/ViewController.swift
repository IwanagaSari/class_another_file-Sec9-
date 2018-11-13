//
//  ViewController.swift
//  class_another_file
//
//  Created by 岩永 彩里 on 2018/11/13.
//  Copyright © 2018年 岩永 彩里. All rights reserved.
//

import UIKit

class MyClass2 {
    
    let msg:String
    let name:String
    
//    init(msg:String = "ハロー") {
//        self.msg = msg
//        self.name = nil
//    }
    //指定イニシャライザ
    init(msg:String = "ハロー", name:String) {
        self.msg = msg
        self.name = name
    }
    //コンビニエンスイニシャライザ
    convenience init(msg:String = "ハロー") {
//        self.msg = msg
//        self.name = nil
        self.init(msg:msg, name: "匿名")
    }
    
    func hello(){
//        var helloMsg:String
//        if let user = name {
//            helloMsg = user + "さん。" + msg
//        } else {
//            helloMsg = msg
//        }
        let helloMsg = name + "さん。" + msg
        print(helloMsg)
    }
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let myObj1 = MyClass2(msg: "こんにちは")
//        myObj1.hello()
//        let myObj2 = MyClass2(msg: "こんにちは", name: "桜子")
//        myObj2.hello()
//        let obj3 = MyClass2()
//        obj3.hello()
//        let obj4 = MyClass2(name: "月子")
//        obj4.hello()
        
        let myObj1 = MyClass2()
        let myObj2 = MyClass2(msg: "こんにちは")
        let myObj3 = MyClass2(msg: "やあ！", name: "山田")
        myObj1.hello()
        myObj2.hello()
        myObj3.hello()
    }
}



