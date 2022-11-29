function H = hilbe(n)
%HILBERT Summary of this function goes here
%   Detailed explanation goes here

H = zeros(n,n);
for l=0:n-1
    for k=0:n-1
        H(l+1,k+1) = 1/(l+k+1);
    end
end

end

