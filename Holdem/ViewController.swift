//
//  ViewController.swift
//  Holdem
//
//  Created by Aaron Mednick on 3/5/18.
//  Copyright © 2018 Aaron Mednick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cardArray = ["2S", "2H", "2C", "2D", "3S", "3H", "3C", "3D", "4S", "4H", "4C", "4D", "5S", "5H", "5C", "5D", "6S", "6H", "6C", "6D", "7S", "7H", "7C", "7D", "8S", "8H", "8C", "8D", "9S", "9H", "9C", "9D", "10S", "10H", "10C", "10D", "JS", "JH", "JC", "JD", "QS", "QH", "QC", "QD", "KS", "KH", "KC", "KD", "AS", "AH", "AC", "AD"]
    
    var playerhand1 = ""
    
    var playerhand2 = ""
    
    var dealerhand1 = ""
    
    var dealerhand2 = ""
    
    var slothand1 = ""
    
    var slothand2 = ""
    
    var slothand3 = ""
    
    var slothand4 = ""
    
    var slothand5 = ""

    @IBOutlet weak var newImage: UIImageView!
    
    @IBOutlet weak var unknown1: UIImageView!
    
    @IBOutlet weak var unknown2: UIImageView!
    
    @IBOutlet weak var slot1: UIImageView!
    
    @IBOutlet weak var slot2: UIImageView!
    
    @IBOutlet weak var slot3: UIImageView!
    
    @IBOutlet weak var slot4: UIImageView!
    
    @IBOutlet weak var slot5: UIImageView!
    
    @IBOutlet weak var playerHand1: UIImageView!
    
    @IBOutlet weak var playerHand2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newImage.image = #imageLiteral(resourceName: "pokerTable.png")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func deal(_ sender: Any) {
        unknown1.image = #imageLiteral(resourceName: "red_back.png")
        unknown2.image = #imageLiteral(resourceName: "red_back.png")
        
        slot1.image = nil
        slot2.image = nil
        slot3.image = nil
        slot4.image = nil
        slot5.image = nil
        
        
        cardArray = ["2S", "2H", "2C", "2D", "3S", "3H", "3C", "3D", "4S", "4H", "4C", "4D", "5S", "5H", "5C", "5D", "6S", "6H", "6C", "6D", "7S", "7H", "7C", "7D", "8S", "8H", "8C", "8D", "9S", "9H", "9C", "9D", "10S", "10H", "10C", "10D", "JS", "JH", "JC", "JD", "QS", "QH", "QC", "QD", "KS", "KH", "KC", "KD", "AS", "AH", "AC", "AD"]
        
        
        var temp = Int(arc4random_uniform(52))
        
        playerhand1 = cardArray[temp]
        cardArray.remove(at: temp)
        
        temp = Int(arc4random_uniform(UInt32(cardArray.count)))
        playerhand2 = cardArray[temp]
        cardArray.remove(at: temp)
        
        temp = Int(arc4random_uniform(UInt32(cardArray.count)))
        dealerhand1 = cardArray[temp]
        cardArray.remove(at: temp)
        
        temp = Int(arc4random_uniform(UInt32(cardArray.count)))
        dealerhand2 = cardArray[temp]
        cardArray.remove(at: temp)
        
        temp = Int(arc4random_uniform(UInt32(cardArray.count)))
        slothand1 = cardArray[temp]
        cardArray.remove(at: temp)
        
        temp = Int(arc4random_uniform(UInt32(cardArray.count)))
        slothand2 = cardArray[temp]
        cardArray.remove(at: temp)
        
        temp = Int(arc4random_uniform(UInt32(cardArray.count)))
        slothand3 = cardArray[temp]
        cardArray.remove(at: temp)
        
        temp = Int(arc4random_uniform(UInt32(cardArray.count)))
        slothand4 = cardArray[temp]
        cardArray.remove(at: temp)
        
        temp = Int(arc4random_uniform(UInt32(cardArray.count)))
        slothand5 = cardArray[temp]
        
        playerHand1.image = UIImage(named: playerhand1 + ".png")
        playerHand2.image = UIImage(named: playerhand2 + ".png")
        
        print("playerhand1: ", playerhand1)
        print("playerhand2: ", playerhand2)
        //print(hand1)
        //print(hand2)
        
    }
    
    @IBAction func flop(_ sender: Any) {
        unknown1.image = UIImage(named: dealerhand1 + ".png")
        unknown2.image = UIImage(named: dealerhand2 + ".png")
        slot1.image = UIImage(named: slothand1 + ".png")
        slot2.image = UIImage(named: slothand2 + ".png")
        slot3.image = UIImage(named: slothand3 + ".png")
        slot4.image = UIImage(named: slothand4 + ".png")
        slot5.image = UIImage(named: slothand5 + ".png")
        
        
        print("dealerhand1: ", dealerhand1)
        print("dealerhand2: ", dealerhand2)
        print("slothand1: ", slothand1)
        print("slothand2: ", slothand2)
        print("slothand3: ", slothand3)
        print("slothand4: ", slothand4)
        print("slothand5: ", slothand5)
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func handValue() -> Array<Int> {
        
        
    }

    
    public int royalFlush()
{
    if (hand[0].rank == 1 && hand[1].rank == 10 && hand[2].rank == 11 &&
    hand[3].rank == 12 && hand[4].rank == 13)
    {
    return 1;
    }
    else
    {
    return 0;
    }
    }
    
    // checks for a straight flush
    public int straightFlush()
{
    for (int counter = 1; counter < 5; counter++)
    {
    if (hand[0].suit != hand[counter].suit)
    {
    return 0;
    }
    }
    for (int counter2 = 1; counter2 < 5; counter2++)
    {
    if (hand[counter2 - 1].rank != (hand[counter2].rank - 1))
    {
    return 0;
    }
    
    }
    return 1;
    
    }
    
    // checks for four of a kind
    public int fourOfaKind()
{
    if (hand[0].rank != hand[3].rank && hand[1].rank != hand[4].rank)
    {
    return 0;
    }
    else
    {
    return 1;
    }
    }
    
    // checks for full house
    public int fullHouse()
{
    int comparison = 0;
    for (int counter = 1; counter < 5; counter++)
    {
    if (hand[counter - 1].rank == hand[counter].rank)
    {
    comparison++;
    }
    }
    if (comparison == 3)
    {
    return 1;
    }
    else
    {
    return 0;
    }
    }
    
    // checks for flush
    public int flush()
{
    for (int counter = 1; counter < 5; counter++)
    {
    if (hand[0].suit != hand[counter].suit)
    {
    return 0;
    }
    }
    return 1;
    }
    
    // check for straight
    public int straight()
{
    for (int counter2 = 1; counter2 < 5; counter2++)
    {
    if (hand[counter2 - 1].rank != (hand[counter2].rank - 1))
    {
    return 0;
    }
    
    }
    return 1;
    }
    
    // checks for triple
    public int triple()
{
    if (hand[0].rank == hand[2].rank || hand[2].rank == hand[4].rank)
    {
    return 1;
    }
    return 0;
    }
    
    // checks for two pairs
    public int twoPairs()
{
    int check = 0;
    for(int counter = 1; counter < 5; counter++)
    {
    if (hand[counter - 1].rank == hand[counter].rank)
    {
    check++;
    }
    }
    if (check == 2)
    {
    return 1;
    }
    else
    {
    return 0;
    }
    }
    
    // check for pair
    public int pair()
{
    int check = 0;
    for(int counter = 1; counter < 5; counter++)
    {
    if (hand[counter - 1].rank == hand[counter].rank)
    {
    check++;
    }
    }
    if (check == 1)
    {
    return 1;
    }
    else
    {
    return 0;
    }
    }
    
    // find highest card
    func highCard() -> Int {
    var highCard = 0
    
        
    var rank = rank(playerhand1, playerhand2)
        
        
    for (int counter = 0; counter < 5; counter++)
    {
        if (hand[counter].rank > highCard)
        {
            highCard = hand[counter].rank
        }
    }
        return highCard
    }
    
    func rank(card1: String, card2: String) -> Int {
        var tempcardArray = ["2S", "2H", "2C", "2D", "3S", "3H", "3C", "3D", "4S", "4H", "4C", "4D", "5S", "5H", "5C", "5D", "6S", "6H", "6C", "6D", "7S", "7H", "7C", "7D", "8S", "8H", "8C", "8D", "9S", "9H", "9C", "9D", "10S", "10H", "10C", "10D", "JS", "JH", "JC", "JD", "QS", "QH", "QC", "QD", "KS", "KH", "KC", "KD", "AS", "AH", "AC", "AD"]
        
        for i ..< 0 {
            
        }
    }
    
    

}




