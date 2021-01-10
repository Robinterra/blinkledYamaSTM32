.syntax unified
.cpu cortex-m4
.thumb
//_start:
// RCC Aktiviere Gpios
ldr r0,=0x40021014
mov r1, #0xf
ldr r2, [r0]
lsl r1, r1, #0x10
orr r1,r1,r2
str r1,[r0]

mov r8, #0x1
// heap and stack
ldr sp,=0x20009FF8
mov r8, #0x3
ldr r10,=0x20000000
mov r8, #0x5
ldr r11,=0x1
sub r12,sp,r10
str r11,[r10,#0]
str r12,[r10,#4]

// init port a2
ldr r2, =0x48000000
mov r3, #1
ldr r4,[r2]
lsl r3, r3, #4
orr r3, r3, r4
str r3, [r2]

ldr r5, =Wait_InSeconds_1

orr r4, r2, #0x18
mov r3, #1
lsl r3, r3, #2
str r3, [r4]

loop:

    mov r8, #0x4

    mov r0, #1
    mov r11, pc
    mov pc, r5

    mov r8, #0x6

    // write true to port a2
    orr r4, r2, #0x18
    mov r3, #1
    lsl r3, r3, #2
    str r3, [r4]

    mov r0, #2
    mov r11, pc
    mov pc, r5

    // write false to port a2
    orr r4, r2, #0x18
    mov r3, #1
    lsl r3, r3, #0x10
    lsl r3, r3, #2
    str r3, [r4]

b loop

Wait_InSeconds_1:
mov r8, #0x7
mov r8, #0x99
push {r9,r10,r11}
mov r8, #0x8
sub sp, sp, #0x4
mov r8, #0x9
str r0, [sp,#4]
    mov r8, #0x5
    JUMPHELPER_6:
    mov r12,#0xFF
    cmp r12, #0
    bne JUMPHELPER_8
    b JUMPHELPER_7
    JUMPHELPER_8:
        ldr r12, =0x3D0900
        JUMPHELPER_9:
        sub r12, r12, #1
        cmp r12, #0
        bne JUMPHELPER_9
        mov r12,#0x1
        mov r10, r12
        ldr r12,[sp,#4]
        mov r9, r12
        mov r0,r9
        mov r1,r10
        sub r12,r0,r1
        str r12, [sp,#4]
        cmp r12, #0
        bne JUMPHELPER_11
        b JUMPHELPER_10
        JUMPHELPER_11:
    b JUMPHELPER_6
    JUMPHELPER_10: mov r12,#0xFF
b JUMPHELPER_12
b JUMPHELPER_6
JUMPHELPER_7:
JUMPHELPER_12:
mov r8, #0xa
add sp, sp, #0x4
mov r8, #0xb
pop {r9,r10,r11}
mov r8, #0xc
mov pc, r11