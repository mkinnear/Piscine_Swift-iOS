/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Deck.swift                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hmthimun <hmthimun@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/03 15:22:37 by hmthimun          #+#    #+#             */
/*   Updated: 2018/10/03 18:08:55 by hmthimun         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

import Foundation

class Deck: NSObject {
    static let allSpades: [Card] =  Value.allValues.map { v in return 
    Card(Color.Spades.rawValue, v.rawValue)
    }
     static let allDiamonds: [Card] =  Value.allValues.map { v in return 
    Card(Color.Diamonds.rawValue, v.rawValue)
    }
     static let allHearts: [Card] =  Value.allValues.map { v in return 
    Card(Color.Hearts.rawValue, v.rawValue)
    }
     static let allClubs: [Card] =  Value.allValues.map { v in return 
    Card(Color.Clubs.rawValue, v.rawValue)
    }

    static let allCards: [Card] = allSpades + allDiamonds + allHearts + allClubs
}