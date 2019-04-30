(servers)
(servers/alpha)
ip = @ip`192.168.255.1`
pw = "力微任重久神疲"
(servers/beta)
ip = @ip`192.168.256.1` % ❌
pw = "再竭衰庸定不支"
(servers/meta)
ip = [
    $servers/alpha/ip,
    $servers/beta/ip
]
pw = $servers/*/pw

