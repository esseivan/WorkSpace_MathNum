function c = interleave(a, b)
%interleave entrelace deux vecteurs
%   prends un element de chaque vecteur en alternance
    sa = length(a);
    sb = length(b);
    sc = sa + sb;
    if sc == 0
        c = [];
        return;
    end
    if sa == 0
        c = b;
        return;
    end
    if sb == 0
        c = a;
        return;
    end

    if sa < sb
        s1 = sa;
        s2 = sb;
        e1 = b;
    else
        s1 = sb;
        s2 = sa;
        e1 = a;
    end

    % On va jusqua la fin du plus petit element
    c = zeros(sc, 1);
    index = 1;
    for i=1:s1*2
        odd = rem(i, 2);
        index = ceil(i/2);
        if (odd)
            c(i) = a(index);
        else
            c(i) = b(index);
        end
    end

    % on termine avec le plus grand
    for index=index+1:s2
        i = i + 1;
        c(i) = e1(index);
    end
end