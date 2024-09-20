includelib ucrt.lib                ; C 표준 라이브러리 포함
includelib legacy_stdio_definitions.lib ; 오래된 C 입출력 정의 포함

EXTERN printf: PROC                ; 외부 printf 함수 선언

.DATA
fmtStr byte 'The sum is %d', 10, 0 ; 출력할 형식 문자열 정의

.CODE
main PROC
    mov rcx, 3                     ; rcx에 첫 번째 숫자 3 저장
    mov rdx, 2                     ; rdx에 두 번째 숫자 2 저장

    call Sum                       ; Sum 프로시저 호출 (합 계산)
    call Print                     ; Print 프로시저 호출 (결과 출력)

    xor rax, rax                   ; RAX 레지스터를 0으로 초기화
    ret                             ; main 프로시저 종료
main ENDP

Sum Proc
    mov rax, rcx                   ; rcx의 값을 rax에 복사
    add rax, rdx                   ; rax에 rdx 값을 더함
    ret                             ; 합산 결과를 rax에 담아 리턴
Sum ENDP

Print PROC
    sub rsp, 20h                   ; 스택 공간 확보 (32바이트)
    lea rcx, fmtStr               ; 형식 문자열 주소를 rcx에 로드
    mov rdx, rax                   ; 합산 결과를 rdx에 이동
    call printf                    ; printf 호출하여 결과 출력
    add rsp, 20h                   ; 스택 공간 복원
    ret                             ; Print 프로시저 종료
Print ENDP

END
