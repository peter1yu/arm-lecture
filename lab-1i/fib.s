	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r4, r5, r6, r7, r8, lr}
	mov r4, #-1 @ r4 = previous = -1
	mov r5, #1 @ r5 = result = 1
	mov r6, #0 @ r6 = index = 0
	mov r7, #0 @ r7 = sum = 0

.loop:
	add r7, r5, r4 @ sum = result + previous
	mov r4, r5 @ previous = result
	mov r5, r7 @ result = sum
	add r6, r6, #1 @ index++
	subs r8, r6, r0
	ble .loop @ goto .loop if i <= x

	mov r0, r5 @ return

	pop {r4, r5, r6, r7, r8, pc}		@EPILOG

	@ END CODE MODIFICATION

	.size fibonacci, .-fibonacci
	.end
