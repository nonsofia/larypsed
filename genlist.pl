#!/usr/bin/perl

while (<STDIN>) { 
	my $filename = $_;
	chomp $filename;
	
	my ($title, $size, $year, $year2) = $filename =~ /^([a-z ]*) ([0-9][0-9][0-9] cm) ?\(diagonal\)? ?([0-9][0-9][0-9][0-9])?.jpg$/gims;
	$year = "$year-$year2" if $year2;
	print <<"EOT";
	<li>
		<a class="thumb" name="$title" href="images/year/$filename" title="$title">
			<img src="images/$year/$filename-thumb.jpg" alt="$title" />
		</a>
		<div class="caption">
			<div class="image-title">$title, oil/canvas: $size (diagonal)<br />$year</div>
			<div class="image-desc"></div>
		</div>
	</li>
EOT
}