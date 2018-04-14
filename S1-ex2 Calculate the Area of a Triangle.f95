Program cir
Implicit none
Real::a,b,ac,area,mathstuff
write(*,*)"enter val of a,b"
Read(*,*)a,b
ac=3.14*b**2
area=mathstuff(a,b,ac)
write(*,*)"area=",area
end Program cir

real function mathstuff(a,b,ac)
Implicit none
real,intent(in)::a,b,ac
real::x,c,z,s,atri
x=(180-a)/2
c=b/sin(x)*sin(a)
z=a/360*ac
s=(b+b+c)/2
atri=(s*(s-b)*(s-b)*(s-c))**0.5
mathstuff=z-atri
end function mathstuff