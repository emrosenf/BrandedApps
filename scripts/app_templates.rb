u = User.new
u.email = "evan@merchcraft.com"
u.password = "test"
u.save

dev_cert = <<ENDL
Bag Attributes
    friendlyName: Apple Development IOS Push Services: 4G32E7R576:4G32E7R576
    localKeyID: A6 8F 4D 15 93 8A C5 43 15 47 07 BC 28 0D B9 C4 D1 EB D3 2A 
subject=/UID=com.avocadohills.monocle/CN=Apple Development IOS Push Services: 4G32E7R576:4G32E7R576/C=US
issuer=/C=US/O=Apple Inc./OU=Apple Worldwide Developer Relations/CN=Apple Worldwide Developer Relations Certification Authority
-----BEGIN CERTIFICATE-----
MIIFfDCCBGSgAwIBAgIICKMMvCom1DkwDQYJKoZIhvcNAQEFBQAwgZYxCzAJBgNV
BAYTAlVTMRMwEQYDVQQKDApBcHBsZSBJbmMuMSwwKgYDVQQLDCNBcHBsZSBXb3Js
ZHdpZGUgRGV2ZWxvcGVyIFJlbGF0aW9uczFEMEIGA1UEAww7QXBwbGUgV29ybGR3
aWRlIERldmVsb3BlciBSZWxhdGlvbnMgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkw
HhcNMTIwMTE3MDIxMTAwWhcNMTMwMTE2MDIxMTAwWjB8MSgwJgYKCZImiZPyLGQB
AQwYY29tLmF2b2NhZG9oaWxscy5tb25vY2xlMUMwQQYDVQQDDDpBcHBsZSBEZXZl
bG9wbWVudCBJT1MgUHVzaCBTZXJ2aWNlczogNEczMkU3UjU3Njo0RzMyRTdSNTc2
MQswCQYDVQQGEwJVUzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAN96
9v5yMTIu2OGIxUadekhs0iemsGtpYhZzN2fZmdBgnTO0SFnjeLABnJRAfxLt90sB
g4fXFY+6fz3rtXhy4Vpi2GtRdYK6xJHNaAdqArSx54i6/sfWdmIfGYV8VR9wSDi9
SllcAe22P43acGLN7JNuJifmi2GUgx2fA4xleOrlylWvKOl+KaKXDZUjlJMdcjZJ
GVjmUAYYgISEZdz6ZFRevZCKe4sBmiC0i/5IDl2EH4Z9QnAxlgG3tlovw1tWfgVG
5jXNAVYz4jUxwYJIIEHWJ61ui0ZOPRj1g1JKy6m2IYeIaaQKTrwJSzFVJ4mFN06h
CxhSO6F/Ennl9bZOV7ECAwEAAaOCAeUwggHhMB0GA1UdDgQWBBSmj00Vk4rFQxVH
B7woDbnE0evTKjAJBgNVHRMEAjAAMB8GA1UdIwQYMBaAFIgnFwmpthhgi+zruvZH
WcVSVKO3MIIBDwYDVR0gBIIBBjCCAQIwgf8GCSqGSIb3Y2QFATCB8TCBwwYIKwYB
BQUHAgIwgbYMgbNSZWxpYW5jZSBvbiB0aGlzIGNlcnRpZmljYXRlIGJ5IGFueSBw
YXJ0eSBhc3N1bWVzIGFjY2VwdGFuY2Ugb2YgdGhlIHRoZW4gYXBwbGljYWJsZSBz
dGFuZGFyZCB0ZXJtcyBhbmQgY29uZGl0aW9ucyBvZiB1c2UsIGNlcnRpZmljYXRl
IHBvbGljeSBhbmQgY2VydGlmaWNhdGlvbiBwcmFjdGljZSBzdGF0ZW1lbnRzLjAp
BggrBgEFBQcCARYdaHR0cDovL3d3dy5hcHBsZS5jb20vYXBwbGVjYS8wTQYDVR0f
BEYwRDBCoECgPoY8aHR0cDovL2RldmVsb3Blci5hcHBsZS5jb20vY2VydGlmaWNh
dGlvbmF1dGhvcml0eS93d2RyY2EuY3JsMAsGA1UdDwQEAwIHgDATBgNVHSUEDDAK
BggrBgEFBQcDAjAQBgoqhkiG92NkBgMBBAIFADANBgkqhkiG9w0BAQUFAAOCAQEA
OGv2corvDb20S5pIBEZoeibSoclXhhdIT2nsC0OhIHX3mC6cGZwnXQjVf0v2Yv8I
6HPG8I6+J1szmNtnavf8YNL4AZtIPUijsKVUMiYBYsJyQefy8QPVReUioWDJmHKx
q2gw4udzUQB5bePxD18uD1qTxfxKb2TUR3rEmLRea17QrJ9t6RC85AONa3dw1Lzm
LFQItXGvqq62Sd2xaL7d4Nag8Qg7hmJojBB+iQInjkJScBdg1hVfD31KS7D0+NFG
vU/zWiRlaP/cmE8wQAAfQBfq+y4rHNfUHz9HyVWpNu/PdDZGK4j3JHbCt76G3JAa
ADsesO3/Clw57PVwxvN5Ug==
-----END CERTIFICATE-----
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEA33r2/nIxMi7Y4YjFRp16SGzSJ6awa2liFnM3Z9mZ0GCdM7RI
WeN4sAGclEB/Eu33SwGDh9cVj7p/Peu1eHLhWmLYa1F1grrEkc1oB2oCtLHniLr+
x9Z2Yh8ZhXxVH3BIOL1KWVwB7bY/jdpwYs3sk24mJ+aLYZSDHZ8DjGV46uXKVa8o
6X4popcNlSOUkx1yNkkZWOZQBhiAhIRl3PpkVF69kIp7iwGaILSL/kgOXYQfhn1C
cDGWAbe2Wi/DW1Z+BUbmNc0BVjPiNTHBgkggQdYnrW6LRk49GPWDUkrLqbYhh4hp
pApOvAlLMVUniYU3TqELGFI7oX8SeeX1tk5XsQIDAQABAoIBADo3HgBKXuZjrbuS
lVE/1IrpThVmJq7UVOjkOpqi5J6TjF/bpr1DtDylLtSvuGqF8tVnH4xTSxqVym+m
5y7pPir9dMMABUx4upwAlgjYZLwNW/MSQyxrgYst7sgHC2WVKjsdlDCS9y2lPAkH
zh7u5aHCH85lEAnrVfxxX8tC46zMkqfxri3qONVtFkx+jSrS7wRl5cZZDXmAkyQ+
81X82xrEpiD2f4XTD8nxtaHL1uWUDVEn1fWjl7OCQnfesVHwDBShd9bBwl0vVdQ9
U9CQRAbZestqaClS4WQKfyfQgJTtxyHaCGIV8J6xD8Ybpu61IY5DzjPhUgDuiVpi
dFq+b8ECgYEA95QCS1FGpgEyTpZVkHp/sktwSIdWz9gL7TieHBDf4YTEkbJ/WTG3
P6qd2CVqfDQIsyuuRZpQjHoQXzKM+OltUOUW75JVTK13xLRMpZFI2jcVAjuSLgDX
dWKuxInmgXgkNyDKR34u9XJz+jlo4dwGD9IOZ/vGxEEbK9rjYsPOxYsCgYEA5xUa
qNExajQjjPJ+74/bgLUHsD6+d/vvHWvHOWiII+0d4HJeJBVaWBtf4tHiuAyG5XBT
FGLPzXEw98Cwzv58hRuqYM1PgF8NZ5YzcaBSOAUInoiTX51Z1BWWl6PtpBWF+ntb
2b+shdgS0fDLNPexS2yoSItltbknhoRw9VvIlzMCgYEArR63N/l+YGhnyCJBdMTj
9EXiHyVcI/xb4qZ7kP6Pvr+7QHJDsJgeHovs0g7f1jgAeWEq/Iq6lnBocFkF0KxR
f4aiMiXuNa77F/ZHvmLIQabQrv3+6uI1x2SY9t/C6nebQ11PdQycQ4+j364zU/Qp
3PgykK2zQNqR6GmoJRDszp8CgYA9uAVG0ZjBJOvZ2WrN0T5vQeqryBZXNZLH6OFt
E95Iuiwgpms+d/WJUsZpbmV/gtkErtuBtmKKHJFXmr+eiZn4c0suT6fMQZby88sJ
rihHjhCfRxsVjpFPc/Sky8PM73K5U/lUTz1lAjEEoaukmgNggcTwm0qvHqTP6M/C
uKD6wQKBgQCqQZpdDTMKtwam5+vC9/WzXKspL/bH6TBVgArvJ7Io7aij27cRNCjE
YTBL2n2S+8RAB1rP6Ug9njjXkEAzKeGRUYtTpanVKk+DH2gEbhqNKJTL0ZppWwJ9
zKLra/ACYmhfCUVgWMauncgn/E48jGk4+2gUSGIGcqVNwYmQzuQJdg==
-----END RSA PRIVATE KEY-----
ENDL

prod_cert = <<ENDL
Bag Attributes
    friendlyName: Apple Production IOS Push Services: 4G32E7R576:4G32E7R576
    localKeyID: A6 8F 4D 15 93 8A C5 43 15 47 07 BC 28 0D B9 C4 D1 EB D3 2A 
subject=/UID=com.avocadohills.monocle/CN=Apple Production IOS Push Services: 4G32E7R576:4G32E7R576/C=US
issuer=/C=US/O=Apple Inc./OU=Apple Worldwide Developer Relations/CN=Apple Worldwide Developer Relations Certification Authority
-----BEGIN CERTIFICATE-----
MIIFezCCBGOgAwIBAgIIUZ03Dxyb8ZUwDQYJKoZIhvcNAQEFBQAwgZYxCzAJBgNV
BAYTAlVTMRMwEQYDVQQKDApBcHBsZSBJbmMuMSwwKgYDVQQLDCNBcHBsZSBXb3Js
ZHdpZGUgRGV2ZWxvcGVyIFJlbGF0aW9uczFEMEIGA1UEAww7QXBwbGUgV29ybGR3
aWRlIERldmVsb3BlciBSZWxhdGlvbnMgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkw
HhcNMTIwMTE3MDIxMTQwWhcNMTMwMTE2MDIxMTQwWjB7MSgwJgYKCZImiZPyLGQB
AQwYY29tLmF2b2NhZG9oaWxscy5tb25vY2xlMUIwQAYDVQQDDDlBcHBsZSBQcm9k
dWN0aW9uIElPUyBQdXNoIFNlcnZpY2VzOiA0RzMyRTdSNTc2OjRHMzJFN1I1NzYx
CzAJBgNVBAYTAlVTMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA33r2
/nIxMi7Y4YjFRp16SGzSJ6awa2liFnM3Z9mZ0GCdM7RIWeN4sAGclEB/Eu33SwGD
h9cVj7p/Peu1eHLhWmLYa1F1grrEkc1oB2oCtLHniLr+x9Z2Yh8ZhXxVH3BIOL1K
WVwB7bY/jdpwYs3sk24mJ+aLYZSDHZ8DjGV46uXKVa8o6X4popcNlSOUkx1yNkkZ
WOZQBhiAhIRl3PpkVF69kIp7iwGaILSL/kgOXYQfhn1CcDGWAbe2Wi/DW1Z+BUbm
Nc0BVjPiNTHBgkggQdYnrW6LRk49GPWDUkrLqbYhh4hppApOvAlLMVUniYU3TqEL
GFI7oX8SeeX1tk5XsQIDAQABo4IB5TCCAeEwHQYDVR0OBBYEFKaPTRWTisVDFUcH
vCgNucTR69MqMAkGA1UdEwQCMAAwHwYDVR0jBBgwFoAUiCcXCam2GGCL7Ou69kdZ
xVJUo7cwggEPBgNVHSAEggEGMIIBAjCB/wYJKoZIhvdjZAUBMIHxMIHDBggrBgEF
BQcCAjCBtgyBs1JlbGlhbmNlIG9uIHRoaXMgY2VydGlmaWNhdGUgYnkgYW55IHBh
cnR5IGFzc3VtZXMgYWNjZXB0YW5jZSBvZiB0aGUgdGhlbiBhcHBsaWNhYmxlIHN0
YW5kYXJkIHRlcm1zIGFuZCBjb25kaXRpb25zIG9mIHVzZSwgY2VydGlmaWNhdGUg
cG9saWN5IGFuZCBjZXJ0aWZpY2F0aW9uIHByYWN0aWNlIHN0YXRlbWVudHMuMCkG
CCsGAQUFBwIBFh1odHRwOi8vd3d3LmFwcGxlLmNvbS9hcHBsZWNhLzBNBgNVHR8E
RjBEMEKgQKA+hjxodHRwOi8vZGV2ZWxvcGVyLmFwcGxlLmNvbS9jZXJ0aWZpY2F0
aW9uYXV0aG9yaXR5L3d3ZHJjYS5jcmwwCwYDVR0PBAQDAgeAMBMGA1UdJQQMMAoG
CCsGAQUFBwMCMBAGCiqGSIb3Y2QGAwIEAgUAMA0GCSqGSIb3DQEBBQUAA4IBAQAY
1JSESD3yMReTyAdM435PFWQxeq0y93ui222KxZZD1hKt7pCk6DDKbjm5+UslX43a
ScwAcmvMppR5ioXs/G7KJ0S/VJgER0iog7SqdhHu+k9OO8hdEnoDpj+SuvIvPCv7
wSWAPoB40Fdj5Ea0GYPFxvkWV7t3TVABP7R4AuEThPCsIbcSmG7lrij5rJV6Pk/4
PqoYBpDdUo41g0s1OpaqzUbfoBKvgH7CVddQu8zo0JLYMjSENvKmp3ejxQfsKp4w
FTzZKeOq2A4BcEGkrRi5VYjCxxHiSapJkNMIp7/466PHywAjwrSMc9l7ixwGf+nC
f/QZ3RJHm1gIbPQja4qu
-----END CERTIFICATE-----
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEA33r2/nIxMi7Y4YjFRp16SGzSJ6awa2liFnM3Z9mZ0GCdM7RI
WeN4sAGclEB/Eu33SwGDh9cVj7p/Peu1eHLhWmLYa1F1grrEkc1oB2oCtLHniLr+
x9Z2Yh8ZhXxVH3BIOL1KWVwB7bY/jdpwYs3sk24mJ+aLYZSDHZ8DjGV46uXKVa8o
6X4popcNlSOUkx1yNkkZWOZQBhiAhIRl3PpkVF69kIp7iwGaILSL/kgOXYQfhn1C
cDGWAbe2Wi/DW1Z+BUbmNc0BVjPiNTHBgkggQdYnrW6LRk49GPWDUkrLqbYhh4hp
pApOvAlLMVUniYU3TqELGFI7oX8SeeX1tk5XsQIDAQABAoIBADo3HgBKXuZjrbuS
lVE/1IrpThVmJq7UVOjkOpqi5J6TjF/bpr1DtDylLtSvuGqF8tVnH4xTSxqVym+m
5y7pPir9dMMABUx4upwAlgjYZLwNW/MSQyxrgYst7sgHC2WVKjsdlDCS9y2lPAkH
zh7u5aHCH85lEAnrVfxxX8tC46zMkqfxri3qONVtFkx+jSrS7wRl5cZZDXmAkyQ+
81X82xrEpiD2f4XTD8nxtaHL1uWUDVEn1fWjl7OCQnfesVHwDBShd9bBwl0vVdQ9
U9CQRAbZestqaClS4WQKfyfQgJTtxyHaCGIV8J6xD8Ybpu61IY5DzjPhUgDuiVpi
dFq+b8ECgYEA95QCS1FGpgEyTpZVkHp/sktwSIdWz9gL7TieHBDf4YTEkbJ/WTG3
P6qd2CVqfDQIsyuuRZpQjHoQXzKM+OltUOUW75JVTK13xLRMpZFI2jcVAjuSLgDX
dWKuxInmgXgkNyDKR34u9XJz+jlo4dwGD9IOZ/vGxEEbK9rjYsPOxYsCgYEA5xUa
qNExajQjjPJ+74/bgLUHsD6+d/vvHWvHOWiII+0d4HJeJBVaWBtf4tHiuAyG5XBT
FGLPzXEw98Cwzv58hRuqYM1PgF8NZ5YzcaBSOAUInoiTX51Z1BWWl6PtpBWF+ntb
2b+shdgS0fDLNPexS2yoSItltbknhoRw9VvIlzMCgYEArR63N/l+YGhnyCJBdMTj
9EXiHyVcI/xb4qZ7kP6Pvr+7QHJDsJgeHovs0g7f1jgAeWEq/Iq6lnBocFkF0KxR
f4aiMiXuNa77F/ZHvmLIQabQrv3+6uI1x2SY9t/C6nebQ11PdQycQ4+j364zU/Qp
3PgykK2zQNqR6GmoJRDszp8CgYA9uAVG0ZjBJOvZ2WrN0T5vQeqryBZXNZLH6OFt
E95Iuiwgpms+d/WJUsZpbmV/gtkErtuBtmKKHJFXmr+eiZn4c0suT6fMQZby88sJ
rihHjhCfRxsVjpFPc/Sky8PM73K5U/lUTz1lAjEEoaukmgNggcTwm0qvHqTP6M/C
uKD6wQKBgQCqQZpdDTMKtwam5+vC9/WzXKspL/bH6TBVgArvJ7Io7aij27cRNCjE
YTBL2n2S+8RAB1rP6Ug9njjXkEAzKeGRUYtTpanVKk+DH2gEbhqNKJTL0ZppWwJ9
zKLra/ACYmhfCUVgWMauncgn/E48jGk4+2gUSGIGcqVNwYmQzuQJdg==
-----END RSA PRIVATE KEY-----
ENDL

a = App.new
a.name = "Wikipedia"
a.description = "An advanced Wikipedia viewer. Supremely practical, gives the beholder the entire corpus of human knowledge."
a.canvas = File.open(Rails.root.join("app/assets/images/wikibot.png"))
a.user = u
a.apn_dev_cert = dev_cert
a.apn_prod_cert = prod_cert
a.save

b = App.new
b.name = "Card Reader"
b.description = "A digital card reader with a powerful LED light and magnifying glass. Perfect for reading menus in dark restaurants!"
b.canvas = File.open(Rails.root.join("app/assets/images/card_reader.png"))
b.user = u
b.apn_dev_cert = dev_cert
b.apn_prod_cert = prod_cert
b.save


c = App.new
c.name = "Feeds"
c.description = "Want to know when tickets go on sale for your favorite artist? Or the soup of the day? Register to get notified with Feeds!"
c.user = user.find_by_email "evan.m.rosenfeld@gmail.com"
c.apn_prod_cert = <<ENDL
Bag Attributes
    friendlyName: Apple Production IOS Push Services: 4G32E7R576:4G32E7R576
    localKeyID: A6 8F 4D 15 93 8A C5 43 15 47 07 BC 28 0D B9 C4 D1 EB D3 2A 
subject=/UID=com.avocadohills.feeds/CN=Apple Production IOS Push Services: 4G32E7R576:4G32E7R576/C=US
issuer=/C=US/O=Apple Inc./OU=Apple Worldwide Developer Relations/CN=Apple Worldwide Developer Relations Certification Authority
-----BEGIN CERTIFICATE-----
MIIFeTCCBGGgAwIBAgIIRpYKr/mi738wDQYJKoZIhvcNAQEFBQAwgZYxCzAJBgNV
BAYTAlVTMRMwEQYDVQQKDApBcHBsZSBJbmMuMSwwKgYDVQQLDCNBcHBsZSBXb3Js
ZHdpZGUgRGV2ZWxvcGVyIFJlbGF0aW9uczFEMEIGA1UEAww7QXBwbGUgV29ybGR3
aWRlIERldmVsb3BlciBSZWxhdGlvbnMgQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkw
HhcNMTIwMTE3MjIyODUwWhcNMTMwMTE2MjIyODUwWjB5MSYwJAYKCZImiZPyLGQB
AQwWY29tLmF2b2NhZG9oaWxscy5mZWVkczFCMEAGA1UEAww5QXBwbGUgUHJvZHVj
dGlvbiBJT1MgUHVzaCBTZXJ2aWNlczogNEczMkU3UjU3Njo0RzMyRTdSNTc2MQsw
CQYDVQQGEwJVUzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAN969v5y
MTIu2OGIxUadekhs0iemsGtpYhZzN2fZmdBgnTO0SFnjeLABnJRAfxLt90sBg4fX
FY+6fz3rtXhy4Vpi2GtRdYK6xJHNaAdqArSx54i6/sfWdmIfGYV8VR9wSDi9Sllc
Ae22P43acGLN7JNuJifmi2GUgx2fA4xleOrlylWvKOl+KaKXDZUjlJMdcjZJGVjm
UAYYgISEZdz6ZFRevZCKe4sBmiC0i/5IDl2EH4Z9QnAxlgG3tlovw1tWfgVG5jXN
AVYz4jUxwYJIIEHWJ61ui0ZOPRj1g1JKy6m2IYeIaaQKTrwJSzFVJ4mFN06hCxhS
O6F/Ennl9bZOV7ECAwEAAaOCAeUwggHhMB0GA1UdDgQWBBSmj00Vk4rFQxVHB7wo
DbnE0evTKjAJBgNVHRMEAjAAMB8GA1UdIwQYMBaAFIgnFwmpthhgi+zruvZHWcVS
VKO3MIIBDwYDVR0gBIIBBjCCAQIwgf8GCSqGSIb3Y2QFATCB8TCBwwYIKwYBBQUH
AgIwgbYMgbNSZWxpYW5jZSBvbiB0aGlzIGNlcnRpZmljYXRlIGJ5IGFueSBwYXJ0
eSBhc3N1bWVzIGFjY2VwdGFuY2Ugb2YgdGhlIHRoZW4gYXBwbGljYWJsZSBzdGFu
ZGFyZCB0ZXJtcyBhbmQgY29uZGl0aW9ucyBvZiB1c2UsIGNlcnRpZmljYXRlIHBv
bGljeSBhbmQgY2VydGlmaWNhdGlvbiBwcmFjdGljZSBzdGF0ZW1lbnRzLjApBggr
BgEFBQcCARYdaHR0cDovL3d3dy5hcHBsZS5jb20vYXBwbGVjYS8wTQYDVR0fBEYw
RDBCoECgPoY8aHR0cDovL2RldmVsb3Blci5hcHBsZS5jb20vY2VydGlmaWNhdGlv
bmF1dGhvcml0eS93d2RyY2EuY3JsMAsGA1UdDwQEAwIHgDATBgNVHSUEDDAKBggr
BgEFBQcDAjAQBgoqhkiG92NkBgMCBAIFADANBgkqhkiG9w0BAQUFAAOCAQEAbX+K
wPET1h0eSWM12eOSEX7GYr0BvgyhcvH0YMUTZp1+kzeMLMWQzhCYaoMKSBMn0jTR
jhcp2BAV2ZMynD1NnDQzZP5AvkvMontSHqEAkVJzV2ozZi95zc4YyQdEGSuX5FZY
prO0v8RvJzp+r1HtzUOHLy9nXb0HPjE/CWZ1sZun5F6TdosNwLrUwqWm3VrnLFje
RpADG7BRMeRCutRUtV6k3e0PPA8EJmxKreP75rMX8i2PkmBm7UmPVWiJN8hANVEt
H/v0zUqOA0mjyo96Pog/hpwCcJPENLIK765oUwS7fOs87TXjbHlzGKO3XtjytUKr
nifHiT3B/69uGBT19g==
-----END CERTIFICATE-----
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEA33r2/nIxMi7Y4YjFRp16SGzSJ6awa2liFnM3Z9mZ0GCdM7RI
WeN4sAGclEB/Eu33SwGDh9cVj7p/Peu1eHLhWmLYa1F1grrEkc1oB2oCtLHniLr+
x9Z2Yh8ZhXxVH3BIOL1KWVwB7bY/jdpwYs3sk24mJ+aLYZSDHZ8DjGV46uXKVa8o
6X4popcNlSOUkx1yNkkZWOZQBhiAhIRl3PpkVF69kIp7iwGaILSL/kgOXYQfhn1C
cDGWAbe2Wi/DW1Z+BUbmNc0BVjPiNTHBgkggQdYnrW6LRk49GPWDUkrLqbYhh4hp
pApOvAlLMVUniYU3TqELGFI7oX8SeeX1tk5XsQIDAQABAoIBADo3HgBKXuZjrbuS
lVE/1IrpThVmJq7UVOjkOpqi5J6TjF/bpr1DtDylLtSvuGqF8tVnH4xTSxqVym+m
5y7pPir9dMMABUx4upwAlgjYZLwNW/MSQyxrgYst7sgHC2WVKjsdlDCS9y2lPAkH
zh7u5aHCH85lEAnrVfxxX8tC46zMkqfxri3qONVtFkx+jSrS7wRl5cZZDXmAkyQ+
81X82xrEpiD2f4XTD8nxtaHL1uWUDVEn1fWjl7OCQnfesVHwDBShd9bBwl0vVdQ9
U9CQRAbZestqaClS4WQKfyfQgJTtxyHaCGIV8J6xD8Ybpu61IY5DzjPhUgDuiVpi
dFq+b8ECgYEA95QCS1FGpgEyTpZVkHp/sktwSIdWz9gL7TieHBDf4YTEkbJ/WTG3
P6qd2CVqfDQIsyuuRZpQjHoQXzKM+OltUOUW75JVTK13xLRMpZFI2jcVAjuSLgDX
dWKuxInmgXgkNyDKR34u9XJz+jlo4dwGD9IOZ/vGxEEbK9rjYsPOxYsCgYEA5xUa
qNExajQjjPJ+74/bgLUHsD6+d/vvHWvHOWiII+0d4HJeJBVaWBtf4tHiuAyG5XBT
FGLPzXEw98Cwzv58hRuqYM1PgF8NZ5YzcaBSOAUInoiTX51Z1BWWl6PtpBWF+ntb
2b+shdgS0fDLNPexS2yoSItltbknhoRw9VvIlzMCgYEArR63N/l+YGhnyCJBdMTj
9EXiHyVcI/xb4qZ7kP6Pvr+7QHJDsJgeHovs0g7f1jgAeWEq/Iq6lnBocFkF0KxR
f4aiMiXuNa77F/ZHvmLIQabQrv3+6uI1x2SY9t/C6nebQ11PdQycQ4+j364zU/Qp
3PgykK2zQNqR6GmoJRDszp8CgYA9uAVG0ZjBJOvZ2WrN0T5vQeqryBZXNZLH6OFt
E95Iuiwgpms+d/WJUsZpbmV/gtkErtuBtmKKHJFXmr+eiZn4c0suT6fMQZby88sJ
rihHjhCfRxsVjpFPc/Sky8PM73K5U/lUTz1lAjEEoaukmgNggcTwm0qvHqTP6M/C
uKD6wQKBgQCqQZpdDTMKtwam5+vC9/WzXKspL/bH6TBVgArvJ7Io7aij27cRNCjE
YTBL2n2S+8RAB1rP6Ug9njjXkEAzKeGRUYtTpanVKk+DH2gEbhqNKJTL0ZppWwJ9
zKLra/ACYmhfCUVgWMauncgn/E48jGk4+2gUSGIGcqVNwYmQzuQJdg==
-----END RSA PRIVATE KEY-----
ENDL
c.save
