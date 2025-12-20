#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Hidenori Koseki
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "NG at Line $1"
    res=1
}

res=0


### --sum

out=$(seq 10 | ./plus)
[ "${out}" = "55" ] || ng ${LINENO}

out=$(seq 100 | ./plus)
[ "${out}" = "5,050" ] || ng ${LINENO}


### --avg


out=$(seq 10 | ./plus --avg)
[ "${out}" = "5.5" ] || ng ${LINENO}


### --count

out=$(seq 10 | ./plus --count)
[ "${out}" = "10" ] || ng ${LINENO}


### 文字入力 

out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}


### 記号入力 

out=$(echo . | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}


### 空入力 

out=$(echo | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}


### 不正オプション

out=$(echo 1 | ./plus --max)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}


### 結果

[ "$res" = 0 ] && echo OK
exit $res
