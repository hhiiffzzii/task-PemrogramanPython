class Marvel:
    def __init__(self, name, health, attackPower, armorNumber):
        self.name = name
        self.health = health
        self.attackPower = attackPower
        self.armorNumber = armorNumber
        
    def serang(self, lawan):
        print(self.name + " menyerang " + lawan.name)
        lawan.diserang(self, self.attackPower)
    
    def diserang(self, lawan, attackPower_lawan):
        print(self.name + " diserang " + lawan.name)
        attack_diterima = attackPower_lawan
        print("Serangan terasa : " + str(attack_diterima))
        self.health -= attack_diterima
        print("Darah " + self.name + " tersisa " + str(self.health))
        
ironman = Marvel("Iron Man", 100, 10, 5)
thor = Marvel("Thor", 95, 15, 10)

#ironman.serang()
ironman.serang(thor)
#print("\n")   
#ironman.serang(thor)   
#print("\n")  
#thor.serang(ironman) 