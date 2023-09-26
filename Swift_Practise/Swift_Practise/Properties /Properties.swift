//
//  Properties.swift
//  Swift_Practise
//
//  Created by Akshay Kumar on 05/09/23.
//

import Foundation

// exmaple of computed propreties
class Properties {
    var name: String = "akshay"
    var lastName = " kumar"
   var getFullName: String {
        get { getFullName }
        set {
            lastName = newValue
        }
        
    }
    
}
// Example of property observer
// willSet and didSet

struct Person {
    var name: String
    var age : Int
}

class Score {
    
    var run = 0 {
        willSet {
            print(newValue)
        }
        didSet {
            if run != oldValue {
                print("\(oldValue)")
                
            }
        
        }
    }
}

enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 6
    }
}

//   Property wrapper
// In simple terms, a property wrapper is a generic structure that encapsulates read and write access to the property and adds additional behavior to it. We use it if we need to constrain the available property values, add extra logic to the read/write access (like using databases or user defaults), or add some additional methods.
// Your wrapper object must contain a non-static property called a wrappedValue.

// Great, it looks better now than with the old approach. But our wrapper implementation has one disadvantage: It doesn’t allow an initial value for the wrapped value.

// @Email
// var email: String? = "valid@test.com" //compilation error.
//To resolve this, we need to add the following initializer to the wrapper:
//
//init(wrappedValue value: Value?) {
//    self.value = value
//}


// 𝌞𝌞𝌞𝌞𝌞𝌞𝌞𝌞𝌞𝌞𝌞𝌞𝌞𝌞𝌞   Limitations of property wrappers 𝌞𝌞𝌞𝌞𝌞𝌞𝌞𝌞𝌞𝌞𝌞𝌞𝌞𝌞𝌞
//The new property wrappers’syntax looks good but it also contains several limitations, the main ones being:
//
//They can’t participate in error handling. The wrapped value is a property (not a method), and we can’t mark the getter or setter as throws. For instance, in our Email example, it is not possible to throw an error if a user tries to set an invalid email. We can return nil or crash the app with a fatalError() call, which could be unacceptable in some cases.
//Applying multiple wrappers to the property is not allowed. For example, it would be better to have a separate @CaseInsensitive wrapper and combine it with an @Email wrapper instead of making the @Email wrapper case insensitive. But constructions like these are forbidden and lead to compilation errors.

@propertyWrapper
struct Email<Value: StringProtocol> {
    var value: Value?
    var wrappedValue: Value? {
        get {
            return  validate(email: value) ? value : nil
        }
        set {
            value = newValue
        }
    }
    init(wrappedValue value: Value?) {
        self.value = value
    }
    
    private func validate(email: Value?) -> Bool {
        guard let email = email else { return false }
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
  
}
struct Account {
    var firstName: String
    var lastName: String
    @Email
    var email: String? = "ak@gmail.com"
}


class Dummy {
   static func execute() {
        var account = Account(firstName: "akshay", lastName: "kumar")
        //    var account =
        //    Account(firstName: "Test",
        //                          lastName: "Test",
        //                          email: "A")
        
        //account.email = "com"
        print(account.email)
    }
    
}
