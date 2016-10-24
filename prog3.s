@Andrew Hunter
@ahunte3
@CPSC 2310 001
@Program 3

@Takes in 3 parameters, (A,B,C) and returns the result of
@(A + (B * C))

        .text
        .global mac
        .type mac, %function

aye     .req r0
bee     .req r1
cee     .req r2
temp	.req r4


mac:
push {temp, lr}

mul temp, bee, cee      @multiply B and C and bequeaths the result to temp
add aye, aye, temp      @add A and temp and bequeaths the result to A

done:
pop {temp, pc}

.unreq aye
.unreq bee
.unreq cee
.unreq temp
