
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: tc2921.vhd,v 1.2 2001-10-26 16:30:24 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c02s02b00x00p04n01i02921ent IS
END c02s02b00x00p04n01i02921ent;

ARCHITECTURE c02s02b00x00p04n01i02921arch OF c02s02b00x00p04n01i02921ent IS
  function G return BOOLEAN;
  function G return BOOLEAN is
    generic ( Z : TIME ) ;  -- Failure_here

    -- ERROR : generic declaration not allowed in subprogram declarations
  begin
    return 'A'='a';
  end G;
BEGIN
  TESTING: PROCESS
  BEGIN
    assert FALSE
      report "***FAILED TEST: c02s02b00x00p04n01i02921 - Generic declarations are not allowed within subprogram declaration."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c02s02b00x00p04n01i02921arch;
