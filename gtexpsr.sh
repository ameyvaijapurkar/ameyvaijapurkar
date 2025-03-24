zcat gtexexonjunctiondata.gct.gz | tail -n +4 | awk -v total=19788 '
{
  count = 0;
  for (i = 3; i <= NF; i++) {
    if ($i >= 5) count++;
  }
  psr = count / total;
  print $1 "\t" psr;
}' > gtex_junctions_with_psr.tsv



