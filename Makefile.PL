# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'Class utilities.';
author 'Michal Špaček <skim@cpan.org>';
license 'bsd';
name 'Class-Utils';
readme_from 'Utils.pm';
requires 'Error::Pure' => 0.09,
requires 'Exporter' => 0;
requires 'Readonly' => 0;
requires 'perl' => '5.8.0';
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=Class-Utils';
resources 'homepage' => 'https://github.com/tupinek/Class-Utils';
resources 'repository' => 'git://github.com/tupinek/Class-Utils';
test_requires 'Cwd' => 0;
test_requires 'English' => 0;
test_requires 'File::Spec::Functions' => 0;
test_requires 'FindBin' => 0;
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.06';

# Run.
WriteAll();
