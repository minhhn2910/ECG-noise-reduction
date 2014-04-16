function signal_gen = gen_pul(N,freq,t_delay,t_width)
%d = (t_delay+t_width/2)*freq;
new = zeros(N,freq);
for i= round(t_delay*freq):round((t_delay+t_width)*freq);
   new(1,i)= 1;
end;
for j=2:N;
    new(j,:) = new(1,:);
end;
signal_gen = new;