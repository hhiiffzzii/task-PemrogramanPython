class Marvel:
    
    def __init__(self, inputName, inputHealth, inputPower, inputArmor):
        # Instance variable
        self.name = inputName
        self.health = inputHealth
        self.power = inputPower
        self.armor = inputArmor

    # void function, tanpa return
    def siapa(self):
        print("Namaku adalah : " + self.name)

    # method dengan argumen
    def healthTambah(self, tambah):
        self.health += tambah
    
    # method dengan return
    def getHealth(self):
        return self.health
    
marvel1 = Marvel("Iron Man", 1000, 900, 800)
marvel2 = Marvel("Thor", 900, 1000, 900)
marvel3 = Marvel("Iron Man", 800, 700, 600)

# pemanggilan method
marvel1.siapa()

# pemakaian method dengan argumen
marvel1.healthTambah(10)
print(marvel1.health)

# mengembalikan nilai dengan method
print(marvel1.getHealth())
