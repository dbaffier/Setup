from pwn import *
print( asm( shellcraft.cat()  ) )
print( len (asm( shellcraft.cat(".passwd")  ) ))
