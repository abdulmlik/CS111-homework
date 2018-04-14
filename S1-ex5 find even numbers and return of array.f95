program five
implicit none
integer::i,n,x(999),y(999),j
write(*,*)"enter n"
read(*,*)n
do i=1,n
read(*,*)x(i)
end do
call numper(x,n,y,j)
do i=1,j
write(*,*)y(i)
end do
write(x,x)j
end program

subroutine numper(x,n,y,j)
implicit none
integer intent(in)::n
integer intent(in)::x(n)
integer,intent(out)::y(n),j
integer::i
y=0
j=1
do i=1,n
if(mod(x(i),2)==0)then
y(j)=x(i)
j=j+1
end if
end do
end subroutine numper