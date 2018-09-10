//
// SSDT-DeepIdle.dsl
//
// Dell XPS 15 9560 
//
// This SSDT adds IOPMDeepIdleSupported to IOPMRootDomain
// (found at IOService:/AppleACPIPlatformExpert/IOPMrootDomain).
//
// From https://pikeralpha.wordpress.com/2017/01/12/debugging-sleep-issues/
// 
// Credit to darkhandz:
// https://github.com/darkhandz/XPS15-9550-Sierra
//

DefinitionBlock("", "SSDT", 2, "hack", "DIDLE", 0)
{
    Scope (\_SB)
    {
        Method (LPS0, 0, NotSerialized)
        {
            Return (One)
        }
    }
    
    Scope (\_GPE)
    {
        Method (LXEN, 0, NotSerialized)
        {
            Return (One)
        }
    }
    
    Scope (\)
    {
        Name (SLTP, Zero)
        
        Method (_TTS, 1, NotSerialized)
        {
            Store (Arg0, SLTP)
        }
    }
}