#!/usr/bin/perl
# Perl Age Calculator
# Run with: perl age_calculator.pl

use strict;
use warnings;
use POSIX qw(strftime);

sub get_age_message {
    my ($age) = @_;

    if ($age < 30) {
        return "You are young!";
    } elsif ($age >= 30 && $age < 67) {
        return "You are middle-aged.";
    } elsif ($age >= 67 && $age <= 80) {
        return "You are aging and should travel the world!";
    } else {
        return "You should relax and enjoy your life!";
    }
}

my $run_again = "yes";

while ($run_again eq "yes" || $run_again eq "y") {
    # Get current year
    my $current_year = strftime("%Y", localtime);

    # Welcome message
    print "\n========================================\n";
    print "   Welcome to the Age Calculator!\n";
    print "========================================\n\n";

    # Get user input
    print "Please enter your name: ";
    chomp(my $name = <STDIN>);

    print "Please enter your year of birth: ";
    chomp(my $birth_year = <STDIN>);

    # Calculate age
    my $age = $current_year - $birth_year;

    # Get appropriate message
    my $message = get_age_message($age);

    # Output results
    print "\n----------------------------------------\n";
    print "Hello, $name!\n";
    print "You are $age years old.\n";
    print "$message\n";
    print "----------------------------------------\n\n";

    # Ask to run again
    print "Would you like to run the program again? (yes/no): ";
    chomp($run_again = <STDIN>);
    $run_again = lc($run_again);
}

print "\nThank you for using the Age Calculator. Goodbye!\n";
