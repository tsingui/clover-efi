//
// SSDT-RMDGPU.dsl
//
// Dell XPS 15 9560
//
// This SSDT turns off the NVidia GTX 1050.
// Maybe some brave soul will one day get Optimus working
// with, like, a fake GMUX device in ACPI or something.
// 
// Credit to RehabMan for the methodology:
// https://www.tonymacx86.com/threads/guide-disabling-discrete-graphics-in-dual-gpu-laptops.163772/0
//

DefinitionBlock("", "SSDT", 2, "hack", "D-DGPU", 0)
{
    External(_SB.PCI0.PEG0.PEGP._OFF, MethodObj)

//Make a fake device that turns off the DGPU on init
//We can use this as a DGPU control if we wanted to e.g. for CUDA reasons
//or in the unlikely event soemone comes along and gets Optimus working on Mac.

    Device(RMD1)
    {
        Name(_HID, "RMD10000")
        Method(_INI)
        {
            //Calling the convenient Optimus OFF switch
            \_SB.PCI0.PEG0.PEGP._OFF()
        }
    }
}
//EOF
