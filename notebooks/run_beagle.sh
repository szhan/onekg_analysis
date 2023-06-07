# Run BEAGLE 4.1 without a genetic map
in_dir="../data/vcf/"
out_dir="../analysis/beagle/"

java -jar ../ext/beagle.27Jan18.7e1.jar \
    gt=$in_dir"target.vcf.gz" \
    ref=$in_dir"ref.vcf.gz" \
    out=$out_dir"target.beagle"

bcftools index $out_dir"target.beagle.vcf.gz"

