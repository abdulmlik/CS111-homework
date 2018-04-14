Program ma
Implicit none
Integer:: n,i,m,sum=0
Write(*,"(a)",advance="no")'n:'
  Read(*,*)n
  Do while(n>sum)
    M=mod(n,10)
    i=1
    Do while(i<=m)
      Write(*,*)m
      i=i+1
    Enddo
    n=n/10
  Enddo
End program
