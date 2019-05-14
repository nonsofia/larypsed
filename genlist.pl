#!/usr/bin/perl

while (<STDIN>) { 
	my $filename = $_;
	chomp $filename;
	
	my ($title, $fullyear, $descr) = $filename =~ /^.*\/(.*?) (20\d\d) (oil canvas 30 x 30 cm).jpg$/gims;
	print <<"EOT";
                    <li>
                        <a class="thumb" name="$title" href="$filename" title="$title">
                            <img class="lazyload" data-src="$filename" alt="$title" />
                        </a>
                        <div class="caption">
                            <div class="image-title">$title<br/>$descr<br/>$fullyear</div>
                            <div class="image-desc"></div>
                        </div>
                    </li> 
EOT
}