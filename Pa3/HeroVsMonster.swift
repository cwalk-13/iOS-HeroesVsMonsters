//
//  HeroVsMonster.swift
//  Pa3
//  This program holds all the helper functions for running the Hero Vs Monster game
//  Created by Walker, Charles Milton on 10/1/20.
//  Copyright © 2020 Walker, Charles Milton. All rights reserved.
//

import Foundation

class HeroVsMonster {
   
    var monsterArray = [Ogre(), Gremlin(), Skeleton()]
    var hero: Hero
    var monster: Monster
    var heroWins = false
    var monsterWins = false
    var quitGame = false
    
    //initializes game
    init() {
        monsterArray.shuffle()
        monster = monsterArray.removeFirst()
        print("You have entered the Dungeon, who are you?")
        print("Choose your hero - (1,2,3):")
        print(" 1) Warrior \n 2) Sorceress \n 3) Thief")
        let input  = readLine(strippingNewline: true)!
        if input == "1" {
            hero = Warrior()
            
            print("Buck up \(hero.name), you are battling \(monster.name)")
            return
        }
        if input == "2" {
            hero = Sorceress()
            print("Godspeed \(hero.name), you are battling \(monster.name)")
            return
        }
        if input == "3" {
            hero = Thief()
            print("Good luck \(hero.name), you are battling \(monster.name)")
            return
        }
        else {
            print("Not a valid choice")
            
        }
        hero = Warrior()
    }
    
    //calculates hero's turns
    func calculateTurns() {
        if hero.attackSpeed > monster.attackSpeed {
            hero.numOfTurns = hero.attackSpeed / monster.attackSpeed
        }
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
    func heroTurn() -> Bool {
        var aWin = false
        calculateTurns()
        var i = 1
        while i <= hero.numOfTurns && !aWin {
            print("\n")
            print("~~~\(hero.name)'s turn(\(i) of \(hero.numOfTurns))~~~")
            print("\n")
            print("\(hero.name): \(hero.hitpoints) hit points")
            print("\(monster.name): \(monster.hitpoints) hit points")
            print("Please choose your attack from the following menu\n  1) Normal attack\n  2) Special Attack\n  3) Quit game")
            let input  = readLine()
            if let choice = input {
                if choice == "1" {
                    hero.setAttack()
                }
                if choice == "2" {
                    hero.special()
                }
                if choice == "3" {
                    quitGame = true
                    return true 
                }
            }
            //print(monster.hitpoints)
            HeroAttacksMonster()
            if hero.attack != 0 {
                monster.heal()
            }
            i += 1
            if checkWin() {
                aWin = true
            }
        }
        return aWin
    }
    
    //monster's turn
    func monsterTurn() -> Bool {
        var aWin = false
        print("\n")
        print("~~~\(monster.name)'s turn~~~")
        print("\n")
        print("\(monster.name): \(monster.hitpoints) hit points")
        print("\(hero.name): \(hero.hitpoints) hit points")
        monster.setAttack()
        //print(hero.hitpoints)
        if hero.block() {
            print(hero.name, " blocked the attack!")
            return aWin
        }
        MonsterAttacksHero()
        if checkWin() {
            aWin = true
        }
        return aWin
    }
    
    //checks if someone won
    func checkWin() -> Bool {
        if monster.hitpoints <= 0 {
            print("\(hero.name) Defeated \(monster.name)!")
            heroWins = true
            return true
        }
        if hero.hitpoints <= 0 {
            print("\(monster.name) Defeated \(hero.name)!")
            monsterWins = true
            return true
        }
        return false
    }
    
    //starts a new game with a new monster
    func startNewGame() {
        quitGame = false
        heroWins = false
        monsterWins = false
        hero.reset() 
        monsterArray.shuffle()
        monster = monsterArray.removeFirst()
        print("Choose a hero:")
        print(" 1) Warrior \n 2) Sorceress \n 3) Thief")
        let input  = readLine(strippingNewline: true)!
        if input == "1" {
            hero = Warrior()
            
            print("Buck up \(hero.name), you are battling \(monster.name)")
        }
        if input == "2" {
            hero = Sorceress()
            print("Godspeed \(hero.name), you are battling \(monster.name)")

        }
        if input == "3" {
            hero = Thief()
            print("Good luck \(hero.name), you are battling \(monster.name)")
        }
        heroWins = false
        monsterWins = false
        gameLoop()
    }
    
    //the game loop
    func gameLoop() {
        while !heroWins && !monsterWins && !quitGame {
            if heroTurn() {
                break
            }
            if monsterTurn() {
                break
            }
        }
        if monsterArray.count == 0 {
            print("All Monsters Defeated!")
        }
        if monsterArray.count > 0 {
            print("Would you like to play again? \n Y | N")
            if let input  = readLine(){
                if input == "Y" {
                    startNewGame()
                }
            }
        }
        print("Game Over")
    }
}

