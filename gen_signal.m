function t = gen_signal(func,T,N_period,n_point)
x= 0:T/n_point:T;
y = func(x);
result = zeros(N_period,n_point+1);
for i=1:N_period;
    result(i,:) =y(:);  
end;
t =result;
%plot(x,t(1,:));