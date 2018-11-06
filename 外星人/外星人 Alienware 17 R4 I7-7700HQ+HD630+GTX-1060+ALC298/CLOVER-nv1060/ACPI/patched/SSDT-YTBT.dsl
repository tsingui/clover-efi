//
// SSDT-YTBT.dsl
//
// Dell XPS 15 9560
//
// This SSDT fixes an ACPI recursion that breaks Type-C hot plug.
//
// Credit to dpassmor:
// https://www.tonymacx86.com/threads/usb-c-hotplug-questions.211313/
//

DefinitionBlock ("", "SSDT", 2, "hack", "YTBT", 0x00000000)
{   
    Scope (\_GPE)
    {
        Method (YTBT, 2, NotSerialized)
        {
            If ((Arg0 == Arg1)) //Gets rid of a warning. We want this method to always return 0.
            {
                Return (Zero)    
            }
            Else
            {
                Return (Zero)    
            }
        }
    }
}
