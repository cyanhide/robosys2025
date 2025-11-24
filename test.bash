#!/bin/bash -xv 
# SPDX-FileCopyrightText: 2025 Hidenori Koseki
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "NG at Line $1"
    res=1
}

res=0

### 数字のみのとき###
out=$(seq 10 | ./plus)
[ "${out}" = "55" ] || ng ${LINENO}

out=$(seq 100 | ./plus)
[ "${out}" = "5,050" ] || ng ${LINENO}

out=$(seq 1000 | ./plus)
[ "${out}" = "500,500" ] || ng ${LINENO}

out=$(seq 10000 | ./plus)
[ "${out}" = "50,005,000" ] || ng ${LINENO}

### 文字を含むとき ###
out=$(seq あ | ./plus)
[ "$?" = 0 ] || ng ${LINENO}

### 記号を含むとき ###
out=$(seq . | ./plus)
[ "$?" = 0 ] || ng ${LINENO}

### 空文字の判定 ###
out=$(seq | ./plus)
[ "$?" = 0 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK

exit $res
