
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "A bundle of MIDI and music modules",
  "AUTHOR" => "Gene Boggs <gene\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Task-MusicBundle",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Task::MusicBundle",
  "PREREQ_PM" => {
    "Acme::Vuvuzela" => 0,
    "App::Music::PlayTab" => 0,
    "App::MusicTools" => 0,
    "File::Format::RIFF" => 0,
    "MIDI" => 0,
    "MIDI::Morph" => 0,
    "MIDI::Pitch" => 0,
    "MIDI::Praxis::Variation" => 0,
    "MIDI::Simple::Drummer" => 0,
    "MIDI::SoundFont" => 0,
    "MIDI::Tab" => 0,
    "MIDI::Tools" => 0,
    "MIDI::Trans" => 0,
    "MIDI::Tweaks" => 0,
    "Music::AtonalUtil" => 0,
    "Music::Canon" => 0,
    "Music::Chord::Namer" => 0,
    "Music::Chord::Note" => 0,
    "Music::Chord::Positions" => 0,
    "Music::Duration" => 0,
    "Music::Gestalt" => 0,
    "Music::Harmonics" => 0,
    "Music::LilyPondUtil" => 0,
    "Music::Scales" => 0,
    "Music::Tempo" => 0,
    "Music::Tension" => 0,
    "String::Approx" => 0,
    "Text::Chord::Piano" => 0
  },
  "VERSION" => "0.01",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



