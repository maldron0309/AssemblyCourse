includelib ucrt.lib                ; C ǥ�� ���̺귯�� ����
includelib legacy_stdio_definitions.lib ; ������ C ����� ���� ����

EXTERN printf: PROC                ; �ܺ� printf �Լ� ����

.DATA
fmtStr byte 'The sum is %d', 10, 0 ; ����� ���� ���ڿ� ����

.CODE
main PROC
    mov rcx, 3                     ; rcx�� ù ��° ���� 3 ����
    mov rdx, 2                     ; rdx�� �� ��° ���� 2 ����

    call Sum                       ; Sum ���ν��� ȣ�� (�� ���)
    call Print                     ; Print ���ν��� ȣ�� (��� ���)

    xor rax, rax                   ; RAX �������͸� 0���� �ʱ�ȭ
    ret                             ; main ���ν��� ����
main ENDP

Sum Proc
    mov rax, rcx                   ; rcx�� ���� rax�� ����
    add rax, rdx                   ; rax�� rdx ���� ����
    ret                             ; �ջ� ����� rax�� ��� ����
Sum ENDP

Print PROC
    sub rsp, 20h                   ; ���� ���� Ȯ�� (32����Ʈ)
    lea rcx, fmtStr               ; ���� ���ڿ� �ּҸ� rcx�� �ε�
    mov rdx, rax                   ; �ջ� ����� rdx�� �̵�
    call printf                    ; printf ȣ���Ͽ� ��� ���
    add rsp, 20h                   ; ���� ���� ����
    ret                             ; Print ���ν��� ����
Print ENDP

END
