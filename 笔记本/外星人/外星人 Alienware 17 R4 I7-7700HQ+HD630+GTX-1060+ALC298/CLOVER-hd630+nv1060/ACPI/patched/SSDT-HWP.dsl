//
// SSDT-HWP.dsl
//
// Dell XPS 15 9560 
//
// This SSDT tells Mac OS that Kaby Lake Hardware P-States have been enabled.
//
// Requires Pike R. Alpha's locked 0xE2 MSR patch in Clover's config.plist 
// and setting the HWP bit in the Dell's UEFI. 
//
// Verify that it works:
// 1. System will actually boot
// 2. Intel Power Gadget reports power usage of ~1.5W-2.0W @ 1.3GHz (i7-7700HQ) when idle.
//
// Only tested with MacbookPro13,3 SMBios.
//
// Would not have been possible without the work of RehabMan.
// https://github.com/RehabMan/OS-X-Clover-Laptop-Config
//
//
// RehabMan Notes:
//
// This is experimental to see how only injecting plugin-type with native CPU PM SSDTs
// works on various platforms.
// 
// Results: OK on Haswell+, not so good on Ivy 
//
//   iMac17,1 and MacBook9,1 do not have APSS/ACST/APLF/etc
//   others like MacBookPro12,x, MacBook11,x do have it, but it is possible they are not used
//   likely any HWP enabled SMBIOS does not have APSS/ACST/APLF/etc and does not need it
//   could be that any XCPM enabled SMBIOS needs only this plugin-type injection
//

DefinitionBlock("", "SSDT", 2, "hack", "Plugin1", 0)
{
    External(\_PR.CPU0, DeviceObj)
    Method (\_PR.CPU0._DSM, 4)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return (Package()
        {
            "plugin-type", 1
        })
    }
}
//EOF
