Program abdulmalik
	IMPLICIT NONE
    INTEGER::n,i
    REAL::w(20),k,SUM_P_V,h,max,min
    print*,"enter n"
    read*,n
    call READ_REAL_VECROR(w,20,n)
    K = SUM_P_V(w,n,20)
    max=w(1)
    min=w(1)
    do i=2,n
      if(w(i)>max)then
        max=w(i)
      elseif(w(i)<min)then
        min=w(i)
      endif
    enddo
    h=(k-(max+min))/(n-2)
    print*,h
END Program abdulmalik

SUBROUTINE READ_REAL_VECROR(w,s,n)
	IMPLICIT NONE
    INTEGER,INTENT(IN)::n,s
    REAL,INTENT(out)::w(s)
    INTEGER::i
    do i=1,n
      print*,"enter w(i)"
      read*,w(i)
    enddo
END SUBROUTINE READ_REAL_VECROR

REAL FUNCTION SUM_P_V(w,n,s)
	IMPLICIT NONE
    INTEGER,INTENT(IN)::n,s
    REAL,INTENT(in)::w(s)
    INTEGER::i
    REAL::sum=0
    do i=1,n
      sum=sum+w(i)
    enddo
    SUM_P_V=sum
end FUNCTION SUM_P_V
