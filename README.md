# primes
Find prime numbers using a linda like sysmetric coordination in erlang
note: remember, normally processes in erlang should be managed by otp, not symetrically. 

c(primes).

primes:start(1000).

 Loading 1000 numbers into matrix (+N)
 
 Sqrt(1000) + 1 = 32
 Tuple space is started
 32 sieves are spawning (+PN)
 Non prime sieves are being halted (-PN)
 +1000 <0.46.0>
+P2  +P3  +P4  +P5  +P6  +P7  +P8  +P9  +P10  
+P11  +P12  +P13  +P14  +P15  +P16   
+P17  +P18  +P19  +P20  +P21  +P22  +P23  +P24  
+P25  +P26  +P27  +P28  +P29  +P30  
+P31  -P8  -P6  -P4  -P9  -P12  -P10  -P15  
-P15  -P18  -P14  -P21  -P21  -P22  
-P26  -P20  -P24  -P25  -P27  -P28  -P30  -P30  -P16 
sieve 31 done sieve 29 done 
sieve 19 done sieve 23 done sieve 11 done 
sieve 13 done sieve 17 done sieve 7 done 
.sieve 5 done sieve 3 done .final sieve 2 done,
168 final primes remain: 
[2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,
71,73,79,83,89,97,
101,103,107,109,113,127,131,137,139,149,151,157,163,
167,173,179,181,191,193,197,199,
211,223,227,229,233,239,241,251,257,263,269,271,277,281,283,293,
307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,
401,409,419,421,431,433,439,443,449,457,461,463,467,479,487,491,
499,503,509,521,523,541,547,557,563,569,571,577,587,593,599,
601,607,613,617,619,631,641,643,647,653,659,661,673,677,683,691,
701,709,719,727,733,739,743,751,757,761,769,773,787,797, 
809,811,821,823,827,829,839,853,857,859,863,877,881,883,887,
907,911,919,929,937,941,947,953,967,971,977,983,991,997]
