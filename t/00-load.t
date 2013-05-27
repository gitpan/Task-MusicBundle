#!perl
use Test::More;
BEGIN {
    use_ok 'Task::MusicBundle';
    use_ok 'Acme::Vuvuzela';
    use_ok 'App::Music::PlayTab';
    use_ok 'App::MusicTools';
    use_ok 'MIDI';
    use_ok 'MIDI::Morph';
    use_ok 'MIDI::Pitch';
    use_ok 'MIDI::Praxis::Variation';
    use_ok 'MIDI::Simple::Drummer';
    use_ok 'File::Format::RIFF';
    use_ok 'String::Approx';
    use_ok 'MIDI::SoundFont';
    use_ok 'MIDI::Tab';
    use_ok 'MIDI::Tools';
    use_ok 'MIDI::Trans';
    use_ok 'MIDI::Tweaks';
    use_ok 'Music::AtonalUtil';
    use_ok 'Music::Canon';
    use_ok 'Music::Chord::Namer';
    use_ok 'Music::Chord::Note';
    use_ok 'Music::Chord::Positions';
    use_ok 'Music::Duration';
    use_ok 'Music::Gestalt';
    use_ok 'Music::Harmonics';
    use_ok 'Music::LilyPondUtil';
    use_ok 'Music::NeoRiemannianTonnetz';
    use_ok 'Music::Scala';
    use_ok 'Music::Scales';
    use_ok 'Music::Tempo';
    use_ok 'Music::Tension';
    use_ok 'Text::Chord::Piano';
}

diag("Testing Task::MusicBundle Task::MusicBundle::VERSION, Perl $], $^X");

done_testing();
