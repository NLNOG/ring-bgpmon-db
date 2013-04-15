package BGPmon::DB::Result::Alarmtrigger;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

BGPmon::DB::Result::Alarmtrigger

=cut

__PACKAGE__->table("alarmtriggers");

=head1 ACCESSORS

=head2 id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 alarm

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 triggertime

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 notified

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 cleared

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 type

  data_type: 'varchar'
  is_nullable: 1
  size: 10

=head2 prefix

  data_type: 'varchar'
  is_nullable: 1
  size: 44

=head2 path

  data_type: 'varchar'
  is_nullable: 1
  size: 120

=head2 source

  data_type: 'varchar'
  is_nullable: 1
  size: 120

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "alarm",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "triggertime",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "notified",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "cleared",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "type",
  { data_type => "varchar", is_nullable => 1, size => 10 },
  "prefix",
  { data_type => "varchar", is_nullable => 1, size => 44 },
  "path",
  { data_type => "varchar", is_nullable => 1, size => 120 },
  "source",
  { data_type => "varchar", is_nullable => 1, size => 120 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 alarm

Type: belongs_to

Related object: L<BGPmon::DB::Result::Alarm>

=cut

__PACKAGE__->belongs_to(
  "alarm",
  "BGPmon::DB::Result::Alarm",
  { id => "alarm" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-16 18:26:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WC9knD85qOQwpqruuC+pQQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
