function m = make_signal(N,freq,t_delay,t_width)
y = gen_pul(N,freq,t_delay,t_width);
m = y;
z = randn(N,freq);
for i=1:N;
    m(i,:) = y(i,:) + z(i,:);
end; 
subplot(2,1,1);
plot([y(1,:) y(2,:)]);
subplot(2,1,2);
plot([m(1,:) m(2,:)])

