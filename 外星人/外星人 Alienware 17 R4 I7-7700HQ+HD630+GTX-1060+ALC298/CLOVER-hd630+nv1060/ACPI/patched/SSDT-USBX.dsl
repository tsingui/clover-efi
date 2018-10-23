//
// SSDT-USBX.dsl
//
// Dell XPS 15 9560
//
// This SSDT provides USB power properties, like 
// current limits, to the system (MacBookPro13,3 SMBios).
//
// Would not have been possible without the work of RehabMan:
// https://www.tonymacx86.com/threads/guide-usb-power-property-injection-for-sierra.222266/
//

DefinitionBlock("", "SSDT", 2, "hack", "USBX", 0)
{
    Device(_SB.USBX)
    {
        Name(_ADR, 0)
        Method (_DSM, 4)
        {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            Return (Package()
            {
                // Safe values from USB 3.0 spec are 1500mA for everything, but it seems
                // all MacBook Pros since MacBookPro9,1 use 2100, 2600, 2100, 3200.
                // This laptop probably has the same Intel USB controller used in those Macs...
                "kUSBSleepPortCurrentLimit", 2100,
                "kUSBSleepPowerSupply", 2600,
                "kUSBWakePortCurrentLimit", 2100,
                "kUSBWakePowerSupply", 3200,
            })
        }
    }
}
//EOF