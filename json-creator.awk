BEGIN {
  printf "There are the following emails found:\n"; 
  print "[" > "results.json";
} 
{ 
  print $0; 
  if (NR == total) {
    print " \"" $0 "\"" > "results.json";
  } else {
	print " \"" $0 "\"," > "results.json";
  }
} 
END {
  printf "Total %d\n", NR; 
  print "]" > "results.json"; 
  printf "There is generated json file with them - results.json";
}