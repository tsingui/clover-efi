// SSDT-PMCR.dsl
//
// Dell XPS 15 9560 
// KabyLake's Intel HD630
//
// According to syscl, Apple expects this. It doesn't seem to
// do anything with regard to loading AppleIntelPCHPMC.kext, but
// it doesn't hurt and it's there in the real Mac's DSDT.
//
// Credit to syscl: // https://github.com/syscl/XPS9350-macOS

DefinitionBlock("", "SSDT", 2, "hack", "PMCR", 0)
{
    External(_SB.PCI0, DeviceObj)

    Scope(_SB.PCI0)
    {
	    Device (PMCR)
	    {
	        Name (_ADR, 0x001F0002)
	    }
    }
}

// EOF