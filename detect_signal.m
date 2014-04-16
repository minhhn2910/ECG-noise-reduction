function x = detect_signal(data,t_delay,t_width,N)
d = size(data);
result = zeros(d(2));
for i=round(t_delay*d(2)+1): round((t_delay+t_width)*d(2));
    result(i) = sum(data(1:N,i))/N;
end;
x = zeros(N,d(2));
for k = 1:N;
    for l=1:d(2);
        x(k,l) = result(l);
    end;
end;

%plot([x(1,:) x(2,:)]);
