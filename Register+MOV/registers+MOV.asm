.CODE

; mov 명령어 사용법
;           <------
;    mov <dest>, <src>
;
;    mov <register>, <memory>         ; 메모리에서 레지스터로 이동
;    mov <register>, <immediate value> ; 즉시 값(리터럴)을 레지스터로 이동
;    mov <register>, <register>        ; 한 레지스터에서 다른 레지스터로 이동
;    mov <memory>, <register>          ; 레지스터의 값을 메모리에 저장


Example PROC

    mov r8, 0                   ; r8 레지스터를 0으로 초기화
    mov r8b, 11h                ; r8의 하위 8비트에 0x11 저장 (8비트 값 이동)
    mov r8w, 2222h              ; r8의 하위 16비트에 0x2222 저장 (16비트 값 이동)
    mov r8d, 33333333h          ; r8의 하위 32비트에 0x33333333 저장 (32비트 값 이동)
    mov r8, 4444444444444444h   ; r8 레지스터에 0x4444444444444444 저장 (64비트 값 이동)
    mov rax, r8                 ; r8의 값을 rax로 이동 (레지스터 간 이동)

    mov rax, 0                  ; rax 레지스터를 0으로 초기화
    mov al, 11h                 ; rax의 하위 8비트에 0x11 저장 (8비트 값 이동)
    mov ah, 22h                 ; rax의 상위 8비트에 0x22 저장 (16비트 레지스터의 상위 8비트 이동)
    mov ax, 3333h               ; rax의 하위 16비트에 0x3333 저장 (16비트 값 이동)
    mov eax, 44444444h          ; rax의 하위 32비트에 0x44444444 저장 (32비트 값 이동)
    mov rax, 5555555555555555h  ; rax 레지스터에 0x5555555555555555 저장 (64비트 값 이동)

    ; r8 레지스터를 0xFFFFFFFFFFFFFFFF으로 초기화
    mov r8, 0FFFFFFFFFFFFFFFFh  ; r8 레지스터를 최대값으로 초기화
    mov r8b, 11h                ; r8의 하위 8비트에 0x11 저장 (8비트 값 이동)
    mov r8w, 2222h              ; r8의 하위 16비트에 0x2222 저장 (16비트 값 이동)
    mov r8d, 33333333h          ; r8의 하위 32비트에 0x33333333 저장
    ; !!! 주의: 하위 32비트에 값을 저장하면 상위 32비트가 지워진다 !!!

    ret                          ; 프로시저 종료
Example ENDP

END
