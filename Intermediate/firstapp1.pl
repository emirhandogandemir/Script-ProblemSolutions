#!/usr/bin/perl

use strict;
use Getopt::Long;

#my ($ib_zone,$ib_name,$ib_target,$ib_result,$ib_cname,$key)

GetOptions(
   "holder=s" => \my $ib_zone,
   "name=s" => \my $ib_name,
   "view=s" => \my $ib_view,
   "target=s" => \my $ib_target,
   "key=s" => \my $ib_key
  ) 
or die ("Invalid options passed to $0\n");
print "$ib_zone\n";
print "$ib_name\n";
print "$ib_key\n";

my $ibname = lc $ib_name;
my $ib_zone = lc $ib_zone;
my $ib_target = uc $ib_target;


my $ib_fqdn= $ib_name.".".$ib_zone;
my $maint_flag=0;
my $maint_site="maintance.ingbank.com.tr";

print "\$ib_name-\$ib_zone => $ib_fqdn\n";


if ($ib_target eq "IZMIR") {
my $ib_cname = $ib_name."-2".$ib_zone;
}
elsif ($ib_target eq "UMRANIYE"){
my $ib_cname =$ib_name."-1".$ib_zone;
}
elsif($ib_target eq "MAINTANCE") {
my $ib_cname= $maint_site;
$maint_flag=1;
}
else {
die ("$ib_target is not a valid location")
}

if (my $ib_cname eq $ib_fqdn ){
die ("Invalid operation . CNAME record can not refer to itself");
}



