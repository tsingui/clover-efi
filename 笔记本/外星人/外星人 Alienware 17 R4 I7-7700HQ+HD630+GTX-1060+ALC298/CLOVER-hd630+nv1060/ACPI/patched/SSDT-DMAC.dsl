//
// SSDT-DMAC.dsl
//
// Dell XPS 15 9560 
//
// This SSDT adds a DMA Controller to the LPCB (Low Pin Count Bus).
//
// Credit to syscl:
// https://github.com/syscl/XPS9350-macOS
//

DefinitionBlock("SSDT-DMAC.aml", "SSDT", 2, "hack", "DMAC", 0)
{
    External(_SB.PCI0.LPCB, DeviceObj)
    
    Scope(_SB.PCI0.LPCB)
    {
		Device (DMAC) // macOS desires DMAC credit syscl
		{
		    Name (_HID, EisaId ("PNP0200"))
		    Name (_CRS, ResourceTemplate ()
		    {
		        IO (Decode16,
		        0x0000,
		        0x0000,
		        0x01,
		        0x20,
		        )
		        IO (Decode16,
		        0x0081,
		        0x0081,
		        0x01,
		        0x11,
		        )
		        IO (Decode16,
		        0x0093,
		        0x0093,
		        0x01,
		        0x0D,
		        )
		        IO (Decode16,
		        0x00C0,
		        0x00C0,
		        0x01,
		        0x20,
		        )
		        DMA (Compatibility, NotBusMaster, Transfer8_16, )
		        {4}
		    })
		}
	}
}

