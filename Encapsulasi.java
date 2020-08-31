package com.tutorial;

/* Class Player merupakan bagian dari Encapsulasi*/

class Player{

    /* Semua "Private" attribut ini adalah bagian dari encapsulasi*/

    private String name;
    private int baseHealth;
    private int baseAttack;
    private int level;
    private int incrementHealth;
    private int incrementAttack;
    
    // object member
    private Armor armor;
    private Weapon weapon;

    /* dan "public" pada method di dalam class "Player"
    juga merupakan bagian dari encapsulasi*/

    public Player(String name){
        this.name = name;
        this.baseHealth = 100;
        this.baseAttack = 100;
        this.level = 1;
        this.incrementHealth = 20;
        this.incrementAttack = 20;
    }

    public void display(){
        System.out.println();
        System.out.println("Name\t\t: " + this.name);
        System.out.println("Level\t\t: " + this.level);
        System.out.println("Health\t\t: " + this.maxHealth());
        System.out.println("Attack\t\t: " + this.getAttackPower());
    }

    public void levelUp(){
        this.level++;
    }

    public void setArmor(Armor armor){
        this.armor = armor;
    }

    public void setWeapon(Weapon weapon){
        this.weapon = weapon;
    }

    public int maxHealth(){
        return this.baseHealth + this.level*this.incrementHealth + this.armor.getAddHealth();
    }

    public int getAttackPower(){
        return this.baseAttack + this.level*this.incrementAttack + this.weapon.getAttack();
    }
    
}

/* Class Weapon merupakan bagian dari Encapsulasi*/

class Weapon{

    /* Semua "Private" attribut ini adalah bagian dari encapsulasi*/

    private String name;
    private int attack;

    /* "public" pada method di dalam class "Player"
    juga merupakan bagian dari encapsulasi*/

    public Weapon(String name, int attack){
        this.name = name;
        this.attack = attack;
    }

    public int getAttack(){
        return this.attack;
    }
}

/* Class Armor merupakan bagian dari Encapsulasi*/

class Armor{

    /* Semua "Private" attribut ini adalah bagian dari encapsulasi*/

    private String name;
    private int strenght;
    private int health;

    /* "public" pada method di dalam class "Player"
    juga merupakan bagian dari encapsulasi*/

    public Armor(String name, int strenght, int health){
        this.name = name;
        this.strenght = strenght;
        this.health = health;
    }

    public int getAddHealth(){
        return this.strenght*10 + this.health;
    }
}

public class Encapsulasi {

    public static void main(final String[] args) throws Exception {

        System.out.println("\n\n===STATUS KNIGHT OF THE ROUND TABLE MEMBER===\n");

        /* semua "new Player" , "new Armor" dan "new Weapon" merupakan Object*/

      Player arthur = new Player("King Arthur");
      Armor armorArthur = new Armor("King Knight Suit",6,320);
      Weapon excalibur = new Weapon("Excalibur Sword",500);
      arthur.setArmor(armorArthur);
      arthur.setWeapon(excalibur);

      Player gawain = new Player("Sir Gawain");
      Armor armorGawain = new Armor("White Knight Suit",4,200);
      Weapon excaliburGalatine = new Weapon("Excalibur Galatine Sword",340);
      gawain.setArmor(armorGawain);
      gawain.setWeapon(excaliburGalatine);
      
      Player mordred = new Player("Sir Mordred");
      Armor armorMordred = new Armor("Red Knight Suit",5,290);
      Weapon bloodArthur = new Weapon("Clarent Blood Arthur Sword",350);
      mordred.setArmor(armorMordred);
      mordred.setWeapon(bloodArthur);

      Player lancelot = new Player("Sir Lancelot");
      Armor armorLancelot = new Armor("Lake Knight Suit",6,180);
      Weapon arondight = new Weapon("Arondight Sword",230);
      lancelot.setArmor(armorLancelot);
      lancelot.setWeapon(arondight);
      
      Player bedivere = new Player("Sir Bedivere");
      Armor armorBedivere = new Armor("Silver Arm Suit",3,210);
      Weapon airgetlam = new Weapon("Airgetlam Sword",200);
      bedivere.setArmor(armorBedivere);
      bedivere.setWeapon(airgetlam);
      
      Player tristan = new Player("Sir Tristan");
      Armor armorTristan = new Armor("Archer Knight Suit",1,100);
      Weapon failnaught = new Weapon("Failnaught Bow",250);
      tristan.setArmor(armorTristan);
      tristan.setWeapon(failnaught);

      Player agravain = new Player("Sir Agravain");
      Armor armorAgravain = new Armor("Hard Hand Suit",4,280);
      Weapon twincalibur = new Weapon("Twincalibur Sword",320);
      agravain.setArmor(armorAgravain);
      agravain.setWeapon(twincalibur);

      Player galahad = new Player("Sir Galahad");
      Armor armorGalahad = new Armor("Shielder Knight Suit",7,600);
      Weapon lordCamelot = new Weapon("Lord Camelot Shield",110);
      galahad.setArmor(armorGalahad);
      galahad.setWeapon(lordCamelot);
      
      
      arthur.display();
      gawain.display();
      mordred.display();
      lancelot.display();
      bedivere.display();
      tristan.display();
      agravain.display();
      galahad.display();
      
    }
}

