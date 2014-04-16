function x = signal_averaging(data,N)
d = size(data);
result = zeros(d(2));
for i=1:d(2);
    result(i) = sum(data(1:N,i))/N;
end;
x = zeros(N,d(2));
for k = 1:N;
    for l=1:d(2);
        x(k,l) = result(l);
    end;
end;