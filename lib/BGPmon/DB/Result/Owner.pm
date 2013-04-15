package BGPmon::DB::Result::Owner;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use base 'DBIx::Class::Core';


=head1 NAME

BGPmon::DB::Result::Owner

=cut

__PACKAGE__->table("owners");

=head1 ACCESSORS

=head2 id

  data_type: 'mediumint'
  is_auto_increment: 1
  is_nullable: 0

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 120

=head2 web_pass

  data_type: 'varchar'
  is_nullable: 1
  size: 120

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "mediumint", is_auto_increment => 1, is_nullable => 0 },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 120 },
  "web_pass",
  { data_type => "varchar", is_nullable => 1, size => 120 },
);
__PACKAGE__->set_primary_key("id");

=head1 RELATIONS

=head2 alarms

Type: has_many

Related object: L<BGPmon::DB::Result::Alarm>

=cut

__PACKAGE__->has_many(
  "alarms",
  "BGPmon::DB::Result::Alarm",
  { "foreign.owner" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2013-03-16 18:26:18
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/NdcQLsQ8eP1m2q3XaSR6Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
