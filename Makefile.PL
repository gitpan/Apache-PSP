use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'       => 'Apache::PSP',
    'VERSION'    => '0.4',
    'PREREQ_PM'	 => {'IO::Scalar'   => 2.1,
                     'DBI'          => 1.0,},
);
