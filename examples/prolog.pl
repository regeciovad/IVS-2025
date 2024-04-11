% swipl prolog.pl
% jeSyn(X,monika).
% jeSyn(X,karel).
muz(honza). muz(jirka). muz(vilik).
zena(monika). zena(jana).
jeDite(honza,jirka). jeDite(jana,monika).
jeDite(vilik,monika).
jeSyn(X,Y) :- jeDite(X,Y), muz(X).
