MAX_TABLE = 10 

for i in range(1, MAX_TABLE + 1):
    print(f"\n--- Tabla de {i} ---")

    for j in range(1, 11):
        product = i * j
        
        print(f"{i} x {j} = {product}")
