function[] = iftest(a, b)

if(a < b)
  disp('a eh menor que b')
  disp([num2str(a) ' < ' num2str(b)])
elseif (a == b)
  disp('a eh igual a b')
else
  disp('a eh maior do que b')
end