function write = write_file(g)
fid = fopen('data.txt','w');
d = size(g);
for j = 1:d(1);
 %   for i = 1:d(2);
        fprintf(fid, '%f ', g(j,:));
  %  end;
    fprintf(fid, '\n');
end;
fclose(fid);
write = 0;