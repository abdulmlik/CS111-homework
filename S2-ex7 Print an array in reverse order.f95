Program abdulmalik
	IMPLICIT NONE
    INTEGER::n
    REAL::w(20)
    print*,"enter n"
    read*,n
    call READ_REAL_VECROR(w,20,n)
    call swap_d(w,n,20)
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

SUBROUTINE swap_d(w,n,s)
    IMPLICIT NONE
    INTEGER,INTENT(IN)::n,s
    REAL,INTENT(out)::w(s)
    INTEGER::i
    do i=n,1,-1
        print*,w(i)
    enddo
end SUBROUTINE swap_d