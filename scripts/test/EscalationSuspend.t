# --
# scripts/test/EscalationSuspent.t - EscalationSuspent
# Copyright (C) 2014 Znuny GmbH, http://znuny.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

use strict;
use warnings;
use utf8;

use vars qw($Self);

use Kernel::System::Ticket::Znuny4OTRSEscalationSuspend;

my $HelperObject = $Kernel::OM->Get('Kernel::System::UnitTest::Helper');
my $EventObject = $Kernel::OM->Get('Kernel::System::Ticket::Znuny4OTRSEscalationSuspend');

# Subs:
# Kernel::System::Ticket::TicketEscalationIndexBuild
# Kernel::System::Ticket::TicketEscalationSuspendCalculate
# Kernel::System::Ticket::TicketWorkingTimeSuspendCalculate
# Kernel::System::Ticket::_TicketGetClosed

##############################################################
# Kernel::System::Ticket::TicketEscalationIndexBuild
##############################################################

my $TicketEscalationIndexBuild = $EventObject->Kernel::System::Ticket::TicketEscalationIndexBuild(
    TicketID => '81315',
    UserID => '1',
);
#
#$Self->True(
#    $TicketEscalationIndexBuild,
#    'Kernel::System::Ticket::Znuny4OTRSEscalationSuspend()',
#);

#$Self->False(
#    $TicketEscalationIndexBuild,
#    'Kernel::System::Ticket::Znuny4OTRSEscalationSuspend()',
#);



##############################################################
# Kernel::System::Ticket::TicketEscalationSuspendCalculate
##############################################################

#set EscalationSuspendStates

my $TicketEscalationSuspendCalculat = $EventObject->Kernel::System::Ticket::TicketEscalationSuspendCalculat(
#    TicketID => '81315',
#    UserID => '1',
);



##############################################################
# Kernel::System::Ticket::TicketWorkingTimeSuspendCalculate
##############################################################

#set EscalationSuspendStates
my $TicketWorkingTimeSuspendCalculate = $EventObject->Kernel::System::Ticket::TicketWorkingTimeSuspendCalculate(
#    TicketID => '81315',
#    UserID => '1',
);
##############################################################
# Kernel::System::Ticket::_TicketGetClosed
##############################################################


my $_TicketGetClosed = $EventObject->Kernel::System::Ticket::_TicketGetClosed(
    TicketID => '81315',
    Ticket => '1',
);