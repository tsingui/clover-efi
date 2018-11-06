//
// SSDT-BRT6.dsl
//
// Dell XPS 15 9560 
//
// This SSDT contains a remapping of the BRT6 (brightness control) method.
//
// BRT6 Method in DSDT is renamed to BRTX, and call to BRT6 land here.
// 
// BRT6 fix the brightness key control.
// 
// Credit to darkhandz:
// https://github.com/darkhandz/XPS15-9550-Sierra
//


DefinitionBlock("", "SSDT", 2, "hack", "BRT6", 0)
{    
    External(_SB.PCI0.LPCB.PS2K, DeviceObj)
    External(_SB.PCI0.IGPU, DeviceObj)
    External(_SB.PCI0.IGPU.LCD, DeviceObj)
    
    Scope(_SB.PCI0.IGPU)
    {
        Method (BRT6, 2, NotSerialized)
        {
            If (LEqual (Arg0, One))
            {
                Notify (^LCD, 0x86)    //native code
                Notify (^^LPCB.PS2K, 0x10)    //ELAN code
                Notify (^^LPCB.PS2K, 0x0206) // PS2 code
                Notify (^^LPCB.PS2K, 0x0286) // PS2 code
            }

            If (And (Arg0, 0x02))
            {
                Notify (^LCD, 0x87)    //native code
                Notify (^^LPCB.PS2K, 0x20)    //ELAN code
                Notify (^^LPCB.PS2K, 0x0205) // PS2 code
                Notify (^^LPCB.PS2K, 0x0285) // PS2 code
            }
        }
    }
    
}
//EOF
