
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
-- $Id: tc2300.vhd,v 1.2 2001-10-26 16:29:47 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c07s02b06x00p35n01i02300ent IS
END c07s02b06x00p35n01i02300ent;

ARCHITECTURE c07s02b06x00p35n01i02300arch OF c07s02b06x00p35n01i02300ent IS

BEGIN
  TESTING: PROCESS
  BEGIN
    -- Test the predefined type TIME in this respect.
    assert ((1 sec / 1000.0) < 1 sec);
    assert ((1 ms / 1000.0) < 1 ms);
    assert ((1 us / 1000.0) < 1 us);
    wait for 5 us;
    assert NOT(    ((1 sec / 1000.0) < 1 sec)   and
                   ((1 ms / 1000.0) < 1 ms)   and
                   ((1 us / 1000.0) < 1 us)   )
      report "***PASSED TEST: c07s02b06x00p35n01i02300"
      severity NOTE;
    assert (    ((1 sec / 1000.0) < 1 sec)   and
                ((1 ms / 1000.0) < 1 ms)   and
                ((1 us / 1000.0) < 1 us)   )
      report "***FAILED TEST: c07s02b06x00p35n01i02300 - Division of an predefined physical type by a real type test failed."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c07s02b06x00p35n01i02300arch;
