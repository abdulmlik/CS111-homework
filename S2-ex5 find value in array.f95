program abdulmalik
	IMPLICIT NONE
    INTEGER::n
    REAL::w(20),val
    logical::findval,t
    print*,"enter n"
    read*,n
    print*,"enter val"
    read*,val
    call READ_REAL_VECROR(w,20,n)
    t = findval(w,n,20,val)
    print*,t
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

logical FUNCTION findval(w,n,s,val)
	IMPLICIT NONE
    INTEGER,INTENT(IN)::n,s
    REAL,INTENT(in)::w(s)
    logical::x=.true.
    INTEGER::i
    REAL::val
    do i=1,n
      if(w(i)==val)then
        x=.true.
        exit
      else
        x=.false.
      endif
    enddo
    findval=x
end FUNCTION findval