class Marvel:
    # class variable
    jumlah = 0
    
    def __init__(self, inputName, inputHealth, inputPower, inputArmor):
        # Instance variable
        self.name = inputName
        self.health = inputHealth
        self.power = inputPower
        self.armor = inputArmor
        Marvel.jumlah +=1
        print("Hero Marvel dengan nama : " + inputName)

marvel1 = Marvel("Iron Man", 1000, 900, 800)
print(Marvel.jumlah)
marvel2 = Marvel("Thor", 900, 1000, 900)
print(Marvel.jumlah)
marvel3 = Marvel("Captain America", 800, 700, 600)
print(Marvel.jumlah)