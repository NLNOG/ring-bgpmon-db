package BGPmon::DB::Result::Alarm;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

BGPmon::DB::Result::Alarm

=cut

__PACKAGE__->table("alarms");

=head1 ACCESSORS

=head2 id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 type

  data_type: 'enum'
  default_value: 'email'
  extra: {list => ["email"]}
  is_nullable: 0

=head2 prefix

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 owner

  data_type: 'mediumint'
  is_foreign_key: 1
  is_nullable: 0

=head2 enabled

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "type",
  {
    data_type => "enum",
    default_value => "email",
    extra => { list => ["email"] },
    is_nullable => 0,
  },
  "prefix",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "owner",
  { data_type => "mediumint", is_foreign_key => 1, is_nullable => 0 },
  "enabled",
  { data_type => "tinyint", default_value => 1, is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 owner

Type: belongs_to

Related object: L<BGPmon::DB::Result::Owner>

=cut

__PACKAGE__->belongs_to(
  "owner",
  "BGPmon::DB::Result::Owner",
  { id => "owner" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 prefix

Type: belongs_to

Related object: L<BGPmon::DB::Result::Prefix>

=cut

__PACKAGE__->belongs_to(
  "prefix",
  "BGPmon::DB::Result::Prefix",
  { id => "prefix" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

=head2 alarmtriggers

Type: has_many

Related object: L<BGPmon::DB::Result::Alarmtrigger>

=cut

__PACKAGE__->has_many(
  "alarmtriggers",
  "BGPmon::DB::Result::Alarmtrigger",
  { "foreign.alarm" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-16 18:26:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:toAf3kgQGPXw6yhq5c+3Xw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
