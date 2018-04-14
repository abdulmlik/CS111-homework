program abdulmalik
	IMPLICIT NONE
    INTEGER::n
    logical::issorted,h
    REAL::w(20),k,SUM_P_V
    print*,"enter n"
    read*,n
    call READ_REAL_VECROR(w,n,20)
    K = SUM_P_V(w,n,20)
    h = issorted(w,n,20)
    print*,"k=",k,"h",h
END Program abdulmalik

SUBROUTINE READ_REAL_VECROR(w,n,s)
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

logical FUNCTION issorted(w,n,s)
	IMPLICIT NONE
    INTEGER,INTENT(IN)::n,s
    REAL,INTENT(in)::w(s)
    logical::x=.true.
    INTEGER::i
    do i=2,n
      if(w(i-1)<w(i))then
        x=.true.
      else
        x=.false.
        exit
      endif
    enddo
    issorted=x
end FUNCTION issorted
