Program abdulmalik
	IMPLICIT NONE
    INTEGER::n
    REAL::w(20),k,findmaxodd
    print*,"enter n"
    read*,n
    call READ_REAL_VECROR(w,20,n)
    K = findmaxodd(w,n,20)
    print*,k
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

real FUNCTION findmaxodd(w,n,s)
	IMPLICIT NONE
    INTEGER,INTENT(IN)::n,s
    REAL,INTENT(in)::w(s)
    INTEGER::i,a
    REAL::y,max=-1
    do i=1,n
      y=w(i)
      if( Mod(y,2.) == 1)then
        if(w(i)>max)then
          max=w(i)
          a=i
        endif
      endif
    enddo
    if(max/=-1)then
      max=a
    endif
    findmaxodd=max
end FUNCTION findmaxodd