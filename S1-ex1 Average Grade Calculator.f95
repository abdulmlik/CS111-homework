program one
implicit none
integer::i
real::avg,sum,grade
sum=0
i=0
do
if(i>200)exit
write(*,*)"enter the numper 999 to exit"
write(*,*)"enter grade"
read(*,*)grade
if(grade==999.and.grade==0)then
write(*,*)"error on date"
exit
end if
if(grade==999)exit
do while(grade>100.or.grade<0)
write(*,*)"enter grade"
read(*,*)grade
end do
sum=sum+grade
i=i+1
end do
if(i/=0)then
avg=sum/i
write(*,*)avg
end if
end program