.model small
.stack 100h
.data
msg db 0ah,0dh,'Enter a number $'
msg1 db 0ah,0dh,'Less than 5 $'
msg2 db 0ah,0dh, 'Greater than 5 $'
.code
main proc
    mov ax,@data
    mov ds,ax  
    
    mov cl,5
       
    lea dx,msg
    mov ah,9
    int 21h

    mov ah,1
    int 21h
    mov bl,al
    ;add bl,48
    
    cmp bl,cl
    jl Less
    jg Greater 

    Less:
    lea dx,msg1
    mov ah,9
    int 21h 
    jmp END

    Greater:
    lea dx,msg2
    mov ah,9
    int 21h
    jmp END


    END: 
    mov ah,4ch
    int 21h
    main endp
end main