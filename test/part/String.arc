(String)
char = `c`
single_line = 'This is a string.'
single_line2 = "This also a string"


multiline = ````
\b     - backspace       (U+0008)
\t     - tab             (U+0009)
\n     - linefeed        (U+000A)
\f     - form feed       (U+000C)
\r     - carriage return (U+000D)
\"     - quote           (U+0022)
\/     - slash           (U+002F)
\\     - backslash       (U+005C)
\u1234 - unicode         (U+1234)
````

literal = r````
\b     - backspace       (U+0008)
\t     - tab             (U+0009)
\n     - linefeed        (U+000A)
\f     - form feed       (U+000C)
\r     - carriage return (U+000D)
\"     - quote           (U+0022)
\/     - slash           (U+002F)
\\     - backslash       (U+005C)
\u1234 - unicode         (U+1234)
````

s = include"""
a.singleline
sha: 5001
""""



${@a}
