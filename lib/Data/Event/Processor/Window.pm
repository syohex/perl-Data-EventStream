package Data::Event::Processor::Window;
use Moose::Role;

has processors => (
    is      => 'ro',
    traits  => ['Array'],
    default => sub { [] },
    handles => {
        all_processors => 'elements',
        add_processor  => 'push',
    },
);

has events => (
    is      => 'ro',
    traits  => ['Array'],
    default => sub { [] },
    handles => {
        all_events   => 'elements',
        push_event   => 'push',
        shift_event  => 'shift',
        count_events => 'count',
        clear_events => 'clear',
    },
);

requires 'enqueue';

1;
