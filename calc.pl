#!/usr/bin/perl

# product
print "//----- product -----//\n";

foreach $i (1..30){
    foreach $j (1..30){
        my $p = $i * $j;
        $hash{$p}++;
        $left{$p} .= "$i ";
        $right{$p} .= "$j ";
    }
}

foreach (sort keys %hash) {
    if($hash{$_} == 4){
#        print "//----- $_ -----//\n"; //Comment out by Oh;
        print "$_ = ";

        my @left_i = split(/\s+/, $left{$_});
        my @right_j = split(/\s+/, $right{$_});
        $times = @left_i;
        for($times=0; $times<@left_i-2;$times++){
            print "($left_i[$times]x";
            print "$right_j[$times]) ";
        }
        print "\n";
    }
}

# sum
print "//----- sum -----//\n";

foreach $x (1..30){
    foreach $y (1..30){
        my $s = $x + $y;
            $sum{$s}++;
            $leftx{$s} .= "$x ";
            $righty{$s} .= "$y ";
    }
}

foreach (sort keys %sum) {
    if($sum{$_} == 4){
#        print "//----- $_ -----//\n"; //Comment out by Oh;
        print "$_ = ";

        my @left_i = split(/\s+/, $leftx{$_});
        my @right_j = split(/\s+/, $righty{$_});
        $times = @left_i;
        for($times=0; $times<@left_i-2;$times++){
            print "($left_i[$times]+";
            print "$right_j[$times]) ";
        }
        print "\n";
    }
}

print "....... sum should be one result .......\n";
foreach (sort keys %sum) {
    if($sum{$_} == 2){
#        print "//----- $_ -----//\n"; //Comment out by Oh;
        print "$_ = ";

        my @left_i = split(/\s+/, $leftx{$_});
        my @right_j = split(/\s+/, $righty{$_});
        $times = @left_i;
        for($times=0; $times<@left_i;$times++){
            print "($left_i[$times]+";
            print "$right_j[$times]) ";
        }
        print "\n";
    }
}
