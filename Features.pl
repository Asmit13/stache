#!/usr/bin/perl

# File Name: LargePerlCodeExample.pl

use strict;
use warnings;

# Define a sub for adding two numbers
sub add {
    my ($a, $b) = @_;
    return $a + $b;
}

# Define a sub for performing an operation on two numbers
sub operate {
    my ($x, $y, $operation) = @_;
    return $operation->($x, $y);
}

# Use a hash to represent a person
my %person = (
    name => "Alice",
    age  => 30,
);

# Print person's details
print "Name: $person{name}, Age: $person{age}\n";

# Use an array to store a list of numbers
my @numbers = (1, 2, 3, 4, 5);

# Double each number in the list using map
my @doubled_numbers = map { $_ * 2 } @numbers;

print "Original List: @numbers\n";
print "Doubled List: @doubled_numbers\n";

# Filter even numbers using grep
my @even_numbers = grep { $_ % 2 == 0 } @numbers;

print "Even Numbers: @even_numbers\n";

# Calculate the sum of numbers using reduce
my $sum = 0;
$sum += $_ foreach @numbers;

print "Sum of Numbers: $sum\n";

# Define a class for a car
package Car;

sub new {
    my ($class, $make, $model) = @_;
    my $self = bless {
        make  => $make,
        model => $model,
    }, $class;
    return $self;
}

sub start {
    my ($self) = @_;
    print "Starting the $self->{make} $self->{model}\n";
}

# Define a class for a book
package Book;

sub new {
    my ($class, $title, $author) = @_;
    my $self = bless {
        title  => $title,
        author => $author,
    }, $class;
    return $self;
}

sub read {
    my ($self) = @_;
    print "Reading $self->{title} by $self->{author}\n";
}

# Create instances of Car and Book classes
my $car = Car->new("Toyota", "Camry");
my $book = Book->new("The Hobbit", "J.R.R. Tolkien");

$car->start();
$book->read();
