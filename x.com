nfqws --dpi-desync=multidisorder --dpi-desync-split-pos=2
nfqws --dpi-desync=multidisorder --dpi-desync-split-pos=1
nfqws --dpi-desync=multidisorder --dpi-desync-split-pos=sniext+1
nfqws --dpi-desync=multidisorder --dpi-desync-split-pos=sniext+4
nfqws --dpi-desync=multidisorder --dpi-desync-split-pos=midsld
nfqws --dpi-desync=multidisorder --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=multidisorder --dpi-desync-split-pos=1,sniext+1,host+1,midsld-2,midsld,midsld+2,endhost-1
nfqws --dpi-desync=fake --dpi-desync-ttl=4 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1
nfqws --dpi-desync=fake --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake --dpi-desync-fooling=badsum
nfqws --dpi-desync=fake --dpi-desync-fooling=badsum --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake --dpi-desync-fooling=badsum --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake --dpi-desync-fooling=badsum --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake --dpi-desync-fooling=badsum --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake --dpi-desync-fooling=badseq --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake --dpi-desync-fooling=badseq --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake --dpi-desync-fooling=badseq --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake --dpi-desync-fooling=datanoack --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake --dpi-desync-fooling=datanoack --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake --dpi-desync-fooling=datanoack --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake --dpi-desync-fooling=ts
nfqws --dpi-desync=fake --dpi-desync-fooling=ts --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake --dpi-desync-fooling=ts --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake --dpi-desync-fooling=ts --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake --dpi-desync-fooling=ts --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake --dpi-desync-fooling=md5sig --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig
nfqws --dpi-desync=fake --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fakedsplit --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fakedsplit --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fakedsplit --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakedsplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=1
nfqws --dpi-desync=fakedsplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakedsplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=1
nfqws --dpi-desync=fakedsplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakedsplit --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=1
nfqws --dpi-desync=fakedsplit --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakedsplit --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1
nfqws --dpi-desync=fakedsplit --dpi-desync-fooling=datanoack --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fakedsplit --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakedsplit --dpi-desync-fooling=ts --dpi-desync-split-pos=1
nfqws --dpi-desync=fakedsplit --dpi-desync-fooling=ts --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fakedsplit --dpi-desync-fooling=ts --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakedsplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1
nfqws --dpi-desync=fakedsplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakedsplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=4 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=4 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=datanoack --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=ts --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=ts --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=ts --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=ts --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=ts --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=ts --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=ts --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=ts --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=ts --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=ts --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=ts --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=ts --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=ts --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=ts --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=badsum --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=badseq --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=datanoack --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=ts --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=ts --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=ts --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=ts --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=ts --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=ts --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=ts --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=ts --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=ts --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=ts --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=hostfakesplit --dpi-desync-ttl=4
nfqws --dpi-desync=hostfakesplit --dpi-desync-ttl=4 --dpi-desync-hostfakesplit-midhost=midsld
nfqws --dpi-desync=hostfakesplit --dpi-desync-ttl=4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1
nfqws --dpi-desync=hostfakesplit --dpi-desync-fooling=badsum --dpi-desync-hostfakesplit-mod=altorder=1 --dpi-desync-hostfakesplit-midhost=midsld
nfqws --dpi-desync=hostfakesplit --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-hostfakesplit-mod=altorder=1
nfqws --dpi-desync=hostfakesplit --dpi-desync-fooling=datanoack
nfqws --dpi-desync=hostfakesplit --dpi-desync-fooling=datanoack --dpi-desync-hostfakesplit-midhost=midsld
nfqws --dpi-desync=hostfakesplit --dpi-desync-fooling=ts
nfqws --dpi-desync=hostfakesplit --dpi-desync-fooling=ts --dpi-desync-hostfakesplit-mod=altorder=1
nfqws --dpi-desync=hostfakesplit --dpi-desync-fooling=md5sig
nfqws --dpi-desync=hostfakesplit --dpi-desync-fooling=md5sig --dpi-desync-hostfakesplit-mod=altorder=1 --dpi-desync-hostfakesplit-midhost=midsld
nfqws --dpi-desync=hostfakesplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig
nfqws --dpi-desync=hostfakesplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-hostfakesplit-mod=altorder=1
nfqws --dpi-desync=hostfakesplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-hostfakesplit-midhost=midsld
nfqws --dpi-desync=fake,hostfakesplit --dpi-desync-ttl=3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-hostfakesplit-midhost=midsld
nfqws --dpi-desync=fake,hostfakesplit --dpi-desync-fooling=ts
nfqws --dpi-desync=fake,hostfakesplit --dpi-desync-fooling=ts --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,hostfakesplit --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-hostfakesplit-midhost=midsld
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=datanoack --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=datanoack --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=md5sig --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000--dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=datanoack --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=datanoack --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000--dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=badsum --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=badseq --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=badseq --dpi-desync-badseq-increment=0 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=datanoack --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=datanoack --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=datanoack --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=ts --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=md5sig --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000--dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-fooling=md5sig --dup=1 --dup-cutoff=n2 --dup-fooling=md5sig --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=multisplit --dpi-desync-split-pos=10 --dpi-desync-split-seqovl=1
nfqws --dpi-desync=multisplit --dpi-desync-split-pos=10,sniext+1 --dpi-desync-split-seqovl=1
nfqws --dpi-desync=multisplit --dpi-desync-split-pos=10,sniext+4 --dpi-desync-split-seqovl=1
nfqws --dpi-desync=multisplit --dpi-desync-split-pos=10,midsld --dpi-desync-split-seqovl=1
nfqws --dpi-desync=multidisorder --dpi-desync-split-pos=2 --dpi-desync-split-seqovl=1
nfqws --dpi-desync=multidisorder --dpi-desync-split-pos=sniext+1 --dpi-desync-split-seqovl=sniext
nfqws --dpi-desync=multidisorder --dpi-desync-split-pos=sniext+4 --dpi-desync-split-seqovl=sniext+3
nfqws --dpi-desync=multidisorder --dpi-desync-split-pos=midsld --dpi-desync-split-seqovl=midsld-1
nfqws --dpi-desync=multidisorder --dpi-desync-split-pos=2,midsld --dpi-desync-split-seqovl=1
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multisplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakedsplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=hostfakesplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-hostfakesplit-mod=altorder=1 --dpi-desync-hostfakesplit-midhost=midsld
nfqws --dpi-desync=hostfakesplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-hostfakesplit-midhost=midsld
nfqws --dpi-desync=hostfakesplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-hostfakesplit-mod=altorder=1 --dpi-desync-hostfakesplit-midhost=midsld
nfqws --dpi-desync=hostfakesplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2
nfqws --dpi-desync=hostfakesplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-hostfakesplit-midhost=midsld
nfqws --dpi-desync=hostfakesplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-hostfakesplit-mod=altorder=1 --dpi-desync-hostfakesplit-midhost=midsld
nfqws --dpi-desync=hostfakesplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-hostfakesplit-mod=altorder=1 --dpi-desync-hostfakesplit-midhost=midsld
nfqws --dpi-desync=fake,hostfakesplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1
nfqws --dpi-desync=fake,hostfakesplit --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-hostfakesplit-mod=altorder=1 --dpi-desync-hostfakesplit-midhost=midsld
nfqws --dpi-desync=fake,hostfakesplit --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-hostfakesplit-midhost=midsld
nfqws --dpi-desync=fake,hostfakesplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,hostfakesplit --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-hostfakesplit-mod=altorder=1
nfqws --dpi-desync=fake,hostfakesplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,hostfakesplit --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1
nfqws --dpi-desync=fake,hostfakesplit --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,multidisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1,midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-1 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-2 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-3 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-4 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fakedsplit-mod=altorder=1
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x00000000 --dpi-desync-fake-tls=! --dpi-desync-fake-tls-mod=rnd,rndsni,dupsid
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls=0x1603 --dpi-desync-fake-tls=!+2 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni --dpi-desync-fake-tcp-mod=seq
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=1 --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=fake,fakeddisorder --dpi-desync-ttl=1 --dpi-desync-autottl=-5 --orig-ttl=1 --orig-mod-start=s1 --orig-mod-cutoff=d1 --dpi-desync-split-pos=midsld --dpi-desync-fake-tls-mod=rnd,dupsid,rndsni,padencap
nfqws --dpi-desync=syndata
nfqws --dpi-desync=syndata,multisplit --dpi-desync-split-pos=1
nfqws --dpi-desync=syndata,multisplit --dpi-desync-split-pos=1,midsld
nfqws --dpi-desync=syndata,multidisorder --dpi-desync-split-pos=1
nfqws --dpi-desync=syndata,multidisorder --dpi-desync-split-pos=midsld
nfqws --dpi-desync=syndata,multidisorder --dpi-desync-split-pos=1,midsld
