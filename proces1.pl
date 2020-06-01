use XMLRPC::Lite; 
if($#ARGV < 1){
	print $#ARGV;
	print "usage: perl proces1.pl liczba1 liczba2\n";
	exit;
}else{
	my $x = $ARGV[0];
	my $y = $ARGV[1];
	$server = XMLRPC::Lite->proxy("http://localhost:8000/RPC2"); 
	print "Wynik: ";
	$result = $server->call('add', $x, $y);
	print $result->result;
	print "\n";
}
