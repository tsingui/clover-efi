//
// SSDT-YTBT.dsl
//
// Dell XPS 15 9560
//
// This SSDT fixes Type-C hot plug, and attempts to implement Thunderbolt device tree structure.
//
// Credit to dpassmor for the original ExpressCard idea:
// https://www.tonymacx86.com/threads/usb-c-hotplug-questions.211313/
//

DefinitionBlock ("", "SSDT", 2, "hack", "TYPC", 0x00000000)
{
    External (_SB_.PCI0.PEG2, DeviceObj)    // (from opcode)
    External (SGDO, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (SGOV, MethodObj) //Dell uses these, too? Maybe it's a standard thing!
    External (_SB_.PCI0.PEG2.PEGP, DeviceObj)    // (from opcode)
//    External (DTGP, MethodObj)
        Scope (\_SB.PCI0.PEG2) //We might need a bunch of variables
        {
          Name (RTBT, One)
        }
        
        Scope (\_SB.PCI0.PEG2.PEGP) //UPSB
        {
            // This is the key fix for machines that turn off the Type-C port, right here.
            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (One) // Returning 0 means not a removable device. But we want to act like an ExpressCard! (credit dpassmor)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
/*
            Method (_DSM, 4, NotSerialized)
            {
                If (!Arg2) { Return (Buffer() { 0x03 } ) }
                Store (Package (0x02)
                {
                    "PCI-Thunderbolt",
                    One
                },
                Local0)
                Return (Local0)
            }
*/            
            Device (TBL1) //DSB0
            {
                Name (_ADR, Zero)  // _ADR: Address

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                  Return (Zero)
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                            If ((Arg0 == ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b")))
                            {
                                If (!Arg2) { Return (Buffer() { 0x03 } ) }
                                Local0 = Package (0x02)
                                    {
                                        "PCIHotplugCapable",
                                        Zero
                                    }
                                Return (Local0)
                            }


                        Return (Zero)
                }


                 //The NHI is here. This gives us a real name for the device instead of just a device ID in IOReg
                Device (NHI0)
                {
                      Name (_ADR, Zero)  // _ADR: Address
                      Name (_STR, Unicode ("Thunderbolt"))  // _STR: Description String

                      Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                      {
                          Return (Zero) 
                      }

                      Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                      {
                        If (!Arg2) { Return (Buffer() { 0x03 } ) }
                        Local0 = Package (0x03)
                        {
                            "power-save",
                            One,
                            Buffer (One)
                            {
                                 0x00
                            }
                        }
                        Return (Local0)
                      }

                      //TODO: May need more code here (?)
/*                      Method (RTPC, 1, Serialized)
                      {
                        If ((Arg0 <= One))
                        {
                            \_SB.PCI0.RP15.RTBT = Arg0
                        }
                        
                        Return (Zero)
                      }

*/
/*                      Method (MUST, 1, Serialized) //Don't think we need this
                      {
//                          Return (\_SB.PCI0.RP15.PXSX.MUST (Arg0))
                            Return (Zero) // Let's just make it return 0 for now (which it does anyways after notifying the USB bus that a USB device is attached rather than a TB device)
                      }
*/
/*                      Method (SXFP, 1, Serialized) //Don't think this actually does anything
                      {
                          If ((Arg0 == Zero))
                          {
                              If ((GGDV == 0x01070007))
                              {
                                  One
                                  SGOV (0x01070007, Zero, SGDO (0x01070007), Sleep (0x64))
                              }

                              SGOV (0x01070004, Zero, SGDO (0x01070004))
                          }
                      }
*/
/*                      Name (XRTE, Zero)
                      Method (XRST, 1, Serialized) //This doesn't do anything?
                      {
                          If ((Arg0 == Zero))
                          {
                              XRTE = Zero
                          }
                          ElseIf ((Arg0 == One))
                          {
                              XRTE = One
                          }
                      }
*/
/*                     Method (TRPE, 2, Serialized) // ??
                        {
                            If (OSDW ())
                            {
                                If ((Arg0 <= One))
                                {
                                    If ((Arg0 == Zero))
                                    {
                                        \_SB.PCI0.RP15.PUPD (Zero, 0x02)
                                        \_SB.PCI0.RP15.PSTA = 0x03
                                        SGOV (0x01070004, Zero, SGDO (0x01070004), Else
                                            {
                                                Local0 = Zero
                                                If (((GGOV == 0x01070004) && Zero))
                                                {
                                                    (GGDV == 0x01070004)
                                                    Zero
                                                    \_SB.PCI0.RP15.PSTA = Zero
                                                    While (One)
                                                    {
                                                        SGDI (0x01070004)
                                                        Local1 = Zero
                                                        Sleep (0x1E)
                                                        \_SB.PCI0.RP15.PUPD (One, 0x02)
                                                        Local2 = (Timer + 0x00989680)
                                                        While ((Timer <= Local2))
                                                        {
                                                            If ((\_SB.PCI0.RP15.LACR == Zero))
                                                            {
                                                                If ((\_SB.PCI0.RP15.LTRN != One))
                                                                {
                                                                    Break
                                                                }
                                                            }
                                                            ElseIf (((\_SB.PCI0.RP15.LTRN != One) && (\_SB.PCI0.RP15.LACT == One)))
                                                            {
                                                                Break
                                                            }

                                                            Sleep (0x0A)
                                                        }

                                                        Sleep (Arg1)
                                                        While ((Timer <= Local2))
                                                        {
                                                            If ((\_SB.PCI0.RP15.PXSX.AVND != 0xFFFFFFFF))
                                                            {
                                                                Local1 = One
                                                                Break
                                                            }

                                                            Sleep (0x0A)
                                                        }

                                                        If ((Local1 == One))
                                                        {
                                                            MABT = One
                                                            Break
                                                        }

                                                        If ((Local0 == 0x04))
                                                        {
                                                            Return (Zero)
                                                        }

                                                        Local0++
                                                        SGOV (0x01070004, Zero, SGDO (0x01070004), Sleep (0x03E8))
                                                    }

                                                    If ((\_SB.PCI0.RP15.CSPD != 0x03))
                                                    {
                                                        If ((\_SB.PCI0.RP15.SSPD == 0x03))
                                                        {
                                                            If ((\_SB.PCI0.RP15.PXSX.SSPD == 0x03))
                                                            {
                                                                If ((\_SB.PCI0.RP15.TSPD != 0x03))
                                                                {
                                                                    \_SB.PCI0.RP15.TSPD = 0x03
                                                                }

                                                                If ((\_SB.PCI0.RP15.PXSX.TSPD != 0x03))
                                                                {
                                                                    \_SB.PCI0.RP15.PXSX.TSPD = 0x03
                                                                }

                                                                \_SB.PCI0.RP15.LRTN = One
                                                                Local2 = (Timer + 0x00989680)
                                                                While ((Timer <= Local2))
                                                                {
                                                                    If ((\_SB.PCI0.RP15.LACR == Zero))
                                                                    {
                                                                        If (((\_SB.PCI0.RP15.LTRN != One) && (\_SB.PCI0.RP15.PXSX.AVND != 0xFFFFFFFF)))
                                                                        {
                                                                            Local1 = One
                                                                            Break
                                                                        }
                                                                    }
                                                                    ElseIf ((((\_SB.PCI0.RP15.LTRN != One) && (\_SB.PCI0.RP15.LACT == One)) && (\_SB.PCI0.RP15.PXSX.AVND != 0xFFFFFFFF)))
                                                                    {
                                                                        Local1 = One
                                                                        Break
                                                                    }

                                                                    Sleep (0x0A)
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            })
                                    }
                                }
                            }

                            Return (Zero)
                        }
*/
                }

            }

            Device (TBL2) //DSB1
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Name (_SUN, One)  // _SUN: Slot User Number

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                   Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                  Return (Zero)
                }

                //TODO: Gonna need a lot more code here for TB support...

                Device (TBLU) //UPS0 on DSB1
                {
                  Name (_ADR, Zero)

                  Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                  {
                    Return (One) //This is where we have issues. TBLU and below aren't loading.
                  }

                  Device (TB00) //DSB0
                  {
                    Name (_ADR, Zero)

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                      Return (One)
                    }

                    Device (DEV0) //DEV0
                    {
                      Name (_ADR, Zero)

                      Method (_STA, 0, NotSerialized)  // _STA: Status
                      {
                        Return (0x0F)
                      }

                      Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                      {
                        Return (One)
                      }
                    }
                  }
                  ///////////////////////////////////////////////
                  Device (TB03) //DSB3
                  {
                    Name (_ADR, 0x00030000)

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                      Return (One)
                    }

                    Device(TB3U) //UPS0 on DSB3
                    {
                      Name (_ADR, Zero)

                      Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                      {
                        Return (One)
                      }
                      Device(TB30) //DSB0
                      {
                        Name (_ADR, Zero)

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Device(DEV0) //DEV0
                        {
                          Name (_ADR, Zero)

                          Method (_STA, 0, NotSerialized)  // _STA: Status
                          {
                              Return (0x0F)
                          }
                        }
                      }
                      Device (TB33) //DSB3
                      {
                        Name (_ADR, 0x00030000)

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                          Return (One)
                        }

                        Device (DEV0) //DEV0
                        {
                          Name (_ADR, Zero)

                          Method (_STA, 0, NotSerialized)  // _STA: Status
                          {
                            Return (0x0F)
                          }

                          Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                          {
                            Return (One)
                          }
                        }
                      }
                      Device (TB34) //DSB4
                      {
                        Name (_ADR, 0x00040000)

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                          Return (One)
                        }

                        Device (DEV0) //DEV0
                        {
                          Name (_ADR, Zero)

                          Method (_STA, 0, NotSerialized)  // _STA: Status
                          {
                            Return (0x0F)
                          }

                          Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                          {
                            Return (One)
                          }
                        }
                      }
                      Device (TB35) //DSB5
                      {
                        Name (_ADR, 0x00050000)

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                          Return (One)
                        }
                      }
                      Device (TB36) //DSB6
                      {
                        Name (_ADR, 0x00060000)

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                          Return (One)
                        }
                      }
                    }
                  }
                  ///////////////////////////////////////////////
                  Device (TB04) //DSB4
                  {
                    Name (_ADR, 0x00040000)

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                      Return (One)
                    }

                    Device(TB4U) //UPS0 on DSB4
                    {
                      Name (_ADR, Zero)

                      Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                      {
                        Return (One)
                      }
                      Device(TB40) //DSB0
                      {
                        Name (_ADR, Zero)

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Device(DEV0) //DEV0
                        {
                          Name (_ADR, Zero)

                          Method (_STA, 0, NotSerialized)  // _STA: Status
                          {
                            Return (0x0F)
                          }

                          Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                          {
                            Return (One)
                          }
                        }
                      }
                      Device (TB43) //DSB3
                      {
                        Name (_ADR, 0x00030000)

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                          Return (One)
                        }

                        Device (DEV0) //DEV0
                        {
                          Name (_ADR, Zero)

                          Method (_STA, 0, NotSerialized)  // _STA: Status
                          {
                            Return (0x0F)
                          }

                          Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                          {
                            Return (One)
                          }
                        }
                      }
                      Device (TB44) //DSB4
                      {
                        Name (_ADR, 0x00040000)

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                          Return (One)
                        }

                        Device (DEV0) //DEV0
                        {
                          Name (_ADR, Zero)

                          Method (_STA, 0, NotSerialized)  // _STA: Status
                          {
                            Return (0x0F)
                          }

                          Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                          {
                            Return (One)
                          }
                        }
                      }
                      Device (TB45) //DSB5
                      {
                        Name (_ADR, 0x00050000)

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                          Return (One)
                        }
                      }
                      Device (TB46) //DSB6
                      {
                        Name (_ADR, 0x00060000)

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                          Return (One)
                        }
                      }
                    }
                  }
                  ///////////////////////////////////////////////
                  Device (TB05) //DSB5
                  {
                    Name (_ADR, 0x00050000)

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                      Return (One)
                    }
                  }
                  Device (TB06) //DSB6
                  {
                    Name (_ADR, 0x00060000)

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                      Return (One)
                    }
                  }
                }
            }

            Device (TBL3) //DSB2
            //USB port works; we're done here.
            {
                Name (_ADR, 0x00020000)  // _ADR: Address

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Device (TBTU)
                {
                    Name (_ADR, Zero)  // _ADR: Address

                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                      0x6D,
                      Zero
                    })


                    Device (RHUB)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (GPLD, 2, Serialized)
                        {
                            Name (PCKG, Package (0x01)
                            {
                                Buffer (0x10) {}
                            })
                            CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                            REV = One
                            CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                            VISI = Arg0
                            CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                            GPOS = Arg1
                            Return (PCKG)
                        }

                        Method (GUPC, 1, Serialized)
                        {
                            Name (PCKG, Package (0x04)
                            {
                                Zero,
                                0xFF,
                                Zero,
                                Zero
                            })
                            PCKG [Zero] = Arg0
                            Return (PCKG)
                        }

                        Method (TPLD, 2, Serialized)
                        {
                            Name (PCKG, Package (0x01)
                            {
                                Buffer (0x10) {}
                            })
                            CreateField (DerefOf (PCKG [Zero]), Zero, 0x07, REV)
                            REV = One
                            CreateField (DerefOf (PCKG [Zero]), 0x40, One, VISI)
                            VISI = Arg0
                            CreateField (DerefOf (PCKG [Zero]), 0x57, 0x08, GPOS)
                            GPOS = Arg1
                            CreateField (DerefOf (PCKG [Zero]), 0x4A, 0x04, SHAP)
                            SHAP = One
                            CreateField (DerefOf (PCKG [Zero]), 0x20, 0x10, WID)
                            WID = 0x08
                            CreateField (DerefOf (PCKG [Zero]), 0x30, 0x10, HGT)
                            HGT = 0x03
                            Return (PCKG)
                        }

                        Method (TUPC, 1, Serialized)
                        {
                            Name (PCKG, Package (0x04)
                            {
                                One,
                                Zero,
                                Zero,
                                Zero
                            })
                            PCKG [One] = Arg0
                            Return (PCKG)
                        }

                        Device (UB21)
                        {
                            Name (_ADR, One)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (TUPC (0x09))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (TPLD (One, One))
                            }
                        }

                        Device (UB22)
                        {
                            Name (_ADR, 0x02)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (Zero))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (GPLD (Zero, Zero))
                            }
                        }

                        Device (UB31)
                        {
                            Name (_ADR, 0x03)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (TUPC (0x09))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (TPLD (One, One))
                            }
                        }

                        Device (UB32)
                        {
                            Name (_ADR, 0x04)  // _ADR: Address
                            Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                            {
                                Return (GUPC (Zero))
                            }

                            Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                            {
                                Return (GPLD (Zero, Zero))
                            }
                        }
                    }
                }
            }

          //  Device (TBL4) //Maybe this is the key to Thunderbolt? Technically the controller is a 4-lane controller, but it just has 2 lanes hooked up...
          //  {

         //   }
        }
}
