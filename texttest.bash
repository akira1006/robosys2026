#!/bin/bash

# SPDX-FileCopyrightText: 2026 Hikaru Sawaya
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo ${1}行目のテスト失敗
    res=1
}

res=0
out=$(echo "apple apple orange" | ./text)
[ "$?" = 0 ] || ng "$LINENO"
expected=$'apple 2\norange 1'
[ "${out}" = "${expected}" ] || ng "$LINENO"
out=$(echo "Apple apple APPLE" | ./text)
[ "$?" = 0 ] || ng "$LINENO"
expected=$'apple 3'
[ "${out}" = "${expected}" ] || ng "$LINENO"
out=$(echo "a i apple apple" | ./text)
[ "$?" = 0 ] || ng "$LINENO"
expected=$'apple 2'
[ "${out}" = "${expected}" ] || ng "$LINENO"
out=$(echo "" | ./text)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"
[ "${res}" = 0 ] && echo OK

exit $res
