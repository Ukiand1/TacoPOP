//
//  Taco.swift
//  TacoPOP
//
//  Created by Uroš Đurđević on 14/09/16.
//  Copyright © 2016 Uroš Đurđević. All rights reserved.
//

import Foundation

//perfect place to use a Struckt instead of a class

enum TacoShell: Int {
    case Flour = 1
    case Corn = 2
}

enum TacoProtein: String {
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Brisket = "Brisket"
    case Fish = "Fish"
}

enum TacoCondiment: Int {
    case Loaded = 1
    case Plain = 2

}

struct Taco {
    private var _id: Int!
    private var _productName: String!
    private var _shellId: TacoShell!
    private var _proteinId: TacoProtein!
    private var _condimentId: TacoCondiment!
    
    var condimentId: TacoCondiment {
        return _condimentId
    }
    
    var proteinId: TacoProtein{
        return _proteinId
    }
    
    var shellId: TacoShell{
        return _shellId
    }
    
    var productName: String {
        return _productName
    }
    
    var id: Int {
        return _id
    }
    
    init(id: Int, productName: String, shellId: Int, proteinId: Int, condimentId: Int) {
        self._id = id  //but you don't need self because it is initialized as private
        _productName = productName
        
        
        //Taco shell
        switch shellId {
        case 2:
            self._shellId = TacoShell.Corn
        default:
            self._shellId = TacoShell.Flour
            
        }
        
        //Taco protein
        switch proteinId {
        case 2:
            self._proteinId = TacoProtein.Chicken
        case 3:
            self._proteinId = TacoProtein.Brisket
        case 4:
            self._proteinId = TacoProtein.Fish
        default:
            self._proteinId = TacoProtein.Beef
            
        }
        
        switch condimentId {
        case 2:
            self._condimentId = TacoCondiment.Plain
        default:
            self._condimentId = TacoCondiment.Loaded
            
        }
        
        
        
    }
    
    
}
