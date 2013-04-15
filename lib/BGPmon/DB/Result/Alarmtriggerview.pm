package BGPmon::DB::Result::Alarmtriggerview;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

BGPmon::DB::Result::Alarmtriggerview

=cut

__PACKAGE__->table("alarmtriggerview");

=head1 ACCESSORS

=head2 alarmtype

  data_type: 'enum'
  default_value: 'email'
  extra: {list => ["email"]}
  is_nullable: 1

=head2 email

  data_type: 'mediumtext'
  is_nullable: 1

=head2 alarmprefix

  data_type: 'mediumtext'
  is_nullable: 1

=head2 triggerperiodbegin

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 triggerperiodend

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 notified

  data_type: 'tinyint'
  is_nullable: 1

=head2 cleared

  data_type: 'tinyint'
  is_nullable: 1

=head2 announces

  data_type: 'decimal'
  is_nullable: 1
  size: [23,0]

=head2 withdraws

  data_type: 'decimal'
  is_nullable: 1
  size: [23,0]

=head2 prefix

  data_type: 'mediumtext'
  is_nullable: 1

=head2 path

  data_type: 'mediumtext'
  is_nullable: 1

=head2 source

  data_type: 'mediumtext'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "alarmtype",
  {
    data_type => "enum",
    default_value => "email",
    extra => { list => ["email"] },
    is_nullable => 1,
  },
  "email",
  { data_type => "mediumtext", is_nullable => 1 },
  "alarmprefix",
  { data_type => "mediumtext", is_nullable => 1 },
  "triggerperiodbegin",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "triggerperiodend",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "notified",
  { data_type => "tinyint", is_nullable => 1 },
  "cleared",
  { data_type => "tinyint", is_nullable => 1 },
  "announces",
  { data_type => "decimal", is_nullable => 1, size => [23, 0] },
  "withdraws",
  { data_type => "decimal", is_nullable => 1, size => [23, 0] },
  "prefix",
  { data_type => "mediumtext", is_nullable => 1 },
  "path",
  { data_type => "mediumtext", is_nullable => 1 },
  "source",
  { data_type => "mediumtext", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-16 18:26:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:H6ONfGMQwYs4Hmkmkp5giQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
