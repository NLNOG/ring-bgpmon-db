package BGPmon::DB::Result::Prefix;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

BGPmon::DB::Result::Prefix

=cut

__PACKAGE__->table("prefixes");

=head1 ACCESSORS

=head2 id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 type

  data_type: 'enum'
  default_value: 'ipv4'
  extra: {list => ["as","ipv4","ipv6"]}
  is_nullable: 0

=head2 prefix

  data_type: 'varchar'
  is_nullable: 0
  size: 44

=head2 matchop

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 as_regexp

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "type",
  {
    data_type => "enum",
    default_value => "ipv4",
    extra => { list => ["as", "ipv4", "ipv6"] },
    is_nullable => 0,
  },
  "prefix",
  { data_type => "varchar", is_nullable => 0, size => 44 },
  "matchop",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "as_regexp",
  { data_type => "varchar", is_nullable => 1, size => 40 },
);
__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint("prefix_key", ["prefix", "matchop", "as_regexp"]);

=head1 RELATIONS

=head2 alarms

Type: has_many

Related object: L<BGPmon::DB::Result::Alarm>

=cut

__PACKAGE__->has_many(
  "alarms",
  "BGPmon::DB::Result::Alarm",
  { "foreign.prefix" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-16 18:26:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jKx9irUuRj9rKKyPsGQREw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
