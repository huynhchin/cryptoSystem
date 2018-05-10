#Diffie-Hillman Algorithm

#public values
p = 23#random_prime(10^10,10^15)
g = 9#mod(primitive_root(p),p)
print p, g

#private values chosen for alice and bob
aliceRand = 4#randint(1,p)
bobRand = 3#randint(1,p)

#values that are switched (public)
A = mod(g ^ aliceRand, p)
B = mod(g ^ bobRand, p)
print A, B

#gets shared key for alice and bob
print mod(A ^ bobRand, p)
print mod(B ^ aliceRand, p)