    section .data
        i dd 1
        j dd 0
    section .text

global ordenaVetor




ordenaVetor:

    enter 0, 0

    mov edx, [ebp+8]; vetor
    mov edx, [ebp+12]; tam
    push ebx    ; salva o valor de ebx
    mov ebx, 0 ; aux1
    mov eax, 0 ; aux2

    .loop1: ;for(i = 1; i <= tam; i++)
        mov dword[j], 0

        .loop2: ;for(j = 0; j < tam - 1; j++)
            mov ebx, dword[j] ;ebx = j
            mov eax, [edx + ebx*4] ; eax = vetor[j]
            mov ebx, [edx + ebx*4 + 4] ;ebx = vetor[j + 1]
            cmp ebx, eax ; compara se ebx sera menor que eax
            jnb .inc_j ; se for, troca

            ;swap
            push ecx
            mov ecx, dword[j] ;ecx = j
            mov [edx + ecx*4], ebx
            mov [edx + ecx*4 + 4], eax
            pop ecx

            ;incrementar j
            .inc_j:
                inc dword[j]
                mov ebx, ecx
                dec ebx
                cmp dword[j], ebx ; j == tam - 1
                jne .loop2

        inc dword[i]
        mov ebx, ecx
        cmp dword[i], ecx ; i > tam
        jne .loop1

    pop eax
    pop ebx
    leave



    .swap:



