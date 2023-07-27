# goal automate the application of a let's encrypt wild card cert to the web interface of the switch
# all let's encrypt certs are in /conf/acme/
# ssh into switch
# run import command to get cert with:
# 1 tftp https://docs.ruckuswireless.com/fastiron/08.0.60/fastiron-08060-securityguide/GUID-E83AC70A-9F89-4209-B6C4-ED5725D4F487.html
# tftp might be harder as I need to spin up a tftp server which the pfsense box may have as a package; confirmed tftp is a package
# 2 scp https://docs.ruckuswireless.com/fastiron/08.0.60/fastiron-08060-securityguide/GUID-24C1ABDA-AE85-4957-A902-E04B86E72D7B.html
# likely more secure and automatable
# https://docs.ruckuswireless.com/fastiron/08.0.60/fastiron-08060-securityguide/GUID-363E11D6-6960-447D-AD1C-A6C5BF820164.html
# looks like documentation requires that the certificate for web access be imported via tftp
# after applying, close session and stop the tftp service on pfsense(if applicable)