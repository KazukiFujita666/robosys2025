#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Kazuki Fujita
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}
res=0

# 正常系
out=$(echo 2 | ./factorize)
[ "$out" = "2" ] || ng "$LINENO"

out=$(echo 12 | ./factorize)
[ "$out" = "2*2*3" ] || ng "$LINENO"

out=$(echo 36 | ./factorize)
[ "$out" = "2*2*3*3" ] || ng "$LINENO"

out=$(echo 180 | ./factorize)
[ "$out" = "2*2*3*3*5" ] || ng "$LINENO"

# 素数
out=$(echo 97 | ./factorize)
[ "$out" = "97" ] || ng "$LINENO"

# 境界値
out=$(echo 1 | ./factorize)
[ "$out" = "1" ] || ng "$LINENO"

# 異常入力
out=$(echo a | ./factorize 2>/dev/null)
[ "$?" = 1 ] || ng "$LINENO"

# 空入力
out=$(echo | ./factorize 2>/dev/null)
[ "$?" = 1 ] || ng "$LINENO"

[ "$res" = 0 ] && echo "OK"
exit $res

