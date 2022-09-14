.globl cas
cas:
lr.w t0, (a0)   # load original value to t0;
bne t0, a1, fail    # values does not match, return false
sc.w a0, a2, (a0)    # update
li a0, 0
jr ra   # return to caller

fail:
li a0, 1   # return value false
jr ra  # return to caller