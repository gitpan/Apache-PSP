use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'       => 'Apache::PSP',
    'VERSION'    => '0.51',
    'PREREQ_PM'	 => {
                     'Apache::Constants' => 0.1,
                     'IO::Scalar'        => 2.1,
                     'DBI'               => 1.0,
                     'CGI::Minimal'      => 0.1,
                     'HTML::TokeParser'  => 0.1,
                    },
);
