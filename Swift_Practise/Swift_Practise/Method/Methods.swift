//
//  Methods.swift
//  Swift_Practise
//
//  Created by Akshay Kumar on 26/09/23.
//

import Foundation

/*
In practice, you don’t need to write self in your code very often. If you don’t explicitly write self, Swift assumes that you are referring to a property or method of the current instance whenever you use a known property or method name within a method. This assumption is demonstrated by the use of count (rather than self.count) inside the three instance methods for Counter.

The main exception to this rule occurs when a parameter name for an instance method has the same name as a property of that instance. In this situation, the parameter name takes precedence, and it becomes necessary to refer to the property in a more qualified way. You use the self property to distinguish between the parameter name and the property name.

Here, self disambiguates between a method parameter called x and an instance property that’s also called x:
*/

struct Point {
    var x = 0.0, y = 0.0
    func isToTheRightOf(x: Double) -> Bool {
        return x > x
    }
}


