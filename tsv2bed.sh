awk -F '\t' '{
  split($1, coords, "[:-]");
  chr = coords[1];
  start = coords[2];
  end = coords[3];
  strand = coords[4];
  score = $2;
  print chr "\t" start "\t" end "\t" score "\t" "." "\t" strand;
}' gtex_junctions_with_psr.tsv > gtex_junctions_with_psr.bed
