/*

*/
.text
.global _start
_start:
	ldr sp,=4096
    ldr r1, =0x56000050
    ldr r0, =0x55555 /*mov r0, #0x100*/
    str r0,[r1]

/*
    设置GPF4输出高电平
    把0写道地址0x56000054
*/
    ldr r1, =0x56000054
    ldr r0, =0 /* mov r0, #0 */
    str r0, [r1]
    bl main
halt:
    b halt

