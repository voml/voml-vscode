(servers)
(servers/alpha)
ip = `192.168.255.1`
pw = "力微任重久神疲"
(servers/beta)
ip = `192.168.256.1` % ❌
pw = "再竭衰庸定不支"
(servers/meta)
ip = [
    $servers/alpha/ip,
    $servers/beta/ip
]
pw = $servers/*/pw

(DateTime)
ld1  = @d`1979-05-27`           % Local Date
lt1  = @d`07:32:00`             % Local Time
ldt1 = @d`1979-05-27T07:32:00`  % Local Date-Time
odt1 = @d`1979-05-27T07:32:00Z` % Offset Date-Time
odt2 = @d'''1979-05-27T07:32:00Z'''


(Regex)
ipv4 = re`^((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)$`
ipv6 = re`^([\da-fA-F]{1,4}:){7}[\da-fA-F]{1,4}$`

