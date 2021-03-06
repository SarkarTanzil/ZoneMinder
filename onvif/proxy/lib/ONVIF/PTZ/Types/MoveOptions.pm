package ONVIF::PTZ::Types::MoveOptions;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Absolute_of :ATTR(:get<Absolute>);
my %Relative_of :ATTR(:get<Relative>);
my %Continuous_of :ATTR(:get<Continuous>);

__PACKAGE__->_factory(
    [ qw(        Absolute
        Relative
        Continuous

    ) ],
    {
        'Absolute' => \%Absolute_of,
        'Relative' => \%Relative_of,
        'Continuous' => \%Continuous_of,
    },
    {
        'Absolute' => 'ONVIF::PTZ::Types::AbsoluteFocusOptions',
        'Relative' => 'ONVIF::PTZ::Types::RelativeFocusOptions',
        'Continuous' => 'ONVIF::PTZ::Types::ContinuousFocusOptions',
    },
    {

        'Absolute' => 'Absolute',
        'Relative' => 'Relative',
        'Continuous' => 'Continuous',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::PTZ::Types::MoveOptions

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
MoveOptions from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Absolute


=item * Relative


=item * Continuous




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::PTZ::Types::MoveOptions
   Absolute =>  { # ONVIF::PTZ::Types::AbsoluteFocusOptions
     Position =>  { # ONVIF::PTZ::Types::FloatRange
       Min =>  $some_value, # float
       Max =>  $some_value, # float
     },
     Speed =>  { # ONVIF::PTZ::Types::FloatRange
       Min =>  $some_value, # float
       Max =>  $some_value, # float
     },
   },
   Relative =>  { # ONVIF::PTZ::Types::RelativeFocusOptions
     Distance =>  { # ONVIF::PTZ::Types::FloatRange
       Min =>  $some_value, # float
       Max =>  $some_value, # float
     },
     Speed =>  { # ONVIF::PTZ::Types::FloatRange
       Min =>  $some_value, # float
       Max =>  $some_value, # float
     },
   },
   Continuous =>  { # ONVIF::PTZ::Types::ContinuousFocusOptions
     Speed =>  { # ONVIF::PTZ::Types::FloatRange
       Min =>  $some_value, # float
       Max =>  $some_value, # float
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

