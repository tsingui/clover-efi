// Enables hotplugging on USB-C port for Dell XPS 15 9550.
// Eliminates the need for USB port limit patch or third-party kext.

DefinitionBlock ("", "SSDT", 2, "hack", "TBOLT", 0x00003000)
{
    External (_SB_.PCI0.PEG2.PEGP, DeviceObj)    


    

    Scope (\_SB.PCI0.PEG2.PEGP)
    {
        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
        {
            Return (One)
        }
        
        Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

        Method (_DSM, 4, NotSerialized) 
        {
            Store (Package (0x02)
                {
                    "PCI-Thunderbolt", 
                    One
                }, Local0)
            Return (Local0)
        }

        Device (DSB0)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }

        Device (DSB1)
        {
            Name (_ADR, 0x00010000)  // _ADR: Address
        }

        Device (DSB2)
        {
            Name (_ADR, 0x00020000)  // _ADR: Address

            Device (XHC2)
            {
                Name (_ADR, Zero)  // _ADR: Address
                
                Device (RHUB)
                {
                    Name (_ADR, Zero)  // _ADR: Address

                    Device (HS01)
                    {
                        Name (_ADR, 0x01)
                        
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0x00, 
                            0x09, 
                            0x00, 
                            0x00
                        })

                        Name (_PLD, Package (0x01) // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)  
                            {
                                0x81, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x30, 
                                0x1C, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                           }
                        })
                    }
                    
                    Device (HS02)
                    {
                        Name (_ADR, 0x02)
                        
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0x00, 
                            0x09, 
                            0x00, 
                            0x00
                        })

                        Name (_PLD, Package (0x01) // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)  
                            {
                                0x81, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x30, 
                                0x1C, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                           }
                        })
                    }
                    
                    Device (SSP1)
                    {
                        Name (_ADR, 0x03)
                        
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF, 
                            0x09, 
                            0x00, 
                            0x00
                        })

                        Name (_PLD, Package (0x01) // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)  
                            {
                                0x81, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x31, 
                                0x1C, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                           }
                        })
                    }
                    
                    Device (SSP2)
                    {
                        Name (_ADR, 0x04)
                        
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0x00, 
                            0x09, 
                            0x00, 
                            0x00
                        })

                        Name (_PLD, Package (0x01) // _PLD: Physical Location of Device
                        {
                            Buffer (0x10)  
                            {
                                0x81, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x30, 
                                0x1C, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00, 
                                0x00
                           }
                        })
                    }
                }
            }
        }
    }
}

