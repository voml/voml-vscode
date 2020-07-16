import "package.json" as package
import json "package.json" as pkg

% This is a Arc example document.
% Using `%` starts line comment
%%%
*here is a markdown note*
%%%


[literal.integer]
int1 =+99
int2 = 42
int3 = 0
int4 =-17
int5 = 1_000
int6 = 1_2_3_4_5

[literal.decimal]
flt1 = 0.
flt2 =-0.0_2
flt3 =+5_0.
flt4 = 3.1415
flt5 =-0.01
flt6 = 224_617.445_991_228


[string]
char = `2`
singleline = "This is a string."
multiline = """
\b     - backspace       (U+0008)
\t     - tab             (U+0009)
\n     - linefeed        (U+000A)
\f     - form feed       (U+000C)
\r     - carriage return (U+000D)
\"     - quote           (U+0022)
\/     - slash           (U+002F)
\\     - backslash       (U+005C)
\u1234 - unicode         (U+1234)
"""

literal = '''
\b     - backspace       (U+0008)
\t     - tab             (U+0009)
\n     - linefeed        (U+000A)
\f     - form feed       (U+000C)
\r     - carriage return (U+000D)
\"     - quote           (U+0022)
\/     - slash           (U+002F)
\\     - backslash       (U+005C)
\u1234 - unicode         (U+1234)
'''


{list.inline}
arr1 = [1, 2, 3]
arr2 = ["red", "yellow", "green"]
arr3 = [[1, 2], [3, 4, 5]]
arr4 = ["all", 'strings', """are the same""", '''type''']
arr5 = [
    [1, 2]
    ["a", "b", "c"]
]
arr6 = [1, 2.0]
inline = [
    { x = 1, y = 2, z = 3 },
    { x = 7, y = 5, z = 9 },
    { x = 2, y = 4, z = 8 },
]

%===========================================================================================



<list.scope.insert>
* 42
* 'string'
* [true, false, null]

<list.scope.string>
* Apple
* Banana
* Cherry

<list.scope.dict>
^ name = "Apple"
  color = "red"
^ name = "Banana"
  color = "yellow"
^ name = "apple"
  color = "red"

% expand above syntax
[list.scope.expand]
insert = [42, 'string', [true, false, null]]
string = ['Apple', 'Banana', 'Cherry']
dict = [
    {name = 'Apple', color = 'red'},
    {name = 'Banana', color = 'yellow'},
    {name = 'apple', color = 'red'}
]

%===========================================================================================

[dict.server]
[.meta]
ip = [
    $dict.server.alpha.ip
    $dict.server.beta.ip
]
[.alpha]  % child node
id = 10000
pw = "力微任重久神疲"
[.beta]   % child node at same level
id = 10001
pw = "再竭衰庸定不支"

% expand above syntax
[dict.server.expand]

%===========================================================================================


[version]
alias = 'v|version'
eg1.input = v|1.0.0
eg1.expand = {
    major = 1u64
    mino = 0u64
    patch = 0u64
}


{DateTime}
ld1  = dt'1979-05-27'           % Local Date
lt1  = dt'07:32:00'             % Local Time
ldt1 = dt'1979-05-27T07:32:00'  % Local Date-Time
odt1 = dt'1979-05-27T07:32:00Z' % Offset Date-Time
odt2 = dt'1979-05-27T07:32:00X'


{Regex}
ipv4 = re|(\^)?\s*([A-Za-z_-][\\/@A-Za-z0-9_-]*|".+"|'.+'|[0-9]+)\s*(@[A-Za-z]+)\s*(=|:)\s*
ipv6 = re|^([\da-fA-F]{1,4}:){7}[\da-fA-F]{1,4}$



{Embed}
table = csv```
a,1
```


[[arc]]


