//
//  HeroVsMonster.swift
//  Pa3
//
//  Created by Walker, Charles Milton on 10/1/20.
//  Copyright © 2020 Walker, Charles Milton. All rights reserved.
//

import Foundation

class HeroVsMonster {
    //var monsterArray: [Monster] = [Ogre()]
    var hero: Hero
    var monster: Monster
    //initializes game
    init() {
        print("You have entered the Dungeon, who are you?")
        print("Choose your hero - (1,2,3):")
        print("1) Warrior \n2) Sorceress \n3) Thief")
        let input  = readLine(strippingNewline: true)!
        if input == "1" {
            hero = Warrior()
            monster = Ogre()
            print("Buck up \(hero.name), you are battling \(monster.name)")
            return
        }
        if input == "2" {
            hero = Sorceress()
            monster = Ogre()
            print("Godspeed \(hero.name), you are battling \(monster.name)")
            return
        }
        if input == "3" {
            hero = Thief()
            monster = Ogre()
            print("Good luck \(hero.name), you are battling \(monster.name)")
            return
        }
        else {
            print("Not a valid choice")
            
        }
        hero = Warrior()
        monster = Ogre()
    }
    
    //calculates hero's turns
    func calculateTurns() {
        hero.numOfTurns = hero.attackSpeed / monster.attackSpeed
    }
    
    //hero attacks
    func HeroAttacksMonster() {
        monster.hitpoints -= hero.attack
    }
    
    //monster attacks
    func MonsterAttacksHero() {
        hero.hitpoints -= monster.attack
    }
    
    //Hero's turn
    func heroTurn() {
        calculateTurns()
        var i = 1
        while i <= hero.numOfTurns {
            print("~~~\(hero.name)'s turn(\(i) of \(hero.numOfTurns))~~~")
            print("\(hero.name): \(hero.hitpoints) hit points")
            print("\(monster.name): \(monster.hitpoints) hit points")
            print("Please choose your attack from the following menu\n  1) Normal attack\n  2) Special Attack\n 3) Quit game")
            let input  = readLine()
            if let choice = input {
                if choice == "1" {
                    hero.setAttack()
                }
                if choice == "2" {
                    hero.special()
                }
            }
            //print(monster.hitpoints)
            HeroAttacksMonster()
            if hero.attack != 0 {
                monster.heal()
            }
            i += 1
        }
        //print(monster.hitpoints)
    }
    
    func monsterTurn() {
        print("~~~\(monster.name)'s turn~~~")
        print("\(monster.name): \(monster.hitpoints) hit points")
        print("\(hero.name): \(hero.hitpoints) hit points")
        monster.setAttack()
        //print(hero.hitpoints)
        if hero.block() {
            print(hero.name, " blocked the attack!")
            return
        }
        MonsterAttacksHero()
        //print(hero.hitpoints)
    }
}
