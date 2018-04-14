program abdulmalik
	IMPLICIT NONE
    INTEGER::n
    REAL::w(20),v(20)
    logical::x=.true.,areequal
    print*,"enter n"
    read*,n
    call READ_REAL_VECROR(w,20,n)
    call READ_REAL_VECROR(v,20,n)
    x=areequal(w,20,n,v,20)
    print*,x
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

logical function areequal(v1,s,n,v2,k)
    IMPLICIT NONE
    INTEGER,INTENT(IN)::n,s,k
    REAL,INTENT(in)::v2(k),v1(s)
    logical::x=.true.
    INTEGER::i
    do i=1,n
      if(v1(i)==v2(i))then
        x=.true.
      else
        x=.false.
        exit
      endif
    enddo
    areequal=x
end function areequal
