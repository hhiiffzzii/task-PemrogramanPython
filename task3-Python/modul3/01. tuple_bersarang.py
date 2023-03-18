# membuat tuple kosong
# Output: ( )
tuple1 = ()
print(tuple1)

# tuple dengan 1 elemen
# Output: (1,)
tuple1 = (1,)
print(tuple1)

# tuple berisi integer
# Output: (1, 2, 3)
tuple1 = (1, 2, 3)
print(tuple1)

# tuple bersarang
# Output: ("Hello", [1, 2, 3] (4, 5, 6))
tuple1 = ("Hello", [1, 2, 3], (4, 5, 6))
print(tuple1)

# tuple bisa tidak menggunakan tanda ()
# Output: (1, 2, 3)
tuple1 = 1, 2, 3
print(tuple1)

# memasukkan anggota tuple ke variable yang bersesuaian
# a akan berisi 1, b berisi 2, dan c berisi 3
# Output: 1 2 3
a, b, c = tuple1
print(a, b, c)