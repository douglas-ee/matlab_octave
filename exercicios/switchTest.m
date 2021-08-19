% usar a funcao switchTest() nos comandos
function[grade] = switchTest (points)

if (points < 0) || (points > 10)
  grade = 'NA';
  return
end
 
switch points
  case {9, 10}
   grade = '6';
  case 8
   grade = '5.5';
  case 7
   grade = '5';
  otherwise
   grade = '3';
end
endfunction
