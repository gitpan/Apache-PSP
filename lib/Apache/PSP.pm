package Apache::PSP;

require 5.005;

use strict;
use Template::PSP;
use Apache::Constants qw( :common );
use vars qw($VERSION);

$VERSION = 0.31;

sub handler {
  my $r = shift;

  $r->content_type('text/html');
  $r->send_http_header;

  my $page_code = Template::PSP::pspload($r->filename);
  
  unless ($page_code) 
  {
    $r->log_reason("Could not load page", $r->filename);
    return SERVER_ERROR;
  };

  &$page_code();

  return OK;
}

1;

__END__

=head1 NAME

Apache::PSP - mod_perl interface to Perl Server Pages

=head1 SYNOPSIS

  <Files *.psp>
  SetHandler perl-script
  PerlHandler Apache::PSP
  Options ExecCGI
  </Files>

=head1 DESCRIPTION

Apache::PSP is the mod_perl interface to the Template::PSP module. This module allows Perl Server Pages (PSP) to be used on an Apache server running mod_perl.

See the Template:PSP module for a more detailed explanation of PSP pages and their usage.

=head1 AUTHOR

Chris Radcliff, chris@globalspin.com

=head1 SEE ALSO

Template::PSP

=cut
