import ctypes

biblioteca = ctypes.CDLL("libfuncao.so")

biblioteca.triplo.argtypes = [ctypes.c_float]

print("DIGITE O NÚMERO:")
x =input()
valor = biblioteca.triplo(float(x))

print(valor)
