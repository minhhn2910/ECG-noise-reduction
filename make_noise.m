function g = make_noise(y,amp)
d= size(y);
z = 2*amp*rand(d(1),d(2))-amp;
for i=1:d(1);
    y(i,:) = y(i,:) + z(i,:);
end; 
g=y;