BEGIN {
  printf "There are the following emails found\n"; 
  count=0; 
  print "[" > "resuls.json";
  out="";
} 
{ 
  print $0; 
  count++; 
  out = out "\"" $0 "\",\n";
} 
END {
  printf "Total %d\n", count; 
  out=substr(out, 1, length(out) - 2); 
  printf "%s\n]",out > "resuls.json"; 
  printf "There are generated json file with them - resuls.json";
}