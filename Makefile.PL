# Modules.
use ExtUtils::MakeMaker;

# Definition.
WriteMakefile(
	'NAME' => 'Class::Utils',
	'PREREQ_PM' => {
		'Error::Pure' => 0.01,
		'File::Object' => 0,
		'Readonly' => 0,
	},
	'VERSION' => 0.01,
	'test' => {
		'TESTS' => 't/Class::Utils/*.t',
	},
);
