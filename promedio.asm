global promedio

section .text

promedio:
    ;prologo de calling conventions
    push ebp
    mov ebp, esp
    push esi
    push edi
    push ebx

    ;limpio registros
    xor eax, eax
    xor ebx, ebx
    xor ecx, ecx
    xor edx, edx

    ;inicializo apuntadores
    mov ecx , [ebp + 8]  ; num de datos
    mov edi, [ebp + 12]  ; *arr

    mov eax, [edi] ; muevo a eax el primer dato de arr
    mov ebx, ecx   ; copio en ebx, ya que al drecrementar perderá su valor y tengo q guardar para dividir
    dec ecx
    jz exit        ; en caso solo haya 1 elemento ya no entra al bucle sino q defrente dvide ese unico valor en exit

    suma:
        add edi, 4  ; incremento la pos del puntero, sino no se mueve y no agarra los datos
        add eax, [edi]   ;le sumo a eax el sgte valor del arr
        loop suma

    exit:
        cdq ; extiendo el resultado de eax a edx
        idiv ebx;   edx:eax<-- edx:eax / ebx    resultado del promedio


    ;epilogo de calling conventions
    pop ebx;
    pop edi
    pop esi
    mov esp, ebp
    pop ebp
    ret


