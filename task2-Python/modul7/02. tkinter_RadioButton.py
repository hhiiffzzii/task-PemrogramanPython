import tkinter as tk 
from functools import partial

def fungsitampil(labelhasil, rb):
    ambil = rb.get()
    hasil = ambil
    labelhasil.config(text=hasil)
    return

root = tk.Tk()
root.title("Radio Button")
root.geometry("300x200+500+100")
root.option_add('*font', ('Verdana', 10, 'normal'))
root.option_add('*Label.font', ('Verdana', 10, 'bold'))

labelPilihJurusan = tk.Label(root, text="Pilih Jurusan")
labelPilihJurusan.grid(row=0, column=0, sticky="W", padx=(5,0), pady=(5,5))

rbValue = tk.IntVar()
# Variable akan terisi value (nilai) berdasarkan pemilihan tombol
# value, memberikan nilai ke variabel
rbSI = tk.Radiobutton(root, text="Sistem Informasi", variable=rbValue, value=1)
rbSI.grid(row=1, column=0, sticky="W")
rbIF = tk.Radiobutton(root, text="Teknik Informatika", variable=rbValue, value=2)
rbIF.grid(row=2, column=0, sticky="W")
rbKA = tk.Radiobutton(root, text="Komputer Akuntansi", variable=rbValue, value=3)
rbKA.grid(row=3, column=0, sticky="W")

labelHasil = tk.Label(root)
labelHasil.grid(row=5, column=0)

tampil = partial(fungsitampil, labelHasil, rbValue)
tombolTampil = tk.Button(root, text="Tampil", command=tampil)
tombolTampil.grid(row=4, column=0, sticky="WE", padx=(5,0))
tombolTampil.configure(bg="#000", fg="#fff")

root.mainloop()