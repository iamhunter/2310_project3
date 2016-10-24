@Andrew Hunter
@ahunte3
@CPSC 2310
@Program 3


        .text
        .global mac
        .type mac, %function

aye     .req r0
bee     .req r1
cee     .req r2
temp	.req r4


mac:
push {temp, lr}

mul temp, bee, cee
add aye, aye, temp

done:
pop {temp, pc}

.unreq aye
.unreq bee
.unreq cee
.unreq temp
