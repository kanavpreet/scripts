use POSIX;
use MIME::Lite;
use Env::Modulecmd {load cmd}

my $date= strtime "%m%d%Y" , localtime ;

my $Email_grp ="";
foreach $arg(0....$#argv)
{
$Email_grp= $Email_grp.",".$argv[$arg];
}
my @Arraylist= 'autorep -J <regex> -q | grep "days" -B 6| grep <reqex>';

##Filtering autosys job result using grep and awk ##
## Autosys - autorep -J will fetch Job details and -q will extract value from its Jil

foreach(@Arraylist)
{
chomp($_);
my $date2= 'autorep -j $_ -t US/EASTERN | awk '{if(\$0 ~ /^ $_/{print <value>})}'';
chomp($date2);
push($date3,$date2);

}

sub SendMail()
{
  my $msg=MIME::Lite->new 
}
