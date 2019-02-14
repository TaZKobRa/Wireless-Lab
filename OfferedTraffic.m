Bexp = 0.05;
A = 0;
n = 1;
e = 2;

while e > 0.0001
    s = 1;
    for i = 1:n;
        s = s + (A.^i)./factorial(i);
    end
    B = ((A.^n)./factorial(n))/s;   %Calculating Blocking Probability using Erlang's Formula
    e = abs(B - Bexp);      %Calculating error to check if A value is correct
    A = A + 0.001;      %increase value of A for next iteration
end

Lamda = 1/60;
th = 1.5;
a = Lamda * th;
N = A / a;
Nt = N * 500;
P = 3*10^6;
Rp = (Nt / P) * 100;

