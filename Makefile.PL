# Modules.
use ExtUtils::MakeMaker;

# Definition.
WriteMakefile(
	'NAME' => 'Class::Utils',
	'PREREQ_PM' => {
		'Error::Simple::Multiple' => 0.05,
		'File::Object' => 0,
		'List::MoreUtils' => 0,
		'Readonly' => 0,
	},
	'VERSION' => 0.01,
	'test' => {
		'TESTS' => 't/Class::Utils/*.t',
	},
);
