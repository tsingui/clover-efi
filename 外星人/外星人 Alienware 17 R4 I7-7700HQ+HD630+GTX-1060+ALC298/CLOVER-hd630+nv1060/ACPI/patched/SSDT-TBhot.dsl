// Enables hotplugging on USB-C port for Dell XPS 15 9550.
// Eliminates the need for USB port limit patch or third-party kext.

DefinitionBlock ("", "SSDT", 2, "hack", "TBOLT", 0x00003000)
{
    // External (_SB_.PCI0.PEG2.PEGP, DeviceObj)    
    External (_SB_.PCI0.PEG2.PEGP.TBL1, DeviceObj)    


    
    
        Scope (_SB.PCI0.PEG2.PEGP.TBL1)
        {
            Name (_STR, Unicode ("Thunderbolt"))  // _STR: Description String
            
            Method (XDSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Store (Package (0x03)
                    {
                        "power-save", 
                        One, 
                        Buffer (One)
                        {
                             0x00                                           
                        }
                    }, Local0)
                Return (Local0)
            }
            
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
            
            Device (TBLU)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (One)
                }

                Device (TB00)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (One)
                    }

                    Device (DEV0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (One)
                        }
                    }
                }

                Device (TB03)
                {
                    Name (_ADR, 0x00030000)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (One)
                    }

                    Device (TB3U)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (One)
                        }

                        Device (TB30)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Device (DEV0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                            }
                        }

                        Device (TB33)
                        {
                            Name (_ADR, 0x00030000)  // _ADR: Address
                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (One)
                            }

                            Device (DEV0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (One)
                                }
                            }
                        }

                        Device (TB34)
                        {
                            Name (_ADR, 0x00040000)  // _ADR: Address
                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (One)
                            }

                            Device (DEV0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (One)
                                }
                            }
                        }

                        Device (TB35)
                        {
                            Name (_ADR, 0x00050000)  // _ADR: Address
                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (One)
                            }
                        }

                        Device (TB36)
                        {
                            Name (_ADR, 0x00060000)  // _ADR: Address
                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (One)
                            }
                        }
                    }
                }

                Device (TB04)
                {
                    Name (_ADR, 0x00040000)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (One)
                    }

                    Device (TB4U)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (One)
                        }

                        Device (TB40)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Device (DEV0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (One)
                                }
                            }
                        }

                        Device (TB43)
                        {
                            Name (_ADR, 0x00030000)  // _ADR: Address
                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (One)
                            }

                            Device (DEV0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (One)
                                }
                            }
                        }

                        Device (TB44)
                        {
                            Name (_ADR, 0x00040000)  // _ADR: Address
                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (One)
                            }

                            Device (DEV0)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    Return (One)
                                }
                            }
                        }

                        Device (TB45)
                        {
                            Name (_ADR, 0x00050000)  // _ADR: Address
                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (One)
                            }
                        }

                        Device (TB46)
                        {
                            Name (_ADR, 0x00060000)  // _ADR: Address
                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                Return (One)
                            }
                        }
                    }
                }

                Device (TB05)
                {
                    Name (_ADR, 0x00050000)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (One)
                    }
                }

                Device (TB06)
                {
                    Name (_ADR, 0x00060000)  // _ADR: Address
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (One)
                    }
                }
            }
        }
    
    
    External (\_SB.PCI0.PEG2.PEGP.TBL2, DeviceObj)    // (from opcode)
    If (CondRefOf (\_SB.PCI0.PEG2.PEGP.TBL2))
    {    
        Scope (_SB.PCI0.PEG2.PEGP.TBL2)
        {            
        }
    }
    
    External (\_SB.PCI0.PEG2.PEGP.TBL3, DeviceObj)    // (from opcode)
    If (CondRefOf (\_SB.PCI0.PEG2.PEGP.TBL3))
    {
        Scope (_SB.PCI0.PEG2.PEGP.TBL3)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }
        }
    }
}

