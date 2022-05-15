#!/usr/bin/env perl
use strict;
use warnings;
use feature qw/say/;

my $filename = '05__scalar.md';

open my $FH, '<', $filename;
for my $line (<$FH>) {
    chomp $line;

    # print $line . "\n" if $line =~ /\A#/;
    #   * [コマンド集（`ls`）](src/02__terminal_shell.md#コマンド集（`ls`）)
    if ( $line =~ /\A#+ / ) {
        $line =~ s/\A#+ //g;
        say join "", '* [', $line, '](src/', $filename, '#', $line, ')';
    }
}
close $FH;
