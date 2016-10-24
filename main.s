@Andrew Hunter
@ahunte3
@CPSC 2310 001
@Program 3

@Description reads in three parameters, runs a subroutine
@and prints the results of the subroutine
        .text
        .global main
        .type main, %function

aye     .req r1
bee     .req r2
cee     .req r3


main:

push {lr}
sub sp, sp, #12

@Asks user for input for A and  stores it
ldr r0, =prtAye
bl printf
ldr r0, =rdfmt
mov r1, sp
bl scanf

@Asks user for input for B and stores it
ldr r0, =prtBee
bl printf
ldr r0, =rdfmt
add r1, sp, #4
bl scanf

@Asks user for input for C and stores it
ldr r0, =prtBee
bl printf
ldr r0, =rdfmt
add r1, sp, #8
bl scanf

@Prints the first part (A + (B * C))
ldmia sp, {aye-cee}
ldr r0, =prtfmt
bl printf

@Runs the MAC function
ldmia sp, {r0-r2}
bl mac

@Prints the result of the MAC function
mov r1, r0
ldr r0, =prtfmttwo
bl printf

add sp, sp, #12
pop {pc}

rdfmt:      .asciz "%d"
prtfmt:     .asciz "\n%d + (%d * %d) = "
prtfmttwo:  .asciz "%d\n\n"
prtAye:     .asciz "Enter an integer for A: "
prtBee:     .asciz "Enter an integer for B: "
prtCee:     .asciz "Enter an integer for C: "
