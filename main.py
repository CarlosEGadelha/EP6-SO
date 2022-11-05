import ctypes

biblioteca = ctypes.CDLL("libfuncao.so")

biblioteca.triplo.restype = ctypes.c_double

print("DIGITE O NÚMERO:")
x = input()
valor = biblioteca.triplo(ctypes.c_double(float(x)))

print(valor)
