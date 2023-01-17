function s2 = all_zeros(f,x0,x1,pas)
%on recherche le zéro de f sur l'intervalle [a,b]
%signe de f(a) != signe de f(b)
s=[];
for loop=x0:pas:x1
    ss = fzero(f,loop);
    s=[s ss];
end
nS=length(s);
s2=[];
if nS>1
    for loop=1:1:nS
        true=0;
        nS2=length(s2);
        for loop2=1:1:nS2
            if abs(s(loop)-s2(loop2))<10*eps
                true=1;
            end
        end
        if true==0
            s2=[s2 s(loop)];
        end
    end
else
    s2=s;
end
end
