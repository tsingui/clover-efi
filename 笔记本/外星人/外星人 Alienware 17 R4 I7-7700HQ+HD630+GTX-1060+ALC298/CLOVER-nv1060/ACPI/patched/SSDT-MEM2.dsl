//
// SSDT-MEM2.dsl
//
// Dell XPS 15 9560 
//
// This SSDT adds a totally defunct MEM2 device. For some reason 
// MacBook Pros have this defined (and in the same weird way as 
// below), but it doesn't seem like it does anything on them.
// Maybe some models use it and others don't?
//
// Regardless, it's here for completeness.
//

DefinitionBlock("", "SSDT", 2, "hack", "MEM2", 0)
{
    External (_SB.PCI0.IGPU, DeviceObj)
    
    Scope (_SB.PCI0.IGPU)
    {    
        Device (^^MEM2)
        {
            Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x20000000,         // Address Base
                    0x00200000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x40000000,         // Address Base
                    0x00200000,         // Address Length
                    )
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (CRS)
            }
        }
    }
}