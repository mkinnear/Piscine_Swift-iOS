/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Card.swift                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hmthimun <hmthimun@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/03 13:38:17 by hmthimun          #+#    #+#             */
/*   Updated: 2018/10/03 15:19:22 by hmthimun         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

import Foundation

class Card: NSObject {
    var color:String;
    var value:Int;

    init(_ color:String, _ value:Int) {
        self.color = color;
        self.value = value;
    }

    override var description: String {
        var des = "You have been dealt a ";
        des += String(self.value);
        des += " of \(self.color)";
        return des;
    }

    override func isEqual(_ object: Any?) -> Bool {
        if let other = object as? Card {
            return self.color == other.color && self.value == other.value
        } else {
            return false
        }
    }

    static func == (lhs: Card, rhs: Card) -> Bool {
        return lhs.isEqual(rhs)
    }

}