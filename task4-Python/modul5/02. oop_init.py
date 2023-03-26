class Marvel:
    def __init__(self, inputName, inputHealth, inputPower, inputArmor):
        self.name = inputName
        self.health = inputHealth
        self.power = inputPower
        self.armor = inputArmor
        
marvel1 = Marvel("Iron Man", 100, 10, 90)
marvel2 = Marvel("Thor", 90, 15, 100)
marvel3 = Marvel("Captain America", 80, 5, 70)

print(marvel1.name)
print(marvel2.health)
print(marvel3.__dict__)
        