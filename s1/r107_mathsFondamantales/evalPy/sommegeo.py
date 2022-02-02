def sommegeo(x, n):
    result= 0.0
    # on parcourt la liste en entier
    for i in range(n+1) :
        result = result + x**(i+1)


    # On affiche les bails
    print(result)



sommegeo(-1, 43)