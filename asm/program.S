.syntax unified
.cpu cortex-m4
.thumb
loop:
mov r11, #1
push {r11}
mov r12, #2
ldr r1, [sp,#0x4]
ldr r2, [sp,#0x0]

b loop
// RCC Aktiviere Gpios
//ldr r0,=0x40021014
//mov r1, #0xf
//ldr r2, [r0]
//lsl r1, r1, #0x10
//orr r1,r1,r2
//str r1,[r0]
/*mov r8, #1
mov r0, #1
mov r1,#0xc
and r0, r1, #0xc


ldr r0,*RCC
ldr r2, [r0]
mov r1, #0xf
lsl r1, r1, #0x0
orr r1,r1,r2
str r1,[r0]

b skipA
RCC: .word 0x40023830
skipA:

mov r8, #0x1

ldr r0,=0x40023844
ldr r2, [r0]
mov r1, #0x1
lsl r1, r1, #0x8
orr r1,r1,r2
str r1,[r0]
ldr r0,=0x40012000
orr r3, r0, #0x08
ldr r2, [r3]
mov r1, #0x1
orr r1,r1,r2
str r1,[r3]
orr r3, r0, #0x04
ldr r2, [r3]
mov r1, #0x200
orr r1,r1,r2
str r1,[r3]
mov r12,#0xFF

mov r8, #0xC

// heap and stack
ldr sp,=0x20009FF8
mov r8, #0x3

// init port a2
ldr r2, =0x40020000
mov r3, #1
ldr r4,[r2]
lsl r3, r3, #4
orr r3, r3, r4
mov r4, #3
lsl r4, r4, #2
orr r3, r3, r4
str r3, [r2]

//ldr r5, =Wait_InSeconds_1

orr r4, r2, #0x18
mov r3, #1
lsl r3, r3, #2
str r3, [r4]

mov r8, #0x66

loop:

ldr r0, =0x40012000
mov r1, #0x1


orr r2, r0, #0x34
str r1, [r2]
mov r12, #0
str r12, [r0]
orr r1, r0, #0x08
ldr r2, [r1]
mov r12, #1
lsl r12, r12, #30
orr r12, r12, r2
str r12, [r1]
JUMPHELPER_70:
ldr r12, [r0]
and r12, r12, #0x2
cmp r12, #0
beq JUMPHELPER_70
orr r0, r0, #0x4C
mov r8, #99
ldr r12, [r0]
mov r0, #1
mov r8, #1
mov r7, r12


    mov r8, #0x4

    mov r0, #1
    //mov r11, pc
    //mov pc, r5

    mov r8, #0x6

    // write true to port a2
    orr r4, r2, #0x18
    mov r3, #1
    lsl r3, r3, #2
    str r3, [r4]

    mov r0, #2
    //mov r11, pc
    //mov pc, r5

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
mov pc, r11*/