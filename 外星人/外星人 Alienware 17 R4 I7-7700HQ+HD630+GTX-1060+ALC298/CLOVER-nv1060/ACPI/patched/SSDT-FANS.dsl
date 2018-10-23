//
// SSDT-FANS.dsl
//
// Dell XPS 15 9560 
//
// This SSDT contains a fan monitoring device.
//
// Would not have been possible without the work of RehabMan.
// https://github.com/RehabMan/OS-X-Clover-Laptop-Config
//

DefinitionBlock ("", "SSDT", 2, "hack", "FANS", 0x00000000)
{
    External (_SB_.PCI0.LPCB.EC__.KDRT, MethodObj)    // 1 Arguments (from opcode)
    External (ECRD, IntObj)    // (from opcode)
//    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)
//    External (_SB_.PCI0.LPCB.H_EC.CFSP, UnknownObj) 

    Device (SMCD)
    {
        Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
        Name (_CID, "monitor")  // _CID: Compatible ID
        Name (KLVN, Zero)
        
/* Maybe one day FakeSMC will allow custom methods like this to work properly...
        Name (TEMP, Package ()
        {
            "B0D4", 
            "AAAA", 
            "AR and PD", 
            "BBBB", 
            "Skin1", 
            "CCCC", 
            "Skin2", 
            "DDDD", 
            "SSD", 
            "EEEE", 
            "RAM", 
            "FFFF",
        })
*/

//HWMonitor seemes to have trouble with FAN0 and FAN1...

        Name (TACH, Package ()
        {
            "Fan 1 Temp", 
            "FAN6", 
            "Fan 2 Temp", 
            "FAN7", //You know what? Let's fake everything as fans!
            "B0D4", 
            "FAN8", 
            "AR and PD", 
            "FAN9", 
            "Skin 1", 
            "FANA", 
            "Skin 2", 
            "FANB", 
            "SSD", 
            "FANC", 
            "RAM", 
            "FAND",
        })
        Method (FAN6, 0, NotSerialized)
        {
            If (\ECRD)
            {
                Store (\_SB.PCI0.LPCB.EC.KDRT (0x04), Local0)
                Return (Local0) //Let's just get Celsius temps since RPMs are evidently inaccesible
// This would get us the fan speed if Dell didnt have some proprietary monitor... But they do, so this fails.
//                  Return(\_SB.PCI0.LPCB.H_EC.ECRD (RefOf (\_SB.PCI0.LPCB.H_EC.CFSP)))
            }
            Else
            {
                Return (0x0BB8)
            }
        }

        Method (FAN7, 0, NotSerialized)
        {
            If (\ECRD)
            {
                Store (\_SB.PCI0.LPCB.EC.KDRT (0x05), Local0)
                Return (Local0)
            }
            Else
            {
                Return (0x0BB8)
            }
        }
        
/* See above comment.
        Method (AAAA, 0, NotSerialized)
        {
            If (\ECRD)
            {
                Store (\_SB.PCI0.LPCB.EC.KDRT (Zero), Local0)
                If (LGreaterEqual (Local0, 0xFF))
                {
                    Store (\_SB.PCI0.LPCB.EC.KDRT (Zero), Local0)
                }

                Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
            }
            Else
            {
                Return (0x0BB8)
            }
        }

        Method (BBBB, 0, NotSerialized)
        {
            If (\ECRD)
            {
                Store (\_SB.PCI0.LPCB.EC.KDRT (0x06), Local0)
                Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
            }
            Else
            {
                Return (0x0BB8)
            }
        }

        Method (CCCC, 0, NotSerialized)
        {
            If (\ECRD)
            {
                Store (\_SB.PCI0.LPCB.EC.KDRT (One), Local0)
                Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
            }
            Else
            {
                Return (0x0BB8)
            }
        }

        Method (DDDD, 0, NotSerialized)
        {
            If (\ECRD)
            {
                Store (\_SB.PCI0.LPCB.EC.KDRT (0x02), Local0)
                Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
            }
            Else
            {
                Return (0x0BB8)
            }
        }

        Method (EEEE, 0, NotSerialized)
        {
            If (\ECRD)
            {
                Store (\_SB.PCI0.LPCB.EC.KDRT (0x03), Local0)
                Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
            }
            Else
            {
                Return (0x0BB8)
            }
        }

        Method (FFFF, 0, NotSerialized)
        {
            If (\ECRD)
            {
                Store (\_SB.PCI0.LPCB.EC.KDRT (0x07), Local0)
                Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
            }

            Return (0x0BB8)
        }
*/
        Method (FAN8, 0, NotSerialized)
        {
            If (\ECRD)
            {
                Store (\_SB.PCI0.LPCB.EC.KDRT (Zero), Local0)
                If (LGreaterEqual (Local0, 0xFF))
                {
                    Store (\_SB.PCI0.LPCB.EC.KDRT (Zero), Local0)
                }

                Return (Local0)
            }
            Else
            {
                Return (0x0BB8)
            }
        }

        Method (FAN9, 0, NotSerialized)
        {
            If (\ECRD)
            {
                Store (\_SB.PCI0.LPCB.EC.KDRT (0x06), Local0)
                Return (Local0)
            }
            Else
            {
                Return (0x0BB8)
            }
        }

        Method (FANA, 0, NotSerialized)
        {
            If (\ECRD)
            {
                Store (\_SB.PCI0.LPCB.EC.KDRT (One), Local0)
                Return (Local0)
            }
            Else
            {
                Return (0x0BB8)
            }
        }

        Method (FANB, 0, NotSerialized)
        {
            If (\ECRD)
            {
                Store (\_SB.PCI0.LPCB.EC.KDRT (0x02), Local0)
                Return (Local0)
            }
            Else
            {
                Return (0x0BB8)
            }
        }

        Method (FANC, 0, NotSerialized)
        {
            If (\ECRD)
            {
                Store (\_SB.PCI0.LPCB.EC.KDRT (0x03), Local0)
                Return (Local0)
            }
            Else
            {
                Return (0x0BB8)
            }
        }

        Method (FAND, 0, NotSerialized)
        {
            If (\ECRD)
            {
                Store (\_SB.PCI0.LPCB.EC.KDRT (0x07), Local0)
                Return (Local0)
            }

            Return (0x0BB8)
        }

    }
}