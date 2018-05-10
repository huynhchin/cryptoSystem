import random
# Prime p = 719
# Primitive root a = 11
# Private key A = 697
# Public key B = 614

def sign_message(m, p, a, A):
	s = 0
	while s == 0:
		k = 1
		while gcd(k,p-1) != 1:
			k = random.randint(1,p-1)
		r = a.powermod(k,p)
		k_inv = inverse_mod(k, p-1)
		s = mod(k_inv*(m - A*r),p-1)
	return m,r, s

def verify(m,r,s,B,a,p):
	if r < p:
		v1 = a.powermod(m,p)
		v2 = mod(B.powermod(r,p)*r.powermod(s,p),p)
		print v1, v2
		if v1 == v2:
			return True
        return False