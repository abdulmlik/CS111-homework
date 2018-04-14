program abdulmalik
	IMPLICIT NONE
    INTEGER::n,i
    REAL::v1(20),v2(20),v3(20)
    print*,"enter n"
    read*,n
    call READ_REAL_VECROR(v1,20,n)
    call READ_REAL_VECROR(v2,20,n)
    call elementsum(v1,20,n,v2,20,v3,20)
    do i=1,n
        print*,v3(i)
    enddo
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

SUBROUTINE elementsum(v1,n,s,v2,k,v3,f)
    IMPLICIT NONE
    INTEGER,INTENT(IN)::n,s,k,f
    REAL,INTENT(in)::v2(k),v1(s)
    REAL,INTENT(out)::v3(f)
    INTEGER::i
    do i=1,n
      v3(i)=v1(i)+v2(i)
    enddo
end SUBROUTINE elementsum