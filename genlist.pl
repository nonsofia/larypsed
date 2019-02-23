#!/usr/bin/perl

while (<STDIN>) { 
	my $drawing = $_;
	chomp $drawing;
	
	my ($number, $cl, $pt, $descr, $fullyear, $year) = $drawing =~ /^(\d+)\. (\w\w)\/(\w\w) (.+? mm) (.*?)(\d\d)$/gims;
	my $filename = "$number $cl$pt$year.jpeg";
	my $title = "$cl/$pt";
	print <<"EOT";
                    <li>
                        <a class="thumb" name="$title" href="images/drawing/$filename" title="$title">
                            <img class="lazyload" data-src="images/drawing/$filename" alt="$title" />
                        </a>
                        <div class="caption">
                            <div class="image-title">$title<br/>$descr<br/>$fullyear$year</div>
                            <div class="image-desc"></div>
                        </div>
                    </li> 
EOT
}