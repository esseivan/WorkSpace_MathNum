b = 5;
n = 3;
M1 = -2;
M2 = 3;

N = b^n*(b-1)*(M2-M1+1);

s = [];

e=b^-n;

for l1=M1:1:M2
    for l2=1:1:b-1
        for l3=0:1:b^n-1
            s=[s b^l1*(l2+l3*e)];
        end
    end
end
