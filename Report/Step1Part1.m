k=-3;

sys = tf([1 -1],[(k+1) (4+k)]);

h = pzplot(sys);