/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Color.swift                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hmthimun <hmthimun@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/03 12:23:20 by hmthimun          #+#    #+#             */
/*   Updated: 2018/10/03 15:19:46 by hmthimun         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

enum Color: String {
    case Spades = "Spades"
    case Hearts = "Hearts"
    case Diamonds = "Diamonds"
    case Clubs = "Clubs"
    static let allColors: [Color] = [Spades, Hearts, Diamonds, Clubs]
}