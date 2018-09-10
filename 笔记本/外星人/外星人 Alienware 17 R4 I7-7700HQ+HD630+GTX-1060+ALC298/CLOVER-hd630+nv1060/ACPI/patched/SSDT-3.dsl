/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160729-64
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/jonathan/Documents/DarwinDumper_3.0.3_08.11_21.07.41_MacBookPro11,4_Apple_X64_Sierra_16G1036_jonathan/ACPI Tables/AML/SSDT-3.aml, Wed Nov  8 21:08:00 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000086DA (34522)
 *     Revision         0x01
 *     Checksum         0xC9
 *     OEM ID           "APPLE "
 *     OEM Table ID     "TbtPEG21"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20140424 (538182692)
 */
DefinitionBlock ("", "SSDT", 1, "APPLE ", "TbtPEG21", 0x00001000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.PEG2, DeviceObj)
    External (_SB_.PCI0.PEG2.UPSB, DeviceObj)
    External (_SB_.PCI0.TBTC, MethodObj)    // 1 Arguments
    External (RPLT, MethodObj)    // 0 Arguments
    External (UPLT, MethodObj)    // 0 Arguments
    External (DTGP, MethodObj)    // 5 Arguments
    External (GD04, FieldUnitObj)
    External (GI04, FieldUnitObj)
    External (GP04, FieldUnitObj)
    External (GP23, FieldUnitObj)
    External (OSDW, MethodObj)    // 0 Arguments
    External (UPVD, MethodObj)    // 0 Arguments
    External (R118, IntObj)
    External (R119, IntObj)
    External (R11A, IntObj)
    External (R11C, IntObj)
    External (R120, IntObj)
    External (R124, IntObj)
    External (R218, IntObj)
    External (R219, IntObj)
    External (R21A, IntObj)
    External (R21C, IntObj)
    External (R220, IntObj)
    External (R224, IntObj)
    External (R318, IntObj)
    External (R319, IntObj)
    External (R31A, IntObj)
    External (R31C, IntObj)
    External (R320, IntObj)
    External (R324, IntObj)
    External (R418, IntObj)
    External (R419, IntObj)
    External (R41A, IntObj)
    External (R41C, IntObj)
    External (R420, IntObj)
    External (R424, IntObj)
    External (R518, IntObj)
    External (R519, IntObj)
    External (R51A, IntObj)
    External (R51C, IntObj)
    External (R520, IntObj)
    External (R524, IntObj)
    External (R618, IntObj)
    External (R619, IntObj)
    External (R61A, IntObj)
    External (R61C, IntObj)
    External (R620, IntObj)
    External (R624, IntObj)
    External (RH10, IntObj)
    External (RH14, IntObj)
    External (UP04, IntObj)
    External (UP18, IntObj)
    External (UP19, IntObj)
    External (UP1A, IntObj)
    External (UP1C, IntObj)
    External (UP20, IntObj)
    External (UP24, IntObj)
    External (DP04, IntObj)
    External (DP18, IntObj)
    External (DP19, IntObj)
    External (DP1A, IntObj)
    External (DP1C, IntObj)
    External (DP20, IntObj)
    External (DP24, IntObj)
    External (D304, IntObj)
    External (D318, IntObj)
    External (D319, IntObj)
    External (D31A, IntObj)
    External (D31C, IntObj)
    External (D320, IntObj)
    External (D324, IntObj)
    External (D404, IntObj)
    External (D418, IntObj)
    External (D419, IntObj)
    External (D41A, IntObj)
    External (D41C, IntObj)
    External (D420, IntObj)
    External (D424, IntObj)
    External (D504, IntObj)
    External (D518, IntObj)
    External (D519, IntObj)
    External (D51A, IntObj)
    External (D51C, IntObj)
    External (D520, IntObj)
    External (D524, IntObj)
    External (D604, IntObj)
    External (D618, IntObj)
    External (D619, IntObj)
    External (D61A, IntObj)
    External (D61C, IntObj)
    External (D620, IntObj)
    External (D624, IntObj)
    External (NH04, IntObj)
    External (NH10, IntObj)
    External (NH14, IntObj)
    External (RPR4, MethodObj)    // 0 Arguments
    
    
    External (TBD3, FieldUnitObj)
    External (TBD4, FieldUnitObj)
    External (TBD5, FieldUnitObj)
    External (TBD6, FieldUnitObj)
    External (TBDB, FieldUnitObj)
    External (TBNH, FieldUnitObj)
    External (TBUP, FieldUnitObj)

    

    Scope (\_SB.PCI0)
    {
        Method (TGPE, 0, Serialized)
        {
            Notify (\_SB.PCI0.PEG2, 0x02) // Device Wake
        }

        Method (CMPE, 0, Serialized)
        {
            Notify (\_SB.PCI0.PEG2, 0x00) // Bus Check
        }

        Method (AMPE, 0, Serialized)
        {
            Notify (\_SB.PCI0.PEG2.UPSB.DSB0.NHI0, 0x00) // Bus Check
        }

        Method (CNHI, 0, Serialized)
        {
            UP04 = 0x07
            UP18 = R118 /* External reference */
            UP19 = R119 /* External reference */
            UP1A = R11A /* External reference */
            UP1C = R11C /* External reference */
            UP20 = R120 /* External reference */
            UP24 = R124 /* External reference */
            DP04 = 0x07
            DP18 = R218 /* External reference */
            DP19 = R219 /* External reference */
            DP1A = R21A /* External reference */
            DP1C = R21C /* External reference */
            DP20 = R220 /* External reference */
            DP24 = R224 /* External reference */
            D304 = 0x07
            D318 = R318 /* External reference */
            D319 = R319 /* External reference */
            D31A = R31A /* External reference */
            D31C = R31C /* External reference */
            D320 = R320 /* External reference */
            D324 = R324 /* External reference */
            D404 = 0x07
            D418 = R418 /* External reference */
            D419 = R419 /* External reference */
            D41A = R41A /* External reference */
            D41C = R41C /* External reference */
            D420 = R420 /* External reference */
            D424 = R424 /* External reference */
            D504 = 0x07
            D518 = R518 /* External reference */
            D519 = R519 /* External reference */
            D51A = R51A /* External reference */
            D51C = R51C /* External reference */
            D520 = R520 /* External reference */
            D524 = R524 /* External reference */
            D604 = 0x07
            D618 = R618 /* External reference */
            D619 = R619 /* External reference */
            D61A = R61A /* External reference */
            D61C = R61C /* External reference */
            D620 = R620 /* External reference */
            D624 = R624 /* External reference */
            NH04 = 0x07
            NH10 = RH10 /* External reference */
            NH14 = RH14 /* External reference */
        }

        Method (UPCK, 0, Serialized)
        {
            If (((UPVD == 0x156D8086) || (UPVD == 0x156B8086)) || (UPVD == 0x156A8086))
            {
                Return (0x01)
            }
            Else
            {
                Return (0x00)
            }
        }

        Method (ULTC, 0, Serialized)
        {
            If (RPLT == 0x00)
            {
                If (UPLT == 0x00)
                {
                    Return (0x01)
                }
            }

            Return (0x00)
        }

        Method (WTLT, 0, Serialized)
        {
            Local0 = 0x1388
            Local1 = 0x00
            While (Local0)
            {
                If (RPR4 == 0x07)
                {
                    If (\_SB.PCI0.ULTC ())
                    {
                        If (\_SB.PCI0.UPCK ())
                        {
                            Local1 = 0x01
                            Break
                        }
                    }
                }

                Sleep (0x01)
                Local0--
            }

            Return (Local1)
        }

        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (!OSDW ())
            {
                If (Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */)
                {
                    If (Arg2 == 0x05)
                    {
                        Return (0x01)
                    }
                }
            }

            Return (0x00)
        }

        Method (UTLK, 2, Serialized)
        {
            Local0 = 0x00
            If (GP23 == 0x00)
            {
                \_SB.PCI0.PEG2.PSTA = 0x00
                While (0x01)
                {
                    If (\_SB.PCI0.PEG2.LDIS == 0x01)
                    {
                        \_SB.PCI0.PEG2.LDIS = 0x00
                    }

                    GP23 = 0x01
                    Local1 = 0x00
                    Local2 = (Timer + 0x00989680)
                    While (Timer <= Local2)
                    {
                        If (\_SB.PCI0.PEG2.LACR == 0x00)
                        {
                            If (\_SB.PCI0.PEG2.LTRN != 0x01)
                            {
                                Break
                            }
                        }
                        ElseIf ((\_SB.PCI0.PEG2.LTRN != 0x01) && (\_SB.PCI0.PEG2.LACT == 0x01))
                        {
                            Break
                        }

                        Sleep (0x0A)
                    }

                    Sleep (Arg1)
                    While (Timer <= Local2)
                    {
                        If (\_SB.PCI0.PEG2.UPSB.AVND != 0xFFFFFFFF)
                        {
                            Local1 = 0x01
                            Break
                        }

                        Sleep (0x0A)
                    }

                    If (Local1 == 0x01)
                    {
                        \_SB.PCI0.PEG2.MABT = 0x01
                        Break
                    }

                    If (Local0 == 0x04)
                    {
                        Break
                    }

                    Local0++
                    GP23 = 0x00
                    Sleep (0x03E8)
                }
            }
        }

        Scope (\_SB.PCI0.PEG2)
        {
            OperationRegion (ADD8, SystemMemory, 0xE0008DD8, 0x04)
            Field (ADD8, ByteAcc, NoLock, Preserve)
            {
                FDD8,   32
            }

            Name (VDD8, 0x00)
            OperationRegion (A900, SystemMemory, 0xE0008900, 0x04)
            Field (A900, ByteAcc, NoLock, Preserve)
            {
                F900,   32
            }

            Name (V900, 0x00)
            OperationRegion (A904, SystemMemory, 0xE0008904, 0x04)
            Field (A904, ByteAcc, NoLock, Preserve)
            {
                F904,   32
            }

            Name (V904, 0x00)
            OperationRegion (A908, SystemMemory, 0xE0008908, 0x04)
            Field (A908, ByteAcc, NoLock, Preserve)
            {
                F908,   32
            }

            Name (V908, 0x00)
            OperationRegion (A90C, SystemMemory, 0xE000890C, 0x04)
            Field (A90C, ByteAcc, NoLock, Preserve)
            {
                F90C,   32
            }

            Name (V90C, 0x00)
            OperationRegion (A910, SystemMemory, 0xE0008910, 0x04)
            Field (A910, ByteAcc, NoLock, Preserve)
            {
                F910,   32
            }

            Name (V910, 0x00)
            OperationRegion (A80C, SystemMemory, 0xE000880C, 0x04)
            Field (A80C, ByteAcc, NoLock, Preserve)
            {
                F80C,   32
            }

            Name (V80C, 0x00)
            OperationRegion (A920, SystemMemory, 0xE0008920, 0x04)
            Field (A920, ByteAcc, NoLock, Preserve)
            {
                F920,   32
            }

            Name (V920, 0x00)
            OperationRegion (A924, SystemMemory, 0xE0008924, 0x04)
            Field (A924, ByteAcc, NoLock, Preserve)
            {
                F924,   32
            }

            Name (V924, 0x00)
            OperationRegion (A928, SystemMemory, 0xE0008928, 0x04)
            Field (A928, ByteAcc, NoLock, Preserve)
            {
                F928,   32
            }

            Name (V928, 0x00)
            OperationRegion (A92C, SystemMemory, 0xE000892C, 0x04)
            Field (A92C, ByteAcc, NoLock, Preserve)
            {
                F92C,   32
            }

            Name (V92C, 0x00)
            OperationRegion (A930, SystemMemory, 0xE0008930, 0x04)
            Field (A930, ByteAcc, NoLock, Preserve)
            {
                F930,   32
            }

            Name (V930, 0x00)
            OperationRegion (A82C, SystemMemory, 0xE000882C, 0x04)
            Field (A82C, ByteAcc, NoLock, Preserve)
            {
                F82C,   32
            }

            Name (V82C, 0x00)
            OperationRegion (A940, SystemMemory, 0xE0008940, 0x04)
            Field (A940, ByteAcc, NoLock, Preserve)
            {
                F940,   32
            }

            Name (V940, 0x00)
            OperationRegion (A944, SystemMemory, 0xE0008944, 0x04)
            Field (A944, ByteAcc, NoLock, Preserve)
            {
                F944,   32
            }

            Name (V944, 0x00)
            OperationRegion (A948, SystemMemory, 0xE0008948, 0x04)
            Field (A948, ByteAcc, NoLock, Preserve)
            {
                F948,   32
            }

            Name (V948, 0x00)
            OperationRegion (A94C, SystemMemory, 0xE000894C, 0x04)
            Field (A94C, ByteAcc, NoLock, Preserve)
            {
                F94C,   32
            }

            Name (V94C, 0x00)
            OperationRegion (A950, SystemMemory, 0xE0008950, 0x04)
            Field (A950, ByteAcc, NoLock, Preserve)
            {
                F950,   32
            }

            Name (V950, 0x00)
            OperationRegion (A84C, SystemMemory, 0xE000884C, 0x04)
            Field (A84C, ByteAcc, NoLock, Preserve)
            {
                F84C,   32
            }

            Name (V84C, 0x00)
            OperationRegion (A960, SystemMemory, 0xE0008960, 0x04)
            Field (A960, ByteAcc, NoLock, Preserve)
            {
                F960,   32
            }

            Name (V960, 0x00)
            OperationRegion (A964, SystemMemory, 0xE0008964, 0x04)
            Field (A964, ByteAcc, NoLock, Preserve)
            {
                F964,   32
            }

            Name (V964, 0x00)
            OperationRegion (A968, SystemMemory, 0xE0008968, 0x04)
            Field (A968, ByteAcc, NoLock, Preserve)
            {
                F968,   32
            }

            Name (V968, 0x00)
            OperationRegion (A96C, SystemMemory, 0xE000896C, 0x04)
            Field (A96C, ByteAcc, NoLock, Preserve)
            {
                F96C,   32
            }

            Name (V96C, 0x00)
            OperationRegion (A970, SystemMemory, 0xE0008970, 0x04)
            Field (A970, ByteAcc, NoLock, Preserve)
            {
                F970,   32
            }

            Name (V970, 0x00)
            OperationRegion (A86C, SystemMemory, 0xE000886C, 0x04)
            Field (A86C, ByteAcc, NoLock, Preserve)
            {
                F86C,   32
            }

            Name (V86C, 0x00)
            OperationRegion (A980, SystemMemory, 0xE0008980, 0x04)
            Field (A980, ByteAcc, NoLock, Preserve)
            {
                F980,   32
            }

            Name (V980, 0x00)
            OperationRegion (A984, SystemMemory, 0xE0008984, 0x04)
            Field (A984, ByteAcc, NoLock, Preserve)
            {
                F984,   32
            }

            Name (V984, 0x00)
            OperationRegion (A988, SystemMemory, 0xE0008988, 0x04)
            Field (A988, ByteAcc, NoLock, Preserve)
            {
                F988,   32
            }

            Name (V988, 0x00)
            OperationRegion (A98C, SystemMemory, 0xE000898C, 0x04)
            Field (A98C, ByteAcc, NoLock, Preserve)
            {
                F98C,   32
            }

            Name (V98C, 0x00)
            OperationRegion (A990, SystemMemory, 0xE0008990, 0x04)
            Field (A990, ByteAcc, NoLock, Preserve)
            {
                F990,   32
            }

            Name (V990, 0x00)
            OperationRegion (A88C, SystemMemory, 0xE000888C, 0x04)
            Field (A88C, ByteAcc, NoLock, Preserve)
            {
                F88C,   32
            }

            Name (V88C, 0x00)
            OperationRegion (A9A0, SystemMemory, 0xE00089A0, 0x04)
            Field (A9A0, ByteAcc, NoLock, Preserve)
            {
                F9A0,   32
            }

            Name (V9A0, 0x00)
            OperationRegion (A9A4, SystemMemory, 0xE00089A4, 0x04)
            Field (A9A4, ByteAcc, NoLock, Preserve)
            {
                F9A4,   32
            }

            Name (V9A4, 0x00)
            OperationRegion (A9A8, SystemMemory, 0xE00089A8, 0x04)
            Field (A9A8, ByteAcc, NoLock, Preserve)
            {
                F9A8,   32
            }

            Name (V9A8, 0x00)
            OperationRegion (A9AC, SystemMemory, 0xE00089AC, 0x04)
            Field (A9AC, ByteAcc, NoLock, Preserve)
            {
                F9AC,   32
            }

            Name (V9AC, 0x00)
            OperationRegion (A9B0, SystemMemory, 0xE00089B0, 0x04)
            Field (A9B0, ByteAcc, NoLock, Preserve)
            {
                F9B0,   32
            }

            Name (V9B0, 0x00)
            OperationRegion (A8AC, SystemMemory, 0xE00088AC, 0x04)
            Field (A8AC, ByteAcc, NoLock, Preserve)
            {
                F8AC,   32
            }

            Name (V8AC, 0x00)
            OperationRegion (A9C0, SystemMemory, 0xE00089C0, 0x04)
            Field (A9C0, ByteAcc, NoLock, Preserve)
            {
                F9C0,   32
            }

            Name (V9C0, 0x00)
            OperationRegion (A9C4, SystemMemory, 0xE00089C4, 0x04)
            Field (A9C4, ByteAcc, NoLock, Preserve)
            {
                F9C4,   32
            }

            Name (V9C4, 0x00)
            OperationRegion (A9C8, SystemMemory, 0xE00089C8, 0x04)
            Field (A9C8, ByteAcc, NoLock, Preserve)
            {
                F9C8,   32
            }

            Name (V9C8, 0x00)
            OperationRegion (A9CC, SystemMemory, 0xE00089CC, 0x04)
            Field (A9CC, ByteAcc, NoLock, Preserve)
            {
                F9CC,   32
            }

            Name (V9CC, 0x00)
            OperationRegion (A9D0, SystemMemory, 0xE00089D0, 0x04)
            Field (A9D0, ByteAcc, NoLock, Preserve)
            {
                F9D0,   32
            }

            Name (V9D0, 0x00)
            OperationRegion (A8CC, SystemMemory, 0xE00088CC, 0x04)
            Field (A8CC, ByteAcc, NoLock, Preserve)
            {
                F8CC,   32
            }

            Name (V8CC, 0x00)
            OperationRegion (A9E0, SystemMemory, 0xE00089E0, 0x04)
            Field (A9E0, ByteAcc, NoLock, Preserve)
            {
                F9E0,   32
            }

            Name (V9E0, 0x00)
            OperationRegion (A9E4, SystemMemory, 0xE00089E4, 0x04)
            Field (A9E4, ByteAcc, NoLock, Preserve)
            {
                F9E4,   32
            }

            Name (V9E4, 0x00)
            OperationRegion (A9E8, SystemMemory, 0xE00089E8, 0x04)
            Field (A9E8, ByteAcc, NoLock, Preserve)
            {
                F9E8,   32
            }

            Name (V9E8, 0x00)
            OperationRegion (A9EC, SystemMemory, 0xE00089EC, 0x04)
            Field (A9EC, ByteAcc, NoLock, Preserve)
            {
                F9EC,   32
            }

            Name (V9EC, 0x00)
            OperationRegion (A9F0, SystemMemory, 0xE00089F0, 0x04)
            Field (A9F0, ByteAcc, NoLock, Preserve)
            {
                F9F0,   32
            }

            Name (V9F0, 0x00)
            OperationRegion (A8EC, SystemMemory, 0xE00088EC, 0x04)
            Field (A8EC, ByteAcc, NoLock, Preserve)
            {
                F8EC,   32
            }

            Name (V8EC, 0x00)
            OperationRegion (AC30, SystemMemory, 0xE0008C30, 0x04)
            Field (AC30, ByteAcc, NoLock, Preserve)
            {
                FC30,   32
            }

            Name (VC30, 0x00)
            OperationRegion (AA00, SystemMemory, 0xE0008A00, 0x04)
            Field (AA00, ByteAcc, NoLock, Preserve)
            {
                FA00,   32
            }

            Name (VA00, 0x00)
            OperationRegion (AA04, SystemMemory, 0xE0008A04, 0x04)
            Field (AA04, ByteAcc, NoLock, Preserve)
            {
                FA04,   32
            }

            Name (VA04, 0x00)
            OperationRegion (AA08, SystemMemory, 0xE0008A08, 0x04)
            Field (AA08, ByteAcc, NoLock, Preserve)
            {
                FA08,   32
            }

            Name (VA08, 0x00)
            OperationRegion (AA0C, SystemMemory, 0xE0008A0C, 0x04)
            Field (AA0C, ByteAcc, NoLock, Preserve)
            {
                FA0C,   32
            }

            Name (VA0C, 0x00)
            OperationRegion (AA10, SystemMemory, 0xE0008A10, 0x04)
            Field (AA10, ByteAcc, NoLock, Preserve)
            {
                FA10,   32
            }

            Name (VA10, 0x00)
            OperationRegion (AA14, SystemMemory, 0xE0008A14, 0x04)
            Field (AA14, ByteAcc, NoLock, Preserve)
            {
                FA14,   32
            }

            Name (VA14, 0x00)
            OperationRegion (AA18, SystemMemory, 0xE0008A18, 0x04)
            Field (AA18, ByteAcc, NoLock, Preserve)
            {
                FA18,   32
            }

            Name (VA18, 0x00)
            OperationRegion (AA1C, SystemMemory, 0xE0008A1C, 0x04)
            Field (AA1C, ByteAcc, NoLock, Preserve)
            {
                FA1C,   32
            }

            Name (VA1C, 0x00)
            OperationRegion (AA20, SystemMemory, 0xE0008A20, 0x04)
            Field (AA20, ByteAcc, NoLock, Preserve)
            {
                FA20,   32
            }

            Name (VA20, 0x00)
            OperationRegion (AA24, SystemMemory, 0xE0008A24, 0x04)
            Field (AA24, ByteAcc, NoLock, Preserve)
            {
                FA24,   32
            }

            Name (VA24, 0x00)
            OperationRegion (AA28, SystemMemory, 0xE0008A28, 0x04)
            Field (AA28, ByteAcc, NoLock, Preserve)
            {
                FA28,   32
            }

            Name (VA28, 0x00)
            OperationRegion (AA2C, SystemMemory, 0xE0008A2C, 0x04)
            Field (AA2C, ByteAcc, NoLock, Preserve)
            {
                FA2C,   32
            }

            Name (VA2C, 0x00)
            OperationRegion (AA30, SystemMemory, 0xE0008A30, 0x04)
            Field (AA30, ByteAcc, NoLock, Preserve)
            {
                FA30,   32
            }

            Name (VA30, 0x00)
            OperationRegion (AA34, SystemMemory, 0xE0008A34, 0x04)
            Field (AA34, ByteAcc, NoLock, Preserve)
            {
                FA34,   32
            }

            Name (VA34, 0x00)
            OperationRegion (AA38, SystemMemory, 0xE0008A38, 0x04)
            Field (AA38, ByteAcc, NoLock, Preserve)
            {
                FA38,   32
            }

            Name (VA38, 0x00)
            OperationRegion (AA3C, SystemMemory, 0xE0008A3C, 0x04)
            Field (AA3C, ByteAcc, NoLock, Preserve)
            {
                FA3C,   32
            }

            Name (VA3C, 0x00)
            OperationRegion (AA40, SystemMemory, 0xE0008A40, 0x04)
            Field (AA40, ByteAcc, NoLock, Preserve)
            {
                FA40,   32
            }

            Name (VA40, 0x00)
            OperationRegion (AA44, SystemMemory, 0xE0008A44, 0x04)
            Field (AA44, ByteAcc, NoLock, Preserve)
            {
                FA44,   32
            }

            Name (VA44, 0x00)
            OperationRegion (AA48, SystemMemory, 0xE0008A48, 0x04)
            Field (AA48, ByteAcc, NoLock, Preserve)
            {
                FA48,   32
            }

            Name (VA48, 0x00)
            OperationRegion (AA4C, SystemMemory, 0xE0008A4C, 0x04)
            Field (AA4C, ByteAcc, NoLock, Preserve)
            {
                FA4C,   32
            }

            Name (VA4C, 0x00)
            OperationRegion (AA50, SystemMemory, 0xE0008A50, 0x04)
            Field (AA50, ByteAcc, NoLock, Preserve)
            {
                FA50,   32
            }

            Name (VA50, 0x00)
            OperationRegion (AA54, SystemMemory, 0xE0008A54, 0x04)
            Field (AA54, ByteAcc, NoLock, Preserve)
            {
                FA54,   32
            }

            Name (VA54, 0x00)
            OperationRegion (AA58, SystemMemory, 0xE0008A58, 0x04)
            Field (AA58, ByteAcc, NoLock, Preserve)
            {
                FA58,   32
            }

            Name (VA58, 0x00)
            OperationRegion (AA5C, SystemMemory, 0xE0008A5C, 0x04)
            Field (AA5C, ByteAcc, NoLock, Preserve)
            {
                FA5C,   32
            }

            Name (VA5C, 0x00)
            OperationRegion (AA60, SystemMemory, 0xE0008A60, 0x04)
            Field (AA60, ByteAcc, NoLock, Preserve)
            {
                FA60,   32
            }

            Name (VA60, 0x00)
            OperationRegion (AA64, SystemMemory, 0xE0008A64, 0x04)
            Field (AA64, ByteAcc, NoLock, Preserve)
            {
                FA64,   32
            }

            Name (VA64, 0x00)
            OperationRegion (AA68, SystemMemory, 0xE0008A68, 0x04)
            Field (AA68, ByteAcc, NoLock, Preserve)
            {
                FA68,   32
            }

            Name (VA68, 0x00)
            OperationRegion (AA6C, SystemMemory, 0xE0008A6C, 0x04)
            Field (AA6C, ByteAcc, NoLock, Preserve)
            {
                FA6C,   32
            }

            Name (VA6C, 0x00)
            OperationRegion (AA70, SystemMemory, 0xE0008A70, 0x04)
            Field (AA70, ByteAcc, NoLock, Preserve)
            {
                FA70,   32
            }

            Name (VA70, 0x00)
            OperationRegion (AA74, SystemMemory, 0xE0008A74, 0x04)
            Field (AA74, ByteAcc, NoLock, Preserve)
            {
                FA74,   32
            }

            Name (VA74, 0x00)
            OperationRegion (AA78, SystemMemory, 0xE0008A78, 0x04)
            Field (AA78, ByteAcc, NoLock, Preserve)
            {
                FA78,   32
            }

            Name (VA78, 0x00)
            OperationRegion (AA7C, SystemMemory, 0xE0008A7C, 0x04)
            Field (AA7C, ByteAcc, NoLock, Preserve)
            {
                FA7C,   32
            }

            Name (VA7C, 0x00)
            OperationRegion (AA80, SystemMemory, 0xE0008A80, 0x04)
            Field (AA80, ByteAcc, NoLock, Preserve)
            {
                FA80,   32
            }

            Name (VA80, 0x00)
            OperationRegion (AA84, SystemMemory, 0xE0008A84, 0x04)
            Field (AA84, ByteAcc, NoLock, Preserve)
            {
                FA84,   32
            }

            Name (VA84, 0x00)
            OperationRegion (AA88, SystemMemory, 0xE0008A88, 0x04)
            Field (AA88, ByteAcc, NoLock, Preserve)
            {
                FA88,   32
            }

            Name (VA88, 0x00)
            OperationRegion (AA8C, SystemMemory, 0xE0008A8C, 0x04)
            Field (AA8C, ByteAcc, NoLock, Preserve)
            {
                FA8C,   32
            }

            Name (VA8C, 0x00)
            OperationRegion (AA90, SystemMemory, 0xE0008A90, 0x04)
            Field (AA90, ByteAcc, NoLock, Preserve)
            {
                FA90,   32
            }

            Name (VA90, 0x00)
            OperationRegion (AA94, SystemMemory, 0xE0008A94, 0x04)
            Field (AA94, ByteAcc, NoLock, Preserve)
            {
                FA94,   32
            }

            Name (VA94, 0x00)
            OperationRegion (AA98, SystemMemory, 0xE0008A98, 0x04)
            Field (AA98, ByteAcc, NoLock, Preserve)
            {
                FA98,   32
            }

            Name (VA98, 0x00)
            OperationRegion (AA9C, SystemMemory, 0xE0008A9C, 0x04)
            Field (AA9C, ByteAcc, NoLock, Preserve)
            {
                FA9C,   32
            }

            Name (VA9C, 0x00)
            OperationRegion (AAA0, SystemMemory, 0xE0008AA0, 0x04)
            Field (AAA0, ByteAcc, NoLock, Preserve)
            {
                FAA0,   32
            }

            Name (VAA0, 0x00)
            OperationRegion (AAA4, SystemMemory, 0xE0008AA4, 0x04)
            Field (AAA4, ByteAcc, NoLock, Preserve)
            {
                FAA4,   32
            }

            Name (VAA4, 0x00)
            OperationRegion (AAA8, SystemMemory, 0xE0008AA8, 0x04)
            Field (AAA8, ByteAcc, NoLock, Preserve)
            {
                FAA8,   32
            }

            Name (VAA8, 0x00)
            OperationRegion (AAAC, SystemMemory, 0xE0008AAC, 0x04)
            Field (AAAC, ByteAcc, NoLock, Preserve)
            {
                FAAC,   32
            }

            Name (VAAC, 0x00)
            OperationRegion (AAB0, SystemMemory, 0xE0008AB0, 0x04)
            Field (AAB0, ByteAcc, NoLock, Preserve)
            {
                FAB0,   32
            }

            Name (VAB0, 0x00)
            OperationRegion (AAB4, SystemMemory, 0xE0008AB4, 0x04)
            Field (AAB4, ByteAcc, NoLock, Preserve)
            {
                FAB4,   32
            }

            Name (VAB4, 0x00)
            OperationRegion (AAB8, SystemMemory, 0xE0008AB8, 0x04)
            Field (AAB8, ByteAcc, NoLock, Preserve)
            {
                FAB8,   32
            }

            Name (VAB8, 0x00)
            OperationRegion (AABC, SystemMemory, 0xE0008ABC, 0x04)
            Field (AABC, ByteAcc, NoLock, Preserve)
            {
                FABC,   32
            }

            Name (VABC, 0x00)
            OperationRegion (AAC0, SystemMemory, 0xE0008AC0, 0x04)
            Field (AAC0, ByteAcc, NoLock, Preserve)
            {
                FAC0,   32
            }

            Name (VAC0, 0x00)
            OperationRegion (AAC4, SystemMemory, 0xE0008AC4, 0x04)
            Field (AAC4, ByteAcc, NoLock, Preserve)
            {
                FAC4,   32
            }

            Name (VAC4, 0x00)
            OperationRegion (AAC8, SystemMemory, 0xE0008AC8, 0x04)
            Field (AAC8, ByteAcc, NoLock, Preserve)
            {
                FAC8,   32
            }

            Name (VAC8, 0x00)
            OperationRegion (AACC, SystemMemory, 0xE0008ACC, 0x04)
            Field (AACC, ByteAcc, NoLock, Preserve)
            {
                FACC,   32
            }

            Name (VACC, 0x00)
            OperationRegion (AAD0, SystemMemory, 0xE0008AD0, 0x04)
            Field (AAD0, ByteAcc, NoLock, Preserve)
            {
                FAD0,   32
            }

            Name (VAD0, 0x00)
            OperationRegion (AAD4, SystemMemory, 0xE0008AD4, 0x04)
            Field (AAD4, ByteAcc, NoLock, Preserve)
            {
                FAD4,   32
            }

            Name (VAD4, 0x00)
            OperationRegion (AAD8, SystemMemory, 0xE0008AD8, 0x04)
            Field (AAD8, ByteAcc, NoLock, Preserve)
            {
                FAD8,   32
            }

            Name (VAD8, 0x00)
            OperationRegion (AADC, SystemMemory, 0xE0008ADC, 0x04)
            Field (AADC, ByteAcc, NoLock, Preserve)
            {
                FADC,   32
            }

            Name (VADC, 0x00)
            OperationRegion (AAE0, SystemMemory, 0xE0008AE0, 0x04)
            Field (AAE0, ByteAcc, NoLock, Preserve)
            {
                FAE0,   32
            }

            Name (VAE0, 0x00)
            OperationRegion (AAE4, SystemMemory, 0xE0008AE4, 0x04)
            Field (AAE4, ByteAcc, NoLock, Preserve)
            {
                FAE4,   32
            }

            Name (VAE4, 0x00)
            OperationRegion (AAE8, SystemMemory, 0xE0008AE8, 0x04)
            Field (AAE8, ByteAcc, NoLock, Preserve)
            {
                FAE8,   32
            }

            Name (VAE8, 0x00)
            OperationRegion (AAEC, SystemMemory, 0xE0008AEC, 0x04)
            Field (AAEC, ByteAcc, NoLock, Preserve)
            {
                FAEC,   32
            }

            Name (VAEC, 0x00)
            OperationRegion (AAF0, SystemMemory, 0xE0008AF0, 0x04)
            Field (AAF0, ByteAcc, NoLock, Preserve)
            {
                FAF0,   32
            }

            Name (VAF0, 0x00)
            OperationRegion (AAF4, SystemMemory, 0xE0008AF4, 0x04)
            Field (AAF4, ByteAcc, NoLock, Preserve)
            {
                FAF4,   32
            }

            Name (VAF4, 0x00)
            OperationRegion (AAF8, SystemMemory, 0xE0008AF8, 0x04)
            Field (AAF8, ByteAcc, NoLock, Preserve)
            {
                FAF8,   32
            }

            Name (VAF8, 0x00)
            OperationRegion (AAFC, SystemMemory, 0xE0008AFC, 0x04)
            Field (AAFC, ByteAcc, NoLock, Preserve)
            {
                FAFC,   32
            }

            Name (VAFC, 0x00)
            OperationRegion (A918, SystemMemory, 0xE0008918, 0x04)
            Field (A918, ByteAcc, NoLock, Preserve)
            {
                F918,   32
            }

            Name (V918, 0x00)
            OperationRegion (A938, SystemMemory, 0xE0008938, 0x04)
            Field (A938, ByteAcc, NoLock, Preserve)
            {
                F938,   32
            }

            Name (V938, 0x00)
            OperationRegion (A958, SystemMemory, 0xE0008958, 0x04)
            Field (A958, ByteAcc, NoLock, Preserve)
            {
                F958,   32
            }

            Name (V958, 0x00)
            OperationRegion (A978, SystemMemory, 0xE0008978, 0x04)
            Field (A978, ByteAcc, NoLock, Preserve)
            {
                F978,   32
            }

            Name (V978, 0x00)
            OperationRegion (A998, SystemMemory, 0xE0008998, 0x04)
            Field (A998, ByteAcc, NoLock, Preserve)
            {
                F998,   32
            }

            Name (V998, 0x00)
            OperationRegion (A9B8, SystemMemory, 0xE00089B8, 0x04)
            Field (A9B8, ByteAcc, NoLock, Preserve)
            {
                F9B8,   32
            }

            Name (V9B8, 0x00)
            OperationRegion (A9D8, SystemMemory, 0xE00089D8, 0x04)
            Field (A9D8, ByteAcc, NoLock, Preserve)
            {
                F9D8,   32
            }

            Name (V9D8, 0x00)
            OperationRegion (A9F8, SystemMemory, 0xE00089F8, 0x04)
            Field (A9F8, ByteAcc, NoLock, Preserve)
            {
                F9F8,   32
            }

            Name (V9F8, 0x00)
            OperationRegion (A224, SystemMemory, 0xE0008224, 0x04)
            Field (A224, ByteAcc, NoLock, Preserve)
            {
                F224,   32
            }

            Name (V224, 0x00)
            OperationRegion (B224, SystemMemory, 0xE0009224, 0x04)
            Field (B224, ByteAcc, NoLock, Preserve)
            {
                G224,   32
            }

            Name (Y224, 0x00)
            OperationRegion (A1F8, SystemMemory, 0xE00081F8, 0x04)
            Field (A1F8, ByteAcc, NoLock, Preserve)
            {
                F1F8,   32
            }

            Name (V1F8, 0x00)
            OperationRegion (B1F8, SystemMemory, 0xE00091F8, 0x04)
            Field (B1F8, ByteAcc, NoLock, Preserve)
            {
                G1F8,   32
            }

            Name (Y1F8, 0x00)
            OperationRegion (A260, SystemMemory, 0xE0008260, 0x04)
            Field (A260, ByteAcc, NoLock, Preserve)
            {
                F260,   32
            }

            Name (V260, 0x00)
            OperationRegion (B260, SystemMemory, 0xE0009260, 0x04)
            Field (B260, ByteAcc, NoLock, Preserve)
            {
                G260,   32
            }

            Name (Y260, 0x00)
            OperationRegion (AC28, SystemMemory, 0xE0008C28, 0x04)
            Field (AC28, ByteAcc, NoLock, Preserve)
            {
                FC28,   32
            }

            Name (VC28, 0x00)
            OperationRegion (BC28, SystemMemory, 0xE0009C28, 0x04)
            Field (BC28, ByteAcc, NoLock, Preserve)
            {
                GC28,   32
            }

            Name (YC28, 0x00)
            OperationRegion (AC38, SystemMemory, 0xE0008C38, 0x04)
            Field (AC38, ByteAcc, NoLock, Preserve)
            {
                FC38,   32
            }

            Name (VC38, 0x00)
            OperationRegion (BC38, SystemMemory, 0xE0009C38, 0x04)
            Field (BC38, ByteAcc, NoLock, Preserve)
            {
                GC38,   32
            }

            Name (YC38, 0x00)
            OperationRegion (AD14, SystemMemory, 0xE0008D14, 0x04)
            Field (AD14, ByteAcc, NoLock, Preserve)
            {
                FD14,   32
            }

            Name (VD14, 0x00)
            OperationRegion (BD14, SystemMemory, 0xE0009D14, 0x04)
            Field (BD14, ByteAcc, NoLock, Preserve)
            {
                GD14,   32
            }

            Name (YD14, 0x00)
            OperationRegion (A004, SystemMemory, 0xE0008004, 0x02)
            Field (A004, ByteAcc, NoLock, Preserve)
            {
                F004,   16
            }

            Name (V004, 0x00)
            OperationRegion (B004, SystemMemory, 0xE0009004, 0x02)
            Field (B004, ByteAcc, NoLock, Preserve)
            {
                G004,   16
            }

            Name (Y004, 0x00)
            OperationRegion (A00C, SystemMemory, 0xE000800C, 0x01)
            Field (A00C, ByteAcc, NoLock, Preserve)
            {
                F00C,   8
            }

            Name (V00C, 0x00)
            OperationRegion (B00C, SystemMemory, 0xE000900C, 0x01)
            Field (B00C, ByteAcc, NoLock, Preserve)
            {
                G00C,   8
            }

            Name (Y00C, 0x00)
            OperationRegion (A019, SystemMemory, 0xE0008019, 0x01)
            Field (A019, ByteAcc, NoLock, Preserve)
            {
                F019,   8
            }

            Name (V019, 0x00)
            OperationRegion (B019, SystemMemory, 0xE0009019, 0x01)
            Field (B019, ByteAcc, NoLock, Preserve)
            {
                G019,   8
            }

            Name (Y019, 0x00)
            OperationRegion (A01A, SystemMemory, 0xE000801A, 0x01)
            Field (A01A, ByteAcc, NoLock, Preserve)
            {
                F01A,   8
            }

            Name (V01A, 0x00)
            OperationRegion (B01A, SystemMemory, 0xE000901A, 0x01)
            Field (B01A, ByteAcc, NoLock, Preserve)
            {
                G01A,   8
            }

            Name (Y01A, 0x00)
            OperationRegion (A01C, SystemMemory, 0xE000801C, 0x01)
            Field (A01C, ByteAcc, NoLock, Preserve)
            {
                F01C,   8
            }

            Name (V01C, 0x00)
            OperationRegion (B01C, SystemMemory, 0xE000901C, 0x01)
            Field (B01C, ByteAcc, NoLock, Preserve)
            {
                G01C,   8
            }

            Name (Y01C, 0x00)
            OperationRegion (A01D, SystemMemory, 0xE000801D, 0x01)
            Field (A01D, ByteAcc, NoLock, Preserve)
            {
                F01D,   8
            }

            Name (V01D, 0x00)
            OperationRegion (B01D, SystemMemory, 0xE000901D, 0x01)
            Field (B01D, ByteAcc, NoLock, Preserve)
            {
                G01D,   8
            }

            Name (Y01D, 0x00)
            OperationRegion (A020, SystemMemory, 0xE0008020, 0x02)
            Field (A020, ByteAcc, NoLock, Preserve)
            {
                F020,   16
            }

            Name (V020, 0x00)
            OperationRegion (B020, SystemMemory, 0xE0009020, 0x02)
            Field (B020, ByteAcc, NoLock, Preserve)
            {
                G020,   16
            }

            Name (Y020, 0x00)
            OperationRegion (A022, SystemMemory, 0xE0008022, 0x02)
            Field (A022, ByteAcc, NoLock, Preserve)
            {
                F022,   16
            }

            Name (V022, 0x00)
            OperationRegion (B022, SystemMemory, 0xE0009022, 0x02)
            Field (B022, ByteAcc, NoLock, Preserve)
            {
                G022,   16
            }

            Name (Y022, 0x00)
            OperationRegion (A024, SystemMemory, 0xE0008024, 0x02)
            Field (A024, ByteAcc, NoLock, Preserve)
            {
                F024,   16
            }

            Name (V024, 0x00)
            OperationRegion (B024, SystemMemory, 0xE0009024, 0x02)
            Field (B024, ByteAcc, NoLock, Preserve)
            {
                G024,   16
            }

            Name (Y024, 0x00)
            OperationRegion (A026, SystemMemory, 0xE0008026, 0x02)
            Field (A026, ByteAcc, NoLock, Preserve)
            {
                F026,   16
            }

            Name (V026, 0x00)
            OperationRegion (B026, SystemMemory, 0xE0009026, 0x02)
            Field (B026, ByteAcc, NoLock, Preserve)
            {
                G026,   16
            }

            Name (Y026, 0x00)
            OperationRegion (A028, SystemMemory, 0xE0008028, 0x04)
            Field (A028, ByteAcc, NoLock, Preserve)
            {
                F028,   32
            }

            Name (V028, 0x00)
            OperationRegion (B028, SystemMemory, 0xE0009028, 0x04)
            Field (B028, ByteAcc, NoLock, Preserve)
            {
                G028,   32
            }

            Name (Y028, 0x00)
            OperationRegion (A02C, SystemMemory, 0xE000802C, 0x04)
            Field (A02C, ByteAcc, NoLock, Preserve)
            {
                F02C,   32
            }

            Name (V02C, 0x00)
            OperationRegion (B02C, SystemMemory, 0xE000902C, 0x04)
            Field (B02C, ByteAcc, NoLock, Preserve)
            {
                G02C,   32
            }

            Name (Y02C, 0x00)
            OperationRegion (A03C, SystemMemory, 0xE000803C, 0x01)
            Field (A03C, ByteAcc, NoLock, Preserve)
            {
                F03C,   8
            }

            Name (V03C, 0x00)
            OperationRegion (B03C, SystemMemory, 0xE000903C, 0x01)
            Field (B03C, ByteAcc, NoLock, Preserve)
            {
                G03C,   8
            }

            Name (Y03C, 0x00)
            OperationRegion (A03D, SystemMemory, 0xE000803D, 0x01)
            Field (A03D, ByteAcc, NoLock, Preserve)
            {
                F03D,   8
            }

            Name (V03D, 0x00)
            OperationRegion (B03D, SystemMemory, 0xE000903D, 0x01)
            Field (B03D, ByteAcc, NoLock, Preserve)
            {
                G03D,   8
            }

            Name (Y03D, 0x00)
            OperationRegion (A03E, SystemMemory, 0xE000803E, 0x02)
            Field (A03E, ByteAcc, NoLock, Preserve)
            {
                F03E,   16
            }

            Name (V03E, 0x00)
            OperationRegion (B03E, SystemMemory, 0xE000903E, 0x02)
            Field (B03E, ByteAcc, NoLock, Preserve)
            {
                G03E,   16
            }

            Name (Y03E, 0x00)
            OperationRegion (A084, SystemMemory, 0xE0008084, 0x04)
            Field (A084, ByteAcc, NoLock, Preserve)
            {
                F084,   32
            }

            Name (V084, 0x00)
            OperationRegion (B084, SystemMemory, 0xE0009084, 0x04)
            Field (B084, ByteAcc, NoLock, Preserve)
            {
                G084,   32
            }

            Name (Y084, 0x00)
            OperationRegion (A08C, SystemMemory, 0xE000808C, 0x04)
            Field (A08C, ByteAcc, NoLock, Preserve)
            {
                F08C,   32
            }

            Name (V08C, 0x00)
            OperationRegion (B08C, SystemMemory, 0xE000908C, 0x04)
            Field (B08C, ByteAcc, NoLock, Preserve)
            {
                G08C,   32
            }

            Name (Y08C, 0x00)
            OperationRegion (A092, SystemMemory, 0xE0008092, 0x02)
            Field (A092, ByteAcc, NoLock, Preserve)
            {
                F092,   16
            }

            Name (V092, 0x00)
            OperationRegion (B092, SystemMemory, 0xE0009092, 0x02)
            Field (B092, ByteAcc, NoLock, Preserve)
            {
                G092,   16
            }

            Name (Y092, 0x00)
            OperationRegion (A094, SystemMemory, 0xE0008094, 0x04)
            Field (A094, ByteAcc, NoLock, Preserve)
            {
                F094,   32
            }

            Name (V094, 0x00)
            OperationRegion (B094, SystemMemory, 0xE0009094, 0x04)
            Field (B094, ByteAcc, NoLock, Preserve)
            {
                G094,   32
            }

            Name (Y094, 0x00)
            OperationRegion (A098, SystemMemory, 0xE0008098, 0x02)
            Field (A098, ByteAcc, NoLock, Preserve)
            {
                F098,   16
            }

            Name (V098, 0x00)
            OperationRegion (B098, SystemMemory, 0xE0009098, 0x02)
            Field (B098, ByteAcc, NoLock, Preserve)
            {
                G098,   16
            }

            Name (Y098, 0x00)
            OperationRegion (A0A2, SystemMemory, 0xE00080A2, 0x02)
            Field (A0A2, ByteAcc, NoLock, Preserve)
            {
                F0A2,   16
            }

            Name (V0A2, 0x00)
            OperationRegion (B0A2, SystemMemory, 0xE00090A2, 0x02)
            Field (B0A2, ByteAcc, NoLock, Preserve)
            {
                G0A2,   16
            }

            Name (Y0A2, 0x00)
            OperationRegion (A0A8, SystemMemory, 0xE00080A8, 0x02)
            Field (A0A8, ByteAcc, NoLock, Preserve)
            {
                F0A8,   16
            }

            Name (V0A8, 0x00)
            OperationRegion (B0A8, SystemMemory, 0xE00090A8, 0x02)
            Field (B0A8, ByteAcc, NoLock, Preserve)
            {
                G0A8,   16
            }

            Name (Y0A8, 0x00)
            OperationRegion (A0AC, SystemMemory, 0xE00080AC, 0x02)
            Field (A0AC, ByteAcc, NoLock, Preserve)
            {
                F0AC,   16
            }

            Name (V0AC, 0x00)
            OperationRegion (B0AC, SystemMemory, 0xE00090AC, 0x02)
            Field (B0AC, ByteAcc, NoLock, Preserve)
            {
                G0AC,   16
            }

            Name (Y0AC, 0x00)
            OperationRegion (A0B0, SystemMemory, 0xE00080B0, 0x02)
            Field (A0B0, ByteAcc, NoLock, Preserve)
            {
                F0B0,   16
            }

            Name (V0B0, 0x00)
            OperationRegion (B0B0, SystemMemory, 0xE00090B0, 0x02)
            Field (B0B0, ByteAcc, NoLock, Preserve)
            {
                G0B0,   16
            }

            Name (Y0B0, 0x00)
            OperationRegion (A0B4, SystemMemory, 0xE00080B4, 0x04)
            Field (A0B4, ByteAcc, NoLock, Preserve)
            {
                F0B4,   32
            }

            Name (V0B4, 0x00)
            OperationRegion (B0B4, SystemMemory, 0xE00090B4, 0x04)
            Field (B0B4, ByteAcc, NoLock, Preserve)
            {
                G0B4,   32
            }

            Name (Y0B4, 0x00)
            OperationRegion (A0BC, SystemMemory, 0xE00080BC, 0x02)
            Field (A0BC, ByteAcc, NoLock, Preserve)
            {
                F0BC,   16
            }

            Name (V0BC, 0x00)
            OperationRegion (B0BC, SystemMemory, 0xE00090BC, 0x02)
            Field (B0BC, ByteAcc, NoLock, Preserve)
            {
                G0BC,   16
            }

            Name (Y0BC, 0x00)
            OperationRegion (A0C8, SystemMemory, 0xE00080C8, 0x02)
            Field (A0C8, ByteAcc, NoLock, Preserve)
            {
                F0C8,   16
            }

            Name (V0C8, 0x00)
            OperationRegion (B0C8, SystemMemory, 0xE00090C8, 0x02)
            Field (B0C8, ByteAcc, NoLock, Preserve)
            {
                G0C8,   16
            }

            Name (Y0C8, 0x00)
            OperationRegion (A0D0, SystemMemory, 0xE00080D0, 0x02)
            Field (A0D0, ByteAcc, NoLock, Preserve)
            {
                F0D0,   16
            }

            Name (V0D0, 0x00)
            OperationRegion (B0D0, SystemMemory, 0xE00090D0, 0x02)
            Field (B0D0, ByteAcc, NoLock, Preserve)
            {
                G0D0,   16
            }

            Name (Y0D0, 0x00)
            OperationRegion (A0EC, SystemMemory, 0xE00080EC, 0x04)
            Field (A0EC, ByteAcc, NoLock, Preserve)
            {
                F0EC,   32
            }

            Name (V0EC, 0x00)
            OperationRegion (B0EC, SystemMemory, 0xE00090EC, 0x04)
            Field (B0EC, ByteAcc, NoLock, Preserve)
            {
                G0EC,   32
            }

            Name (Y0EC, 0x00)
            OperationRegion (A114, SystemMemory, 0xE0008114, 0x04)
            Field (A114, ByteAcc, NoLock, Preserve)
            {
                F114,   32
            }

            Name (V114, 0x00)
            OperationRegion (B114, SystemMemory, 0xE0009114, 0x04)
            Field (B114, ByteAcc, NoLock, Preserve)
            {
                G114,   32
            }

            Name (Y114, 0x00)
            OperationRegion (A144, SystemMemory, 0xE0008144, 0x04)
            Field (A144, ByteAcc, NoLock, Preserve)
            {
                F144,   32
            }

            Name (V144, 0x00)
            OperationRegion (B144, SystemMemory, 0xE0009144, 0x04)
            Field (B144, ByteAcc, NoLock, Preserve)
            {
                G144,   32
            }

            Name (Y144, 0x00)
            OperationRegion (A150, SystemMemory, 0xE0008150, 0x04)
            Field (A150, ByteAcc, NoLock, Preserve)
            {
                F150,   32
            }

            Name (V150, 0x00)
            OperationRegion (B150, SystemMemory, 0xE0009150, 0x04)
            Field (B150, ByteAcc, NoLock, Preserve)
            {
                G150,   32
            }

            Name (Y150, 0x00)
            OperationRegion (A158, SystemMemory, 0xE0008158, 0x04)
            Field (A158, ByteAcc, NoLock, Preserve)
            {
                F158,   32
            }

            Name (V158, 0x00)
            OperationRegion (B158, SystemMemory, 0xE0009158, 0x04)
            Field (B158, ByteAcc, NoLock, Preserve)
            {
                G158,   32
            }

            Name (Y158, 0x00)
            OperationRegion (A15C, SystemMemory, 0xE000815C, 0x04)
            Field (A15C, ByteAcc, NoLock, Preserve)
            {
                F15C,   32
            }

            Name (V15C, 0x00)
            OperationRegion (B15C, SystemMemory, 0xE000915C, 0x04)
            Field (B15C, ByteAcc, NoLock, Preserve)
            {
                G15C,   32
            }

            Name (Y15C, 0x00)
            OperationRegion (A1CC, SystemMemory, 0xE00081CC, 0x04)
            Field (A1CC, ByteAcc, NoLock, Preserve)
            {
                F1CC,   32
            }

            Name (V1CC, 0x00)
            OperationRegion (B1CC, SystemMemory, 0xE00091CC, 0x04)
            Field (B1CC, ByteAcc, NoLock, Preserve)
            {
                G1CC,   32
            }

            Name (Y1CC, 0x00)
            OperationRegion (A1FC, SystemMemory, 0xE00081FC, 0x04)
            Field (A1FC, ByteAcc, NoLock, Preserve)
            {
                F1FC,   32
            }

            Name (V1FC, 0x00)
            OperationRegion (B1FC, SystemMemory, 0xE00091FC, 0x04)
            Field (B1FC, ByteAcc, NoLock, Preserve)
            {
                G1FC,   32
            }

            Name (Y1FC, 0x00)
            OperationRegion (A200, SystemMemory, 0xE0008200, 0x04)
            Field (A200, ByteAcc, NoLock, Preserve)
            {
                F200,   32
            }

            Name (V200, 0x00)
            OperationRegion (B200, SystemMemory, 0xE0009200, 0x04)
            Field (B200, ByteAcc, NoLock, Preserve)
            {
                G200,   32
            }

            Name (Y200, 0x00)
            OperationRegion (A204, SystemMemory, 0xE0008204, 0x04)
            Field (A204, ByteAcc, NoLock, Preserve)
            {
                F204,   32
            }

            Name (V204, 0x00)
            OperationRegion (B204, SystemMemory, 0xE0009204, 0x04)
            Field (B204, ByteAcc, NoLock, Preserve)
            {
                G204,   32
            }

            Name (Y204, 0x00)
            OperationRegion (A208, SystemMemory, 0xE0008208, 0x04)
            Field (A208, ByteAcc, NoLock, Preserve)
            {
                F208,   32
            }

            Name (V208, 0x00)
            OperationRegion (B208, SystemMemory, 0xE0009208, 0x04)
            Field (B208, ByteAcc, NoLock, Preserve)
            {
                G208,   32
            }

            Name (Y208, 0x00)
            OperationRegion (A228, SystemMemory, 0xE0008228, 0x04)
            Field (A228, ByteAcc, NoLock, Preserve)
            {
                F228,   32
            }

            Name (V228, 0x00)
            OperationRegion (B228, SystemMemory, 0xE0009228, 0x04)
            Field (B228, ByteAcc, NoLock, Preserve)
            {
                G228,   32
            }

            Name (Y228, 0x00)
            OperationRegion (A22C, SystemMemory, 0xE000822C, 0x04)
            Field (A22C, ByteAcc, NoLock, Preserve)
            {
                F22C,   32
            }

            Name (V22C, 0x00)
            OperationRegion (B22C, SystemMemory, 0xE000922C, 0x04)
            Field (B22C, ByteAcc, NoLock, Preserve)
            {
                G22C,   32
            }

            Name (Y22C, 0x00)
            OperationRegion (A238, SystemMemory, 0xE0008238, 0x04)
            Field (A238, ByteAcc, NoLock, Preserve)
            {
                F238,   32
            }

            Name (V238, 0x00)
            OperationRegion (B238, SystemMemory, 0xE0009238, 0x04)
            Field (B238, ByteAcc, NoLock, Preserve)
            {
                G238,   32
            }

            Name (Y238, 0x00)
            OperationRegion (A240, SystemMemory, 0xE0008240, 0x04)
            Field (A240, ByteAcc, NoLock, Preserve)
            {
                F240,   32
            }

            Name (V240, 0x00)
            OperationRegion (B240, SystemMemory, 0xE0009240, 0x04)
            Field (B240, ByteAcc, NoLock, Preserve)
            {
                G240,   32
            }

            Name (Y240, 0x00)
            OperationRegion (A244, SystemMemory, 0xE0008244, 0x04)
            Field (A244, ByteAcc, NoLock, Preserve)
            {
                F244,   32
            }

            Name (V244, 0x00)
            OperationRegion (B244, SystemMemory, 0xE0009244, 0x04)
            Field (B244, ByteAcc, NoLock, Preserve)
            {
                G244,   32
            }

            Name (Y244, 0x00)
            OperationRegion (A250, SystemMemory, 0xE0008250, 0x04)
            Field (A250, ByteAcc, NoLock, Preserve)
            {
                F250,   32
            }

            Name (V250, 0x00)
            OperationRegion (B250, SystemMemory, 0xE0009250, 0x04)
            Field (B250, ByteAcc, NoLock, Preserve)
            {
                G250,   32
            }

            Name (Y250, 0x00)
            OperationRegion (A258, SystemMemory, 0xE0008258, 0x04)
            Field (A258, ByteAcc, NoLock, Preserve)
            {
                F258,   32
            }

            Name (V258, 0x00)
            OperationRegion (B258, SystemMemory, 0xE0009258, 0x04)
            Field (B258, ByteAcc, NoLock, Preserve)
            {
                G258,   32
            }

            Name (Y258, 0x00)
            OperationRegion (A25C, SystemMemory, 0xE000825C, 0x04)
            Field (A25C, ByteAcc, NoLock, Preserve)
            {
                F25C,   32
            }

            Name (V25C, 0x00)
            OperationRegion (B25C, SystemMemory, 0xE000925C, 0x04)
            Field (B25C, ByteAcc, NoLock, Preserve)
            {
                G25C,   32
            }

            Name (Y25C, 0x00)
            OperationRegion (ACD0, SystemMemory, 0xE0008CD0, 0x04)
            Field (ACD0, ByteAcc, NoLock, Preserve)
            {
                FCD0,   32
            }

            Name (VCD0, 0x00)
            OperationRegion (BCD0, SystemMemory, 0xE0009CD0, 0x04)
            Field (BCD0, ByteAcc, NoLock, Preserve)
            {
                GCD0,   32
            }

            Name (YCD0, 0x00)
            OperationRegion (AD34, SystemMemory, 0xE0008D34, 0x04)
            Field (AD34, ByteAcc, NoLock, Preserve)
            {
                FD34,   32
            }

            Name (VD34, 0x00)
            OperationRegion (BD34, SystemMemory, 0xE0009D34, 0x04)
            Field (BD34, ByteAcc, NoLock, Preserve)
            {
                GD34,   32
            }

            Name (YD34, 0x00)
            OperationRegion (AD94, SystemMemory, 0xE0008D94, 0x04)
            Field (AD94, ByteAcc, NoLock, Preserve)
            {
                FD94,   32
            }

            Name (VD94, 0x00)
            OperationRegion (BD94, SystemMemory, 0xE0009D94, 0x04)
            Field (BD94, ByteAcc, NoLock, Preserve)
            {
                GD94,   32
            }

            Name (YD94, 0x00)
            OperationRegion (AD98, SystemMemory, 0xE0008D98, 0x04)
            Field (AD98, ByteAcc, NoLock, Preserve)
            {
                FD98,   32
            }

            Name (VD98, 0x00)
            OperationRegion (BD98, SystemMemory, 0xE0009D98, 0x04)
            Field (BD98, ByteAcc, NoLock, Preserve)
            {
                GD98,   32
            }

            Name (YD98, 0x00)
            OperationRegion (A0F4, SystemMemory, 0xE00080F4, 0x04)
            Field (A0F4, ByteAcc, NoLock, Preserve)
            {
                F0F4,   32
            }

            Name (V0F4, 0x00)
            OperationRegion (B0F4, SystemMemory, 0xE00090F4, 0x04)
            Field (B0F4, ByteAcc, NoLock, Preserve)
            {
                G0F4,   32
            }

            Name (Y0F4, 0x00)
            OperationRegion (ADA0, SystemMemory, 0xE0008DA0, 0x04)
            Field (ADA0, ByteAcc, NoLock, Preserve)
            {
                FDA0,   32
            }

            Name (VDA0, 0x00)
            OperationRegion (BDA0, SystemMemory, 0xE0009DA0, 0x04)
            Field (BDA0, ByteAcc, NoLock, Preserve)
            {
                GDA0,   32
            }

            Name (YDA0, 0x00)
            OperationRegion (ADA4, SystemMemory, 0xE0008DA4, 0x04)
            Field (ADA4, ByteAcc, NoLock, Preserve)
            {
                FDA4,   32
            }

            Name (VDA4, 0x00)
            OperationRegion (BDA4, SystemMemory, 0xE0009DA4, 0x04)
            Field (BDA4, ByteAcc, NoLock, Preserve)
            {
                GDA4,   32
            }

            Name (YDA4, 0x00)
            OperationRegion (ADA8, SystemMemory, 0xE0008DA8, 0x04)
            Field (ADA8, ByteAcc, NoLock, Preserve)
            {
                FDA8,   32
            }

            Name (VDA8, 0x00)
            OperationRegion (BDA8, SystemMemory, 0xE0009DA8, 0x04)
            Field (BDA8, ByteAcc, NoLock, Preserve)
            {
                GDA8,   32
            }

            Name (YDA8, 0x00)
            OperationRegion (ADAC, SystemMemory, 0xE0008DAC, 0x04)
            Field (ADAC, ByteAcc, NoLock, Preserve)
            {
                FDAC,   32
            }

            Name (VDAC, 0x00)
            OperationRegion (BDAC, SystemMemory, 0xE0009DAC, 0x04)
            Field (BDAC, ByteAcc, NoLock, Preserve)
            {
                GDAC,   32
            }

            Name (YDAC, 0x00)
            OperationRegion (ADB0, SystemMemory, 0xE0008DB0, 0x04)
            Field (ADB0, ByteAcc, NoLock, Preserve)
            {
                FDB0,   32
            }

            Name (VDB0, 0x00)
            OperationRegion (BDB0, SystemMemory, 0xE0009DB0, 0x04)
            Field (BDB0, ByteAcc, NoLock, Preserve)
            {
                GDB0,   32
            }

            Name (YDB0, 0x00)
            OperationRegion (ADB4, SystemMemory, 0xE0008DB4, 0x04)
            Field (ADB4, ByteAcc, NoLock, Preserve)
            {
                FDB4,   32
            }

            Name (VDB4, 0x00)
            OperationRegion (BDB4, SystemMemory, 0xE0009DB4, 0x04)
            Field (BDB4, ByteAcc, NoLock, Preserve)
            {
                GDB4,   32
            }

            Name (YDB4, 0x00)
            OperationRegion (ADB8, SystemMemory, 0xE0008DB8, 0x04)
            Field (ADB8, ByteAcc, NoLock, Preserve)
            {
                FDB8,   32
            }

            Name (VDB8, 0x00)
            OperationRegion (BDB8, SystemMemory, 0xE0009DB8, 0x04)
            Field (BDB8, ByteAcc, NoLock, Preserve)
            {
                GDB8,   32
            }

            Name (YDB8, 0x00)
            OperationRegion (ADBC, SystemMemory, 0xE0008DBC, 0x04)
            Field (ADBC, ByteAcc, NoLock, Preserve)
            {
                FDBC,   32
            }

            Name (VDBC, 0x00)
            OperationRegion (BDBC, SystemMemory, 0xE0009DBC, 0x04)
            Field (BDBC, ByteAcc, NoLock, Preserve)
            {
                GDBC,   32
            }

            Name (YDBC, 0x00)
            OperationRegion (ALCT, SystemMemory, 0xE00080B0, 0x02)
            Field (ALCT, ByteAcc, NoLock, Preserve)
            {
                    ,   4, 
                FLDS,   1, 
                Offset (0x02)
            }

            OperationRegion (BLCT, SystemMemory, 0xE00090B0, 0x02)
            Field (BLCT, ByteAcc, NoLock, Preserve)
            {
                    ,   4, 
                GLDS,   1, 
                Offset (0x02)
            }

            OperationRegion (ALST, SystemMemory, 0xE00080B2, 0x02)
            Field (ALST, ByteAcc, NoLock, Preserve)
            {
                    ,   4, 
                    ,   7, 
                FLTR,   1, 
                    ,   1, 
                FLAC,   1, 
                Offset (0x02)
            }

            OperationRegion (BLST, SystemMemory, 0xE00090B2, 0x02)
            Field (BLST, ByteAcc, NoLock, Preserve)
            {
                    ,   4, 
                    ,   7, 
                GLTR,   1, 
                    ,   1, 
                GLAC,   1, 
                Offset (0x02)
            }

            OperationRegion (A214, SystemMemory, 0xE0008214, 0x04)
            Field (A214, ByteAcc, NoLock, Preserve)
            {
                Offset (0x02), 
                F214,   4, 
                Offset (0x04)
            }

            Name (V214, 0x00)
            OperationRegion (B214, SystemMemory, 0xE0009214, 0x04)
            Field (B214, ByteAcc, NoLock, Preserve)
            {
                Offset (0x02), 
                G214,   4, 
                Offset (0x04)
            }

            Name (Y214, 0x00)
            OperationRegion (AC20, SystemMemory, 0xE0008C20, 0x04)
            Field (AC20, ByteAcc, NoLock, Preserve)
            {
                    ,   4, 
                FSQ1,   1, 
                FSQ2,   1, 
                Offset (0x04)
            }

            OperationRegion (BC20, SystemMemory, 0xE0009C20, 0x04)
            Field (BC20, ByteAcc, NoLock, Preserve)
            {
                    ,   4, 
                GSQ1,   1, 
                GSQ2,   1, 
                Offset (0x04)
            }

            OperationRegion (AD10, SystemMemory, 0xE0008D10, 0x04)
            Field (AD10, ByteAcc, NoLock, Preserve)
            {
                FD10,   1, 
                Offset (0x04)
            }

            OperationRegion (BD10, SystemMemory, 0xE0009D10, 0x04)
            Field (BD10, ByteAcc, NoLock, Preserve)
            {
                GD10,   1, 
                Offset (0x04)
            }

            OperationRegion (A006, SystemMemory, 0xE0008006, 0x02)
            Field (A006, ByteAcc, NoLock, Preserve)
            {
                F006,   16
            }

            Name (V006, 0x00)
            OperationRegion (B006, SystemMemory, 0xE0009006, 0x02)
            Field (B006, ByteAcc, NoLock, Preserve)
            {
                G006,   16
            }

            Name (Y006, 0x00)
            OperationRegion (A01E, SystemMemory, 0xE000801E, 0x02)
            Field (A01E, ByteAcc, NoLock, Preserve)
            {
                F01E,   16
            }

            Name (V01E, 0x00)
            OperationRegion (B01E, SystemMemory, 0xE000901E, 0x02)
            Field (B01E, ByteAcc, NoLock, Preserve)
            {
                G01E,   16
            }

            Name (Y01E, 0x00)
            OperationRegion (A0AA, SystemMemory, 0xE00080AA, 0x02)
            Field (A0AA, ByteAcc, NoLock, Preserve)
            {
                F0AA,   16
            }

            Name (V0AA, 0x00)
            OperationRegion (B0AA, SystemMemory, 0xE00090AA, 0x02)
            Field (B0AA, ByteAcc, NoLock, Preserve)
            {
                G0AA,   16
            }

            Name (Y0AA, 0x00)
            OperationRegion (A0C0, SystemMemory, 0xE00080C0, 0x04)
            Field (A0C0, ByteAcc, NoLock, Preserve)
            {
                F0C0,   32
            }

            Name (V0C0, 0x00)
            OperationRegion (B0C0, SystemMemory, 0xE00090C0, 0x04)
            Field (B0C0, ByteAcc, NoLock, Preserve)
            {
                G0C0,   32
            }

            Name (Y0C0, 0x00)
            OperationRegion (A0D2, SystemMemory, 0xE00080D2, 0x02)
            Field (A0D2, ByteAcc, NoLock, Preserve)
            {
                F0D2,   16
            }

            Name (V0D2, 0x00)
            OperationRegion (B0D2, SystemMemory, 0xE00090D2, 0x02)
            Field (B0D2, ByteAcc, NoLock, Preserve)
            {
                G0D2,   16
            }

            Name (Y0D2, 0x00)
            OperationRegion (A1C4, SystemMemory, 0xE00081C4, 0x02)
            Field (A1C4, ByteAcc, NoLock, Preserve)
            {
                F1C4,   16
            }

            Name (V1C4, 0x00)
            OperationRegion (B1C4, SystemMemory, 0xE00091C4, 0x02)
            Field (B1C4, ByteAcc, NoLock, Preserve)
            {
                G1C4,   16
            }

            Name (Y1C4, 0x00)
            OperationRegion (A1D0, SystemMemory, 0xE00081D0, 0x04)
            Field (A1D0, ByteAcc, NoLock, Preserve)
            {
                F1D0,   32
            }

            Name (V1D0, 0x00)
            OperationRegion (B1D0, SystemMemory, 0xE00091D0, 0x04)
            Field (B1D0, ByteAcc, NoLock, Preserve)
            {
                G1D0,   32
            }

            Name (Y1D0, 0x00)
            OperationRegion (A1F0, SystemMemory, 0xE00081F0, 0x04)
            Field (A1F0, ByteAcc, NoLock, Preserve)
            {
                F1F0,   32
            }

            Name (V1F0, 0x00)
            OperationRegion (B1F0, SystemMemory, 0xE00091F0, 0x04)
            Field (B1F0, ByteAcc, NoLock, Preserve)
            {
                G1F0,   32
            }

            Name (Y1F0, 0x00)
            OperationRegion (AD9C, SystemMemory, 0xE0008D9C, 0x04)
            Field (AD9C, ByteAcc, NoLock, Preserve)
            {
                FD9C,   32
            }

            Name (VD9C, 0x00)
            OperationRegion (BD9C, SystemMemory, 0xE0009D9C, 0x04)
            Field (BD9C, ByteAcc, NoLock, Preserve)
            {
                GD9C,   32
            }

            Name (YD9C, 0x00)
            OperationRegion (A0B2, SystemMemory, 0xE00080B2, 0x02)
            Field (A0B2, ByteAcc, NoLock, Preserve)
            {
                F0B2,   16
            }

            Name (V0B2, 0x00)
            OperationRegion (B0B2, SystemMemory, 0xE00090B2, 0x02)
            Field (B0B2, ByteAcc, NoLock, Preserve)
            {
                G0B2,   16
            }

            Name (Y0B2, 0x00)
            OperationRegion (A508, SystemMemory, 0xE0008508, 0x01)
            Field (A508, ByteAcc, NoLock, Preserve)
            {
                F508,   1, 
                Offset (0x01)
            }

            Name (V508, 0x00)
            OperationRegion (B508, SystemMemory, 0xE0009508, 0x01)
            Field (B508, ByteAcc, NoLock, Preserve)
            {
                G508,   1, 
                Offset (0x01)
            }

            Name (Y508, 0x00)
            OperationRegion (BND0, SystemMemory, 0xE000891C, 0x04)
            Field (BND0, ByteAcc, NoLock, Preserve)
            {
                    ,   31, 
                B0PD,   1
            }

            OperationRegion (BND1, SystemMemory, 0xE000893C, 0x04)
            Field (BND1, ByteAcc, NoLock, Preserve)
            {
                    ,   31, 
                B1PD,   1
            }

            OperationRegion (BND2, SystemMemory, 0xE000895C, 0x04)
            Field (BND2, ByteAcc, NoLock, Preserve)
            {
                    ,   31, 
                B2PD,   1
            }

            OperationRegion (BND3, SystemMemory, 0xE000897C, 0x04)
            Field (BND3, ByteAcc, NoLock, Preserve)
            {
                    ,   31, 
                B3PD,   1
            }

            OperationRegion (BND4, SystemMemory, 0xE000899C, 0x04)
            Field (BND4, ByteAcc, NoLock, Preserve)
            {
                    ,   31, 
                B4PD,   1
            }

            OperationRegion (BND5, SystemMemory, 0xE00089BC, 0x04)
            Field (BND5, ByteAcc, NoLock, Preserve)
            {
                    ,   31, 
                B5PD,   1
            }

            OperationRegion (BND6, SystemMemory, 0xE00089DC, 0x04)
            Field (BND6, ByteAcc, NoLock, Preserve)
            {
                    ,   31, 
                B6PD,   1
            }

            OperationRegion (BND7, SystemMemory, 0xE00089FC, 0x04)
            Field (BND7, ByteAcc, NoLock, Preserve)
            {
                    ,   31, 
                B7PD,   1
            }

            OperationRegion (C7AR, SystemMemory, 0xFED15DA8, 0x04)
            Field (C7AR, ByteAcc, NoLock, Preserve)
            {
                    ,   2, 
                C7AE,   1, 
                Offset (0x04)
            }

            OperationRegion (A11A, SystemMemory, 0xE000811A, 0x02)
            Field (A11A, ByteAcc, NoLock, Preserve)
            {
                    ,   1, 
                F11A,   1, 
                Offset (0x02)
            }

            OperationRegion (B11A, SystemMemory, 0xE000911A, 0x02)
            Field (B11A, ByteAcc, NoLock, Preserve)
            {
                    ,   1, 
                G11A,   1, 
                Offset (0x02)
            }

            OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
            Field (A1E0, ByteAcc, NoLock, Preserve)
            {
                AVND,   32, 
                BMIE,   3, 
                Offset (0x18), 
                PRIB,   8, 
                SECB,   8, 
                SUBB,   8, 
                Offset (0x1E), 
                    ,   13, 
                MABT,   1
            }

            OperationRegion (A1E1, PCI_Config, 0xA0, 0x40)
            Field (A1E1, ByteAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                Offset (0x02), 
                Offset (0x04), 
                Offset (0x08), 
                Offset (0x0A), 
                    ,   5, 
                TPEN,   1, 
                Offset (0x0C), 
                SSPD,   4, 
                    ,   16, 
                LACR,   1, 
                Offset (0x10), 
                    ,   4, 
                LDIS,   1, 
                LRTN,   1, 
                Offset (0x12), 
                CSPD,   4, 
                    ,   7, 
                LTRN,   1, 
                    ,   1, 
                LACT,   1, 
                Offset (0x14), 
                Offset (0x30), 
                TSPD,   4
            }

            OperationRegion (A1E2, PCI_Config, 0x80, 0x08)
            Field (A1E2, ByteAcc, NoLock, Preserve)
            {
                Offset (0x01), 
                Offset (0x02), 
                Offset (0x04), 
                PSTA,   2
            }

            OperationRegion (A1E3, PCI_Config, 0x0200, 0x20)
            Field (A1E3, ByteAcc, NoLock, Preserve)
            {
                Offset (0x14), 
                Offset (0x16), 
                PSTS,   4
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (!OSDW ())
                {
                    If (Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */)
                    {
                        If (Arg2 == 0x05)
                        {
                            Return (0x01)
                        }
                    }
                }

                Return (0x00)
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (0x00)
            }

            Device (UPSB)
            {
                Name (_ADR, 0x00)  // _ADR: Address
                OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                Field (A1E0, ByteAcc, NoLock, Preserve)
                {
                    AVND,   32, 
                    BMIE,   3, 
                    Offset (0x18), 
                    PRIB,   8, 
                    SECB,   8, 
                    SUBB,   8, 
                    Offset (0x1E), 
                        ,   13, 
                    MABT,   1
                }

                OperationRegion (A1E1, PCI_Config, 0xC0, 0x40)
                Field (A1E1, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x04), 
                    Offset (0x08), 
                    Offset (0x0A), 
                        ,   5, 
                    TPEN,   1, 
                    Offset (0x0C), 
                    SSPD,   4, 
                    Offset (0x10), 
                        ,   4, 
                    LDIS,   1, 
                    LRTN,   1, 
                        ,   21, 
                    LTRN,   1, 
                        ,   1, 
                    LACT,   1, 
                    Offset (0x30), 
                    TSPD,   4
                }

                OperationRegion (A1E2, PCI_Config, 0x80, 0x08)
                Field (A1E2, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x04), 
                    PSTA,   2
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    If (!OSDW ())
                    {
                        If (\_SB.PCI0.UPCK () == 0x00)
                        {
                            \_SB.PCI0.UTLK (0x01, 0x03E8)
                        }
                        Else
                        {
                        }

                        \_SB.PCI0.TBTC (0x05)
                    }
                }

                Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                {
                    Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.SECB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (0x00)
                }

                Device (DSB0)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                        Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                        Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    OperationRegion (A1E1, PCI_Config, 0xC0, 0x40)
                    Field (A1E1, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x01), 
                        Offset (0x02), 
                        Offset (0x04), 
                        Offset (0x08), 
                        Offset (0x0A), 
                            ,   5, 
                        TPEN,   1, 
                        Offset (0x0C), 
                        Offset (0x10), 
                            ,   4, 
                        LDIS,   1, 
                        LRTN,   1, 
                            ,   23, 
                        LACT,   1
                    }

                    OperationRegion (A1E2, PCI_Config, 0x80, 0x08)
                    Field (A1E2, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x01), 
                        Offset (0x02), 
                        Offset (0x04), 
                        PSTA,   2
                    }

                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                    {
                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB0.SECB */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }

                    Device (NHI0)
                    {
                        Method (PSSR, 1, Serialized)
                        {
                            If (Arg0 == 0x01)
                            {
                                VDD8 = FDD8 /* \_SB_.PCI0.PEG2.FDD8 */
                                V900 = F900 /* \_SB_.PCI0.PEG2.F900 */
                                V904 = F904 /* \_SB_.PCI0.PEG2.F904 */
                                V908 = F908 /* \_SB_.PCI0.PEG2.F908 */
                                V90C = F90C /* \_SB_.PCI0.PEG2.F90C */
                                V910 = F910 /* \_SB_.PCI0.PEG2.F910 */
                                V80C = F80C /* \_SB_.PCI0.PEG2.F80C */
                                V920 = F920 /* \_SB_.PCI0.PEG2.F920 */
                                V924 = F924 /* \_SB_.PCI0.PEG2.F924 */
                                V928 = F928 /* \_SB_.PCI0.PEG2.F928 */
                                V92C = F92C /* \_SB_.PCI0.PEG2.F92C */
                                V930 = F930 /* \_SB_.PCI0.PEG2.F930 */
                                V82C = F82C /* \_SB_.PCI0.PEG2.F82C */
                                V940 = F940 /* \_SB_.PCI0.PEG2.F940 */
                                V944 = F944 /* \_SB_.PCI0.PEG2.F944 */
                                V948 = F948 /* \_SB_.PCI0.PEG2.F948 */
                                V94C = F94C /* \_SB_.PCI0.PEG2.F94C */
                                V950 = F950 /* \_SB_.PCI0.PEG2.F950 */
                                V84C = F84C /* \_SB_.PCI0.PEG2.F84C */
                                V960 = F960 /* \_SB_.PCI0.PEG2.F960 */
                                V964 = F964 /* \_SB_.PCI0.PEG2.F964 */
                                V968 = F968 /* \_SB_.PCI0.PEG2.F968 */
                                V96C = F96C /* \_SB_.PCI0.PEG2.F96C */
                                V970 = F970 /* \_SB_.PCI0.PEG2.F970 */
                                V86C = F86C /* \_SB_.PCI0.PEG2.F86C */
                                V980 = F980 /* \_SB_.PCI0.PEG2.F980 */
                                V984 = F984 /* \_SB_.PCI0.PEG2.F984 */
                                V988 = F988 /* \_SB_.PCI0.PEG2.F988 */
                                V98C = F98C /* \_SB_.PCI0.PEG2.F98C */
                                V990 = F990 /* \_SB_.PCI0.PEG2.F990 */
                                V88C = F88C /* \_SB_.PCI0.PEG2.F88C */
                                V9A0 = F9A0 /* \_SB_.PCI0.PEG2.F9A0 */
                                V9A4 = F9A4 /* \_SB_.PCI0.PEG2.F9A4 */
                                V9A8 = F9A8 /* \_SB_.PCI0.PEG2.F9A8 */
                                V9AC = F9AC /* \_SB_.PCI0.PEG2.F9AC */
                                V9B0 = F9B0 /* \_SB_.PCI0.PEG2.F9B0 */
                                V8AC = F8AC /* \_SB_.PCI0.PEG2.F8AC */
                                V9C0 = F9C0 /* \_SB_.PCI0.PEG2.F9C0 */
                                V9C4 = F9C4 /* \_SB_.PCI0.PEG2.F9C4 */
                                V9C8 = F9C8 /* \_SB_.PCI0.PEG2.F9C8 */
                                V9CC = F9CC /* \_SB_.PCI0.PEG2.F9CC */
                                V9D0 = F9D0 /* \_SB_.PCI0.PEG2.F9D0 */
                                V8CC = F8CC /* \_SB_.PCI0.PEG2.F8CC */
                                V9E0 = F9E0 /* \_SB_.PCI0.PEG2.F9E0 */
                                V9E4 = F9E4 /* \_SB_.PCI0.PEG2.F9E4 */
                                V9E8 = F9E8 /* \_SB_.PCI0.PEG2.F9E8 */
                                V9EC = F9EC /* \_SB_.PCI0.PEG2.F9EC */
                                V9F0 = F9F0 /* \_SB_.PCI0.PEG2.F9F0 */
                                V8EC = F8EC /* \_SB_.PCI0.PEG2.F8EC */
                                VC30 = FC30 /* \_SB_.PCI0.PEG2.FC30 */
                                VA00 = FA00 /* \_SB_.PCI0.PEG2.FA00 */
                                VA04 = FA04 /* \_SB_.PCI0.PEG2.FA04 */
                                VA08 = FA08 /* \_SB_.PCI0.PEG2.FA08 */
                                VA0C = FA0C /* \_SB_.PCI0.PEG2.FA0C */
                                VA10 = FA10 /* \_SB_.PCI0.PEG2.FA10 */
                                VA14 = FA14 /* \_SB_.PCI0.PEG2.FA14 */
                                VA18 = FA18 /* \_SB_.PCI0.PEG2.FA18 */
                                VA1C = FA1C /* \_SB_.PCI0.PEG2.FA1C */
                                VA20 = FA20 /* \_SB_.PCI0.PEG2.FA20 */
                                VA24 = FA24 /* \_SB_.PCI0.PEG2.FA24 */
                                VA28 = FA28 /* \_SB_.PCI0.PEG2.FA28 */
                                VA2C = FA2C /* \_SB_.PCI0.PEG2.FA2C */
                                VA30 = FA30 /* \_SB_.PCI0.PEG2.FA30 */
                                VA34 = FA34 /* \_SB_.PCI0.PEG2.FA34 */
                                VA38 = FA38 /* \_SB_.PCI0.PEG2.FA38 */
                                VA3C = FA3C /* \_SB_.PCI0.PEG2.FA3C */
                                VA40 = FA40 /* \_SB_.PCI0.PEG2.FA40 */
                                VA44 = FA44 /* \_SB_.PCI0.PEG2.FA44 */
                                VA48 = FA48 /* \_SB_.PCI0.PEG2.FA48 */
                                VA4C = FA4C /* \_SB_.PCI0.PEG2.FA4C */
                                VA50 = FA50 /* \_SB_.PCI0.PEG2.FA50 */
                                VA54 = FA54 /* \_SB_.PCI0.PEG2.FA54 */
                                VA58 = FA58 /* \_SB_.PCI0.PEG2.FA58 */
                                VA5C = FA5C /* \_SB_.PCI0.PEG2.FA5C */
                                VA60 = FA60 /* \_SB_.PCI0.PEG2.FA60 */
                                VA64 = FA64 /* \_SB_.PCI0.PEG2.FA64 */
                                VA68 = FA68 /* \_SB_.PCI0.PEG2.FA68 */
                                VA6C = FA6C /* \_SB_.PCI0.PEG2.FA6C */
                                VA70 = FA70 /* \_SB_.PCI0.PEG2.FA70 */
                                VA74 = FA74 /* \_SB_.PCI0.PEG2.FA74 */
                                VA78 = FA78 /* \_SB_.PCI0.PEG2.FA78 */
                                VA7C = FA7C /* \_SB_.PCI0.PEG2.FA7C */
                                VA80 = FA80 /* \_SB_.PCI0.PEG2.FA80 */
                                VA84 = FA84 /* \_SB_.PCI0.PEG2.FA84 */
                                VA88 = FA88 /* \_SB_.PCI0.PEG2.FA88 */
                                VA8C = FA8C /* \_SB_.PCI0.PEG2.FA8C */
                                VA90 = FA90 /* \_SB_.PCI0.PEG2.FA90 */
                                VA94 = FA94 /* \_SB_.PCI0.PEG2.FA94 */
                                VA98 = FA98 /* \_SB_.PCI0.PEG2.FA98 */
                                VA9C = FA9C /* \_SB_.PCI0.PEG2.FA9C */
                                VAA0 = FAA0 /* \_SB_.PCI0.PEG2.FAA0 */
                                VAA4 = FAA4 /* \_SB_.PCI0.PEG2.FAA4 */
                                VAA8 = FAA8 /* \_SB_.PCI0.PEG2.FAA8 */
                                VAAC = FAAC /* \_SB_.PCI0.PEG2.FAAC */
                                VAB0 = FAB0 /* \_SB_.PCI0.PEG2.FAB0 */
                                VAB4 = FAB4 /* \_SB_.PCI0.PEG2.FAB4 */
                                VAB8 = FAB8 /* \_SB_.PCI0.PEG2.FAB8 */
                                VABC = FABC /* \_SB_.PCI0.PEG2.FABC */
                                VAC0 = FAC0 /* \_SB_.PCI0.PEG2.FAC0 */
                                VAC4 = FAC4 /* \_SB_.PCI0.PEG2.FAC4 */
                                VAC8 = FAC8 /* \_SB_.PCI0.PEG2.FAC8 */
                                VACC = FACC /* \_SB_.PCI0.PEG2.FACC */
                                VAD0 = FAD0 /* \_SB_.PCI0.PEG2.FAD0 */
                                VAD4 = FAD4 /* \_SB_.PCI0.PEG2.FAD4 */
                                VAD8 = FAD8 /* \_SB_.PCI0.PEG2.FAD8 */
                                VADC = FADC /* \_SB_.PCI0.PEG2.FADC */
                                VAE0 = FAE0 /* \_SB_.PCI0.PEG2.FAE0 */
                                VAE4 = FAE4 /* \_SB_.PCI0.PEG2.FAE4 */
                                VAE8 = FAE8 /* \_SB_.PCI0.PEG2.FAE8 */
                                VAEC = FAEC /* \_SB_.PCI0.PEG2.FAEC */
                                VAF0 = FAF0 /* \_SB_.PCI0.PEG2.FAF0 */
                                VAF4 = FAF4 /* \_SB_.PCI0.PEG2.FAF4 */
                                VAF8 = FAF8 /* \_SB_.PCI0.PEG2.FAF8 */
                                VAFC = FAFC /* \_SB_.PCI0.PEG2.FAFC */
                                V918 = F918 /* \_SB_.PCI0.PEG2.F918 */
                                V938 = F938 /* \_SB_.PCI0.PEG2.F938 */
                                V958 = F958 /* \_SB_.PCI0.PEG2.F958 */
                                V978 = F978 /* \_SB_.PCI0.PEG2.F978 */
                                V998 = F998 /* \_SB_.PCI0.PEG2.F998 */
                                V9B8 = F9B8 /* \_SB_.PCI0.PEG2.F9B8 */
                                V9D8 = F9D8 /* \_SB_.PCI0.PEG2.F9D8 */
                                V9F8 = F9F8 /* \_SB_.PCI0.PEG2.F9F8 */
                            }
                            Else
                            {
                                FDD8 = VDD8 /* \_SB_.PCI0.PEG2.VDD8 */
                                F900 = V900 /* \_SB_.PCI0.PEG2.V900 */
                                F904 = V904 /* \_SB_.PCI0.PEG2.V904 */
                                F908 = V908 /* \_SB_.PCI0.PEG2.V908 */
                                F90C = V90C /* \_SB_.PCI0.PEG2.V90C */
                                F910 = V910 /* \_SB_.PCI0.PEG2.V910 */
                                F80C = V80C /* \_SB_.PCI0.PEG2.V80C */
                                F920 = V920 /* \_SB_.PCI0.PEG2.V920 */
                                F924 = V924 /* \_SB_.PCI0.PEG2.V924 */
                                F928 = V928 /* \_SB_.PCI0.PEG2.V928 */
                                F92C = V92C /* \_SB_.PCI0.PEG2.V92C */
                                F930 = V930 /* \_SB_.PCI0.PEG2.V930 */
                                F82C = V82C /* \_SB_.PCI0.PEG2.V82C */
                                F940 = V940 /* \_SB_.PCI0.PEG2.V940 */
                                F944 = V944 /* \_SB_.PCI0.PEG2.V944 */
                                F948 = V948 /* \_SB_.PCI0.PEG2.V948 */
                                F94C = V94C /* \_SB_.PCI0.PEG2.V94C */
                                F950 = V950 /* \_SB_.PCI0.PEG2.V950 */
                                F84C = V84C /* \_SB_.PCI0.PEG2.V84C */
                                F960 = V960 /* \_SB_.PCI0.PEG2.V960 */
                                F964 = V964 /* \_SB_.PCI0.PEG2.V964 */
                                F968 = V968 /* \_SB_.PCI0.PEG2.V968 */
                                F96C = V96C /* \_SB_.PCI0.PEG2.V96C */
                                F970 = V970 /* \_SB_.PCI0.PEG2.V970 */
                                F86C = V86C /* \_SB_.PCI0.PEG2.V86C */
                                F980 = V980 /* \_SB_.PCI0.PEG2.V980 */
                                F984 = V984 /* \_SB_.PCI0.PEG2.V984 */
                                F988 = V988 /* \_SB_.PCI0.PEG2.V988 */
                                F98C = V98C /* \_SB_.PCI0.PEG2.V98C */
                                F990 = V990 /* \_SB_.PCI0.PEG2.V990 */
                                F88C = V88C /* \_SB_.PCI0.PEG2.V88C */
                                F9A0 = V9A0 /* \_SB_.PCI0.PEG2.V9A0 */
                                F9A4 = V9A4 /* \_SB_.PCI0.PEG2.V9A4 */
                                F9A8 = V9A8 /* \_SB_.PCI0.PEG2.V9A8 */
                                F9AC = V9AC /* \_SB_.PCI0.PEG2.V9AC */
                                F9B0 = V9B0 /* \_SB_.PCI0.PEG2.V9B0 */
                                F8AC = V8AC /* \_SB_.PCI0.PEG2.V8AC */
                                F9C0 = V9C0 /* \_SB_.PCI0.PEG2.V9C0 */
                                F9C4 = V9C4 /* \_SB_.PCI0.PEG2.V9C4 */
                                F9C8 = V9C8 /* \_SB_.PCI0.PEG2.V9C8 */
                                F9CC = V9CC /* \_SB_.PCI0.PEG2.V9CC */
                                F9D0 = V9D0 /* \_SB_.PCI0.PEG2.V9D0 */
                                F8CC = V8CC /* \_SB_.PCI0.PEG2.V8CC */
                                F9E0 = V9E0 /* \_SB_.PCI0.PEG2.V9E0 */
                                F9E4 = V9E4 /* \_SB_.PCI0.PEG2.V9E4 */
                                F9E8 = V9E8 /* \_SB_.PCI0.PEG2.V9E8 */
                                F9EC = V9EC /* \_SB_.PCI0.PEG2.V9EC */
                                F9F0 = V9F0 /* \_SB_.PCI0.PEG2.V9F0 */
                                F8EC = V8EC /* \_SB_.PCI0.PEG2.V8EC */
                                FC30 = VC30 /* \_SB_.PCI0.PEG2.VC30 */
                                FA00 = VA00 /* \_SB_.PCI0.PEG2.VA00 */
                                FA04 = VA04 /* \_SB_.PCI0.PEG2.VA04 */
                                FA08 = VA08 /* \_SB_.PCI0.PEG2.VA08 */
                                FA0C = VA0C /* \_SB_.PCI0.PEG2.VA0C */
                                FA10 = VA10 /* \_SB_.PCI0.PEG2.VA10 */
                                FA14 = VA14 /* \_SB_.PCI0.PEG2.VA14 */
                                FA18 = VA18 /* \_SB_.PCI0.PEG2.VA18 */
                                FA1C = VA1C /* \_SB_.PCI0.PEG2.VA1C */
                                FA20 = VA20 /* \_SB_.PCI0.PEG2.VA20 */
                                FA24 = VA24 /* \_SB_.PCI0.PEG2.VA24 */
                                FA28 = VA28 /* \_SB_.PCI0.PEG2.VA28 */
                                FA2C = VA2C /* \_SB_.PCI0.PEG2.VA2C */
                                FA30 = VA30 /* \_SB_.PCI0.PEG2.VA30 */
                                FA34 = VA34 /* \_SB_.PCI0.PEG2.VA34 */
                                FA38 = VA38 /* \_SB_.PCI0.PEG2.VA38 */
                                FA3C = VA3C /* \_SB_.PCI0.PEG2.VA3C */
                                FA40 = VA40 /* \_SB_.PCI0.PEG2.VA40 */
                                FA44 = VA44 /* \_SB_.PCI0.PEG2.VA44 */
                                FA48 = VA48 /* \_SB_.PCI0.PEG2.VA48 */
                                FA4C = VA4C /* \_SB_.PCI0.PEG2.VA4C */
                                FA50 = VA50 /* \_SB_.PCI0.PEG2.VA50 */
                                FA54 = VA54 /* \_SB_.PCI0.PEG2.VA54 */
                                FA58 = VA58 /* \_SB_.PCI0.PEG2.VA58 */
                                FA5C = VA5C /* \_SB_.PCI0.PEG2.VA5C */
                                FA60 = VA60 /* \_SB_.PCI0.PEG2.VA60 */
                                FA64 = VA64 /* \_SB_.PCI0.PEG2.VA64 */
                                FA68 = VA68 /* \_SB_.PCI0.PEG2.VA68 */
                                FA6C = VA6C /* \_SB_.PCI0.PEG2.VA6C */
                                FA70 = VA70 /* \_SB_.PCI0.PEG2.VA70 */
                                FA74 = VA74 /* \_SB_.PCI0.PEG2.VA74 */
                                FA78 = VA78 /* \_SB_.PCI0.PEG2.VA78 */
                                FA7C = VA7C /* \_SB_.PCI0.PEG2.VA7C */
                                FA80 = VA80 /* \_SB_.PCI0.PEG2.VA80 */
                                FA84 = VA84 /* \_SB_.PCI0.PEG2.VA84 */
                                FA88 = VA88 /* \_SB_.PCI0.PEG2.VA88 */
                                FA8C = VA8C /* \_SB_.PCI0.PEG2.VA8C */
                                FA90 = VA90 /* \_SB_.PCI0.PEG2.VA90 */
                                FA94 = VA94 /* \_SB_.PCI0.PEG2.VA94 */
                                FA98 = VA98 /* \_SB_.PCI0.PEG2.VA98 */
                                FA9C = VA9C /* \_SB_.PCI0.PEG2.VA9C */
                                FAA0 = VAA0 /* \_SB_.PCI0.PEG2.VAA0 */
                                FAA4 = VAA4 /* \_SB_.PCI0.PEG2.VAA4 */
                                FAA8 = VAA8 /* \_SB_.PCI0.PEG2.VAA8 */
                                FAAC = VAAC /* \_SB_.PCI0.PEG2.VAAC */
                                FAB0 = VAB0 /* \_SB_.PCI0.PEG2.VAB0 */
                                FAB4 = VAB4 /* \_SB_.PCI0.PEG2.VAB4 */
                                FAB8 = VAB8 /* \_SB_.PCI0.PEG2.VAB8 */
                                FABC = VABC /* \_SB_.PCI0.PEG2.VABC */
                                FAC0 = VAC0 /* \_SB_.PCI0.PEG2.VAC0 */
                                FAC4 = VAC4 /* \_SB_.PCI0.PEG2.VAC4 */
                                FAC8 = VAC8 /* \_SB_.PCI0.PEG2.VAC8 */
                                FACC = VACC /* \_SB_.PCI0.PEG2.VACC */
                                FAD0 = VAD0 /* \_SB_.PCI0.PEG2.VAD0 */
                                FAD4 = VAD4 /* \_SB_.PCI0.PEG2.VAD4 */
                                FAD8 = VAD8 /* \_SB_.PCI0.PEG2.VAD8 */
                                FADC = VADC /* \_SB_.PCI0.PEG2.VADC */
                                FAE0 = VAE0 /* \_SB_.PCI0.PEG2.VAE0 */
                                FAE4 = VAE4 /* \_SB_.PCI0.PEG2.VAE4 */
                                FAE8 = VAE8 /* \_SB_.PCI0.PEG2.VAE8 */
                                FAEC = VAEC /* \_SB_.PCI0.PEG2.VAEC */
                                FAF0 = VAF0 /* \_SB_.PCI0.PEG2.VAF0 */
                                FAF4 = VAF4 /* \_SB_.PCI0.PEG2.VAF4 */
                                FAF8 = VAF8 /* \_SB_.PCI0.PEG2.VAF8 */
                                FAFC = VAFC /* \_SB_.PCI0.PEG2.VAFC */
                                F918 = V918 /* \_SB_.PCI0.PEG2.V918 */
                                F938 = V938 /* \_SB_.PCI0.PEG2.V938 */
                                F958 = V958 /* \_SB_.PCI0.PEG2.V958 */
                                F978 = V978 /* \_SB_.PCI0.PEG2.V978 */
                                F998 = V998 /* \_SB_.PCI0.PEG2.V998 */
                                F9B8 = V9B8 /* \_SB_.PCI0.PEG2.V9B8 */
                                F9D8 = V9D8 /* \_SB_.PCI0.PEG2.V9D8 */
                                F9F8 = V9F8 /* \_SB_.PCI0.PEG2.V9F8 */
                            }
                        }

                        Method (P1SR, 1, Serialized)
                        {
                            If (Arg0 == 0x01)
                            {
                                Y224 = G224 /* \_SB_.PCI0.PEG2.G224 */
                                Y1F8 = G1F8 /* \_SB_.PCI0.PEG2.G1F8 */
                                Y260 = G260 /* \_SB_.PCI0.PEG2.G260 */
                                YC28 = GC28 /* \_SB_.PCI0.PEG2.GC28 */
                                YC38 = GC38 /* \_SB_.PCI0.PEG2.GC38 */
                                YD14 = GD14 /* \_SB_.PCI0.PEG2.GD14 */
                                Y004 = G004 /* \_SB_.PCI0.PEG2.G004 */
                                Y00C = G00C /* \_SB_.PCI0.PEG2.G00C */
                                Y019 = G019 /* \_SB_.PCI0.PEG2.G019 */
                                Y01A = G01A /* \_SB_.PCI0.PEG2.G01A */
                                Y01C = G01C /* \_SB_.PCI0.PEG2.G01C */
                                Y01D = G01D /* \_SB_.PCI0.PEG2.G01D */
                                Y020 = G020 /* \_SB_.PCI0.PEG2.G020 */
                                Y022 = G022 /* \_SB_.PCI0.PEG2.G022 */
                                Y024 = G024 /* \_SB_.PCI0.PEG2.G024 */
                                Y026 = G026 /* \_SB_.PCI0.PEG2.G026 */
                                Y028 = G028 /* \_SB_.PCI0.PEG2.G028 */
                                Y02C = G02C /* \_SB_.PCI0.PEG2.G02C */
                                Y03C = G03C /* \_SB_.PCI0.PEG2.G03C */
                                Y03D = G03D /* \_SB_.PCI0.PEG2.G03D */
                                Y03E = G03E /* \_SB_.PCI0.PEG2.G03E */
                                Y084 = G084 /* \_SB_.PCI0.PEG2.G084 */
                                Y08C = G08C /* \_SB_.PCI0.PEG2.G08C */
                                Y092 = G092 /* \_SB_.PCI0.PEG2.G092 */
                                Y094 = G094 /* \_SB_.PCI0.PEG2.G094 */
                                Y098 = G098 /* \_SB_.PCI0.PEG2.G098 */
                                Y0A2 = G0A2 /* \_SB_.PCI0.PEG2.G0A2 */
                                Y0A8 = G0A8 /* \_SB_.PCI0.PEG2.G0A8 */
                                Y0AC = G0AC /* \_SB_.PCI0.PEG2.G0AC */
                                Y0B0 = G0B0 /* \_SB_.PCI0.PEG2.G0B0 */
                                Y0B4 = G0B4 /* \_SB_.PCI0.PEG2.G0B4 */
                                Y0BC = G0BC /* \_SB_.PCI0.PEG2.G0BC */
                                Y0C8 = G0C8 /* \_SB_.PCI0.PEG2.G0C8 */
                                Y0D0 = G0D0 /* \_SB_.PCI0.PEG2.G0D0 */
                                Y0EC = G0EC /* \_SB_.PCI0.PEG2.G0EC */
                                Y114 = G114 /* \_SB_.PCI0.PEG2.G114 */
                                Y144 = G144 /* \_SB_.PCI0.PEG2.G144 */
                                Y150 = G150 /* \_SB_.PCI0.PEG2.G150 */
                                Y158 = G158 /* \_SB_.PCI0.PEG2.G158 */
                                Y15C = G15C /* \_SB_.PCI0.PEG2.G15C */
                                Y1CC = G1CC /* \_SB_.PCI0.PEG2.G1CC */
                                Y1FC = G1FC /* \_SB_.PCI0.PEG2.G1FC */
                                Y200 = G200 /* \_SB_.PCI0.PEG2.G200 */
                                Y204 = G204 /* \_SB_.PCI0.PEG2.G204 */
                                Y208 = G208 /* \_SB_.PCI0.PEG2.G208 */
                                Y228 = G228 /* \_SB_.PCI0.PEG2.G228 */
                                Y22C = G22C /* \_SB_.PCI0.PEG2.G22C */
                                Y238 = G238 /* \_SB_.PCI0.PEG2.G238 */
                                Y240 = G240 /* \_SB_.PCI0.PEG2.G240 */
                                Y244 = G244 /* \_SB_.PCI0.PEG2.G244 */
                                Y250 = G250 /* \_SB_.PCI0.PEG2.G250 */
                                Y258 = G258 /* \_SB_.PCI0.PEG2.G258 */
                                Y25C = G25C /* \_SB_.PCI0.PEG2.G25C */
                                YCD0 = GCD0 /* \_SB_.PCI0.PEG2.GCD0 */
                                YD34 = GD34 /* \_SB_.PCI0.PEG2.GD34 */
                                YD94 = GD94 /* \_SB_.PCI0.PEG2.GD94 */
                                YD98 = GD98 /* \_SB_.PCI0.PEG2.GD98 */
                                Y0F4 = G0F4 /* \_SB_.PCI0.PEG2.G0F4 */
                                YDA0 = GDA0 /* \_SB_.PCI0.PEG2.GDA0 */
                                YDA4 = GDA4 /* \_SB_.PCI0.PEG2.GDA4 */
                                YDA8 = GDA8 /* \_SB_.PCI0.PEG2.GDA8 */
                                YDAC = GDAC /* \_SB_.PCI0.PEG2.GDAC */
                                YDB0 = GDB0 /* \_SB_.PCI0.PEG2.GDB0 */
                                YDB4 = GDB4 /* \_SB_.PCI0.PEG2.GDB4 */
                                YDB8 = GDB8 /* \_SB_.PCI0.PEG2.GDB8 */
                                YDBC = GDBC /* \_SB_.PCI0.PEG2.GDBC */
                            }
                            Else
                            {
                                G224 = Y224 /* \_SB_.PCI0.PEG2.Y224 */
                                G1F8 = Y1F8 /* \_SB_.PCI0.PEG2.Y1F8 */
                                G260 = Y260 /* \_SB_.PCI0.PEG2.Y260 */
                                GC28 = YC28 /* \_SB_.PCI0.PEG2.YC28 */
                                GC38 = YC38 /* \_SB_.PCI0.PEG2.YC38 */
                                GD14 = YD14 /* \_SB_.PCI0.PEG2.YD14 */
                                G00C = Y00C /* \_SB_.PCI0.PEG2.Y00C */
                                G019 = Y019 /* \_SB_.PCI0.PEG2.Y019 */
                                G01A = Y01A /* \_SB_.PCI0.PEG2.Y01A */
                                G01C = Y01C /* \_SB_.PCI0.PEG2.Y01C */
                                G01D = Y01D /* \_SB_.PCI0.PEG2.Y01D */
                                G020 = Y020 /* \_SB_.PCI0.PEG2.Y020 */
                                G022 = Y022 /* \_SB_.PCI0.PEG2.Y022 */
                                G024 = Y024 /* \_SB_.PCI0.PEG2.Y024 */
                                G026 = Y026 /* \_SB_.PCI0.PEG2.Y026 */
                                G028 = Y028 /* \_SB_.PCI0.PEG2.Y028 */
                                G02C = Y02C /* \_SB_.PCI0.PEG2.Y02C */
                                G03C = Y03C /* \_SB_.PCI0.PEG2.Y03C */
                                G03D = Y03D /* \_SB_.PCI0.PEG2.Y03D */
                                G03E = Y03E /* \_SB_.PCI0.PEG2.Y03E */
                                G084 = Y084 /* \_SB_.PCI0.PEG2.Y084 */
                                G08C = Y08C /* \_SB_.PCI0.PEG2.Y08C */
                                G092 = Y092 /* \_SB_.PCI0.PEG2.Y092 */
                                G094 = Y094 /* \_SB_.PCI0.PEG2.Y094 */
                                G098 = Y098 /* \_SB_.PCI0.PEG2.Y098 */
                                G0A2 = Y0A2 /* \_SB_.PCI0.PEG2.Y0A2 */
                                G0A8 = Y0A8 /* \_SB_.PCI0.PEG2.Y0A8 */
                                G0AC = Y0AC /* \_SB_.PCI0.PEG2.Y0AC */
                                G0B0 = Y0B0 /* \_SB_.PCI0.PEG2.Y0B0 */
                                G0B4 = Y0B4 /* \_SB_.PCI0.PEG2.Y0B4 */
                                G0BC = Y0BC /* \_SB_.PCI0.PEG2.Y0BC */
                                G0C8 = Y0C8 /* \_SB_.PCI0.PEG2.Y0C8 */
                                G0D0 = Y0D0 /* \_SB_.PCI0.PEG2.Y0D0 */
                                G0EC = Y0EC /* \_SB_.PCI0.PEG2.Y0EC */
                                G114 = Y114 /* \_SB_.PCI0.PEG2.Y114 */
                                G144 = Y144 /* \_SB_.PCI0.PEG2.Y144 */
                                G150 = Y150 /* \_SB_.PCI0.PEG2.Y150 */
                                G158 = Y158 /* \_SB_.PCI0.PEG2.Y158 */
                                G15C = Y15C /* \_SB_.PCI0.PEG2.Y15C */
                                G1CC = Y1CC /* \_SB_.PCI0.PEG2.Y1CC */
                                G1FC = Y1FC /* \_SB_.PCI0.PEG2.Y1FC */
                                G200 = Y200 /* \_SB_.PCI0.PEG2.Y200 */
                                G204 = Y204 /* \_SB_.PCI0.PEG2.Y204 */
                                G208 = Y208 /* \_SB_.PCI0.PEG2.Y208 */
                                G228 = Y228 /* \_SB_.PCI0.PEG2.Y228 */
                                G22C = Y22C /* \_SB_.PCI0.PEG2.Y22C */
                                G238 = Y238 /* \_SB_.PCI0.PEG2.Y238 */
                                G240 = Y240 /* \_SB_.PCI0.PEG2.Y240 */
                                G244 = Y244 /* \_SB_.PCI0.PEG2.Y244 */
                                G250 = Y250 /* \_SB_.PCI0.PEG2.Y250 */
                                G258 = Y258 /* \_SB_.PCI0.PEG2.Y258 */
                                G25C = Y25C /* \_SB_.PCI0.PEG2.Y25C */
                                GCD0 = YCD0 /* \_SB_.PCI0.PEG2.YCD0 */
                                GD34 = YD34 /* \_SB_.PCI0.PEG2.YD34 */
                                GD94 = YD94 /* \_SB_.PCI0.PEG2.YD94 */
                                GD98 = YD98 /* \_SB_.PCI0.PEG2.YD98 */
                                G0F4 = Y0F4 /* \_SB_.PCI0.PEG2.Y0F4 */
                                GDA0 = YDA0 /* \_SB_.PCI0.PEG2.YDA0 */
                                GDA4 = YDA4 /* \_SB_.PCI0.PEG2.YDA4 */
                                GDA8 = YDA8 /* \_SB_.PCI0.PEG2.YDA8 */
                                GDAC = YDAC /* \_SB_.PCI0.PEG2.YDAC */
                                GDB0 = YDB0 /* \_SB_.PCI0.PEG2.YDB0 */
                                GDB4 = YDB4 /* \_SB_.PCI0.PEG2.YDB4 */
                                GDB8 = YDB8 /* \_SB_.PCI0.PEG2.YDB8 */
                                GDBC = YDBC /* \_SB_.PCI0.PEG2.YDBC */
                                G004 = Y004 /* \_SB_.PCI0.PEG2.Y004 */
                            }
                        }

                        Method (PUPD, 2, Serialized)
                        {
                            If (Arg0 == 0x00)
                            {
                                PSSR (0x01)
                                P1SR (0x01)
                                GLDS = 0x01
                                Local0 = (Timer + 0x00989680)
                                While (Timer <= Local0)
                                {
                                    If (G214 == 0x00)
                                    {
                                        Break
                                    }
                                }

                                GSQ1 = 0x00
                                GSQ2 = 0x01
                                If (Arg1 == 0x04)
                                {
                                    B4PD = 0x01
                                    B5PD = 0x01
                                    B6PD = 0x01
                                    B7PD = 0x01
                                }

                                If (Arg1 == 0x02)
                                {
                                    B4PD = 0x01
                                    B5PD = 0x01
                                }

                                C7AE = 0x01
                            }
                            Else
                            {
                                C7AE = 0x00
                                PSSR (0x00)
                                P1SR (0x00)
                                G006 = 0x00
                                G01E = 0x00
                                G0AA = 0x00
                                G0C0 = 0x00
                                G0D2 = 0x00
                                G1C4 = 0x00
                                G1D0 = 0x00
                                G1F0 = 0x00
                                GD9C = 0x00
                                G0B2 = 0x00
                                GSQ1 = 0x00
                                GSQ2 = 0x00
                                If (Arg1 == 0x04)
                                {
                                    B4PD = 0x00
                                    B5PD = 0x00
                                    B6PD = 0x00
                                    B7PD = 0x00
                                }

                                If (Arg1 == 0x02)
                                {
                                    B4PD = 0x00
                                    B5PD = 0x00
                                }

                                GLDS = 0x00
                                G508 = 0x01
                                Local1 = (Timer + 0x000F4240)
                                While (Timer <= Local1)
                                {
                                    If (G11A == 0x00)
                                    {
                                        Break
                                    }
                                }
                            }
                        }

                        Name (_ADR, 0x00)  // _ADR: Address
                        Name (_STR, Unicode ("Thunderbolt"))  // _STR: Description String
                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            Return (0x00)
                        }

                        OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                        Field (A1E0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   32, 
                            BMIE,   3, 
                            Offset (0x18), 
                            PRIB,   8, 
                            SECB,   8, 
                            SUBB,   8, 
                            Offset (0x1E), 
                                ,   13, 
                            MABT,   1
                        }

                        Method (TRPE, 2, Serialized)
                        {
                            If (OSDW ())
                            {
                                If (Arg0 <= 0x01)
                                {
                                    If (Arg0 == 0x00)
                                    {
                                        PUPD (0x00, 0x02)
                                        \_SB.PCI0.PEG2.PSTA = 0x03
                                        GP23 = 0x00
                                    }
                                    Else
                                    {
                                        Local0 = 0x00
                                        If (GP23 == 0x00)
                                        {
                                            \_SB.PCI0.PEG2.PSTA = 0x00
                                            While (0x01)
                                            {
                                                GP23 = 0x01
                                                Local1 = 0x00
                                                Sleep (0x1E)
                                                PUPD (0x01, 0x02)
                                                Local2 = (Timer + 0x00989680)
                                                While (Timer <= Local2)
                                                {
                                                    If (\_SB.PCI0.PEG2.LACR == 0x00)
                                                    {
                                                        If (\_SB.PCI0.PEG2.LTRN != 0x01)
                                                        {
                                                            Break
                                                        }
                                                    }
                                                    ElseIf ((\_SB.PCI0.PEG2.LTRN != 0x01) && (\_SB.PCI0.PEG2.LACT == 0x01))
                                                    {
                                                        Break
                                                    }

                                                    Sleep (0x0A)
                                                }

                                                Sleep (Arg1)
                                                While (Timer <= Local2)
                                                {
                                                    If (\_SB.PCI0.PEG2.UPSB.AVND != 0xFFFFFFFF)
                                                    {
                                                        Local1 = 0x01
                                                        Break
                                                    }

                                                    Sleep (0x0A)
                                                }

                                                If (Local1 == 0x01)
                                                {
                                                    MABT = 0x01
                                                    Break
                                                }

                                                If (Local0 == 0x04)
                                                {
                                                    Return (Zero)
                                                }

                                                Local0++
                                                GP23 = 0x00
                                                Sleep (0x03E8)
                                            }

                                            If (\_SB.PCI0.PEG2.CSPD == 0x01)
                                            {
                                                If (\_SB.PCI0.PEG2.SSPD == 0x02)
                                                {
                                                    If (\_SB.PCI0.PEG2.UPSB.SSPD == 0x02)
                                                    {
                                                        If (\_SB.PCI0.PEG2.TSPD != 0x02)
                                                        {
                                                            \_SB.PCI0.PEG2.TSPD = 0x02
                                                        }

                                                        If (\_SB.PCI0.PEG2.UPSB.TSPD != 0x02)
                                                        {
                                                            \_SB.PCI0.PEG2.UPSB.TSPD = 0x02
                                                        }

                                                        \_SB.PCI0.PEG2.LRTN = 0x01
                                                        Local2 = (Timer + 0x00989680)
                                                        While (Timer <= Local2)
                                                        {
                                                            If (\_SB.PCI0.PEG2.LACR == 0x00)
                                                            {
                                                                If ((\_SB.PCI0.PEG2.LTRN != 0x01) && (\_SB.PCI0.PEG2.UPSB.AVND != 0xFFFFFFFF))
                                                                {
                                                                    Local1 = 0x01
                                                                    Break
                                                                }
                                                            }
                                                            ElseIf (((\_SB.PCI0.PEG2.LTRN != 0x01) && (\_SB.PCI0.PEG2.LACT == 0x01)) && 
                                                                (\_SB.PCI0.PEG2.UPSB.AVND != 0xFFFFFFFF))
                                                            {
                                                                Local1 = 0x01
                                                                Break
                                                            }

                                                            Sleep (0x0A)
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            Return (Zero)
                        }

                        Method (XRIP, 1, Serialized)
                        {
                            If (Arg0 <= 0x01)
                            {
                                GI04 = Arg0
                            }
                        }

                        Method (XRIO, 1, Serialized)
                        {
                            If (Arg0 <= 0x01)
                            {
                                GD04 = Arg0
                            }
                        }

                        Method (XRIL, 0, Serialized)
                        {
                            Return (GP04) /* External reference */
                        }

                        Name (XRIN, 0x14)
                        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                        {
                            If (OSDW ())
                            {
                                Local0 = Package (0x03)
                                    {
                                        "power-save", 
                                        0x01, 
                                        Buffer (0x01)
                                        {
                                             0x00                                             /* . */
                                        }
                                    }
                                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                                Return (Local0)
                            }

                            Return (0x00)
                        }

                        Method (SXFP, 1, Serialized)
                        {
                            If (Arg0 == 0x00)
                            {
                                GP23 = 0x00
                            }
                        }
                    }
                }

                Device (DSB1)
                {
                    Name (_ADR, 0x00030000)  // _ADR: Address
                    Name (_SUN, 0x02)  // _SUN: Slot User Number
                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                        Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                        Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                    {
                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB1.SECB */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }

                    Device (UPS0)
                    {
                        Name (_ADR, 0x00)  // _ADR: Address
                        OperationRegion (ARE0, PCI_Config, 0x00, 0x04)
                        Field (ARE0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   16
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (0x01)
                            }

                            Return (0x00)
                        }

                        Device (DSB0)
                        {
                            Name (_ADR, 0x00)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1, 
                                Offset (0x3E), 
                                    ,   6, 
                                SBRS,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB1.UPS0.DSB0.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x01)
                                }

                                Return (0x00)
                            }

                            Device (DEV0)
                            {
                                Name (_ADR, 0x00)  // _ADR: Address
                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (0x01)
                                    }

                                    Return (0x00)
                                }
                            }
                        }

                        Device (DSB3)
                        {
                            Name (_ADR, 0x00030000)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB1.UPS0.DSB3.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x01)
                                }

                                Return (0x00)
                            }

                            Device (UPS0)
                            {
                                Name (_ADR, 0x00)  // _ADR: Address
                                OperationRegion (ARE0, PCI_Config, 0x00, 0x04)
                                Field (ARE0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   16
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (0x01)
                                    }

                                    Return (0x00)
                                }

                                Device (DSB0)
                                {
                                    Name (_ADR, 0x00)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1, 
                                        Offset (0x3E), 
                                            ,   6, 
                                        SBRS,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB1.UPS0.DSB3.UPS0.DSB0.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, 0x00)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }
                                    }
                                }

                                Device (DSB3)
                                {
                                    Name (_ADR, 0x00030000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB1.UPS0.DSB3.UPS0.DSB3.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, 0x00)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            If (OSDW ())
                                            {
                                                Return (0x01)
                                            }

                                            Return (0x00)
                                        }
                                    }
                                }

                                Device (DSB4)
                                {
                                    Name (_ADR, 0x00040000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB1.UPS0.DSB3.UPS0.DSB4.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, 0x00)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            If (OSDW ())
                                            {
                                                Return (0x01)
                                            }

                                            Return (0x00)
                                        }
                                    }
                                }

                                Device (DSB5)
                                {
                                    Name (_ADR, 0x00050000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB1.UPS0.DSB3.UPS0.DSB5.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x0F)
                                        }
                                        Else
                                        {
                                            Return (0x09)
                                        }
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }
                                }

                                Device (DSB6)
                                {
                                    Name (_ADR, 0x00060000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB1.UPS0.DSB3.UPS0.DSB6.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x0F)
                                        }
                                        Else
                                        {
                                            Return (0x09)
                                        }
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }
                                }
                            }
                        }

                        Device (DSB4)
                        {
                            Name (_ADR, 0x00040000)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB1.UPS0.DSB4.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x01)
                                }

                                Return (0x00)
                            }

                            Device (UPS0)
                            {
                                Name (_ADR, 0x00)  // _ADR: Address
                                OperationRegion (ARE0, PCI_Config, 0x00, 0x04)
                                Field (ARE0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   16
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (0x01)
                                    }

                                    Return (0x00)
                                }

                                Device (DSB0)
                                {
                                    Name (_ADR, 0x00)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1, 
                                        Offset (0x3E), 
                                            ,   6, 
                                        SBRS,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB1.UPS0.DSB4.UPS0.DSB0.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, 0x00)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            If (OSDW ())
                                            {
                                                Return (0x01)
                                            }

                                            Return (0x00)
                                        }
                                    }
                                }

                                Device (DSB3)
                                {
                                    Name (_ADR, 0x00030000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB1.UPS0.DSB4.UPS0.DSB3.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, 0x00)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            If (OSDW ())
                                            {
                                                Return (0x01)
                                            }

                                            Return (0x00)
                                        }
                                    }
                                }

                                Device (DSB4)
                                {
                                    Name (_ADR, 0x00040000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB1.UPS0.DSB4.UPS0.DSB4.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, 0x00)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            If (OSDW ())
                                            {
                                                Return (0x01)
                                            }

                                            Return (0x00)
                                        }
                                    }
                                }

                                Device (DSB5)
                                {
                                    Name (_ADR, 0x00050000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB1.UPS0.DSB4.UPS0.DSB5.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x0F)
                                        }
                                        Else
                                        {
                                            Return (0x09)
                                        }
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }
                                }

                                Device (DSB6)
                                {
                                    Name (_ADR, 0x00060000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB1.UPS0.DSB4.UPS0.DSB6.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x0F)
                                        }
                                        Else
                                        {
                                            Return (0x09)
                                        }
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }
                                }
                            }
                        }

                        Device (DSB5)
                        {
                            Name (_ADR, 0x00050000)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB1.UPS0.DSB5.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x0F)
                                }
                                Else
                                {
                                    Return (0x09)
                                }
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x01)
                                }

                                Return (0x00)
                            }
                        }

                        Device (DSB6)
                        {
                            Name (_ADR, 0x00060000)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB1.UPS0.DSB6.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x0F)
                                }
                                Else
                                {
                                    Return (0x09)
                                }
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x01)
                                }

                                Return (0x00)
                            }
                        }
                    }
                }

                Device (DSB2)
                {
                    Name (_ADR, 0x00040000)  // _ADR: Address
                    Name (_SUN, 0x03)  // _SUN: Slot User Number
                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                        Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                        Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                    {
                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB2.SECB */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }

                    Device (UPS0)
                    {
                        Name (_ADR, 0x00)  // _ADR: Address
                        OperationRegion (ARE0, PCI_Config, 0x00, 0x04)
                        Field (ARE0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   16
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (0x01)
                            }

                            Return (0x00)
                        }

                        Device (DSB0)
                        {
                            Name (_ADR, 0x00)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1, 
                                Offset (0x3E), 
                                    ,   6, 
                                SBRS,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB2.UPS0.DSB0.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x01)
                                }

                                Return (0x00)
                            }

                            Device (DEV0)
                            {
                                Name (_ADR, 0x00)  // _ADR: Address
                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (0x01)
                                    }

                                    Return (0x00)
                                }
                            }
                        }

                        Device (DSB3)
                        {
                            Name (_ADR, 0x00030000)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB2.UPS0.DSB3.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x01)
                                }

                                Return (0x00)
                            }

                            Device (UPS0)
                            {
                                Name (_ADR, 0x00)  // _ADR: Address
                                OperationRegion (ARE0, PCI_Config, 0x00, 0x04)
                                Field (ARE0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   16
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (0x01)
                                    }

                                    Return (0x00)
                                }

                                Device (DSB0)
                                {
                                    Name (_ADR, 0x00)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1, 
                                        Offset (0x3E), 
                                            ,   6, 
                                        SBRS,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB2.UPS0.DSB3.UPS0.DSB0.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, 0x00)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }
                                    }
                                }

                                Device (DSB3)
                                {
                                    Name (_ADR, 0x00030000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB2.UPS0.DSB3.UPS0.DSB3.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, 0x00)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            If (OSDW ())
                                            {
                                                Return (0x01)
                                            }

                                            Return (0x00)
                                        }
                                    }
                                }

                                Device (DSB4)
                                {
                                    Name (_ADR, 0x00040000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB2.UPS0.DSB3.UPS0.DSB4.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, 0x00)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            If (OSDW ())
                                            {
                                                Return (0x01)
                                            }

                                            Return (0x00)
                                        }
                                    }
                                }

                                Device (DSB5)
                                {
                                    Name (_ADR, 0x00050000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB2.UPS0.DSB3.UPS0.DSB5.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x0F)
                                        }
                                        Else
                                        {
                                            Return (0x09)
                                        }
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }
                                }

                                Device (DSB6)
                                {
                                    Name (_ADR, 0x00060000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB2.UPS0.DSB3.UPS0.DSB6.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x0F)
                                        }
                                        Else
                                        {
                                            Return (0x09)
                                        }
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }
                                }
                            }
                        }

                        Device (DSB4)
                        {
                            Name (_ADR, 0x00040000)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB2.UPS0.DSB4.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x01)
                                }

                                Return (0x00)
                            }

                            Device (UPS0)
                            {
                                Name (_ADR, 0x00)  // _ADR: Address
                                OperationRegion (ARE0, PCI_Config, 0x00, 0x04)
                                Field (ARE0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   16
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (0x01)
                                    }

                                    Return (0x00)
                                }

                                Device (DSB0)
                                {
                                    Name (_ADR, 0x00)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1, 
                                        Offset (0x3E), 
                                            ,   6, 
                                        SBRS,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB2.UPS0.DSB4.UPS0.DSB0.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, 0x00)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            If (OSDW ())
                                            {
                                                Return (0x01)
                                            }

                                            Return (0x00)
                                        }
                                    }
                                }

                                Device (DSB3)
                                {
                                    Name (_ADR, 0x00030000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB2.UPS0.DSB4.UPS0.DSB3.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, 0x00)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            If (OSDW ())
                                            {
                                                Return (0x01)
                                            }

                                            Return (0x00)
                                        }
                                    }
                                }

                                Device (DSB4)
                                {
                                    Name (_ADR, 0x00040000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB2.UPS0.DSB4.UPS0.DSB4.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, 0x00)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            If (OSDW ())
                                            {
                                                Return (0x01)
                                            }

                                            Return (0x00)
                                        }
                                    }
                                }

                                Device (DSB5)
                                {
                                    Name (_ADR, 0x00050000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB2.UPS0.DSB4.UPS0.DSB5.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x0F)
                                        }
                                        Else
                                        {
                                            Return (0x09)
                                        }
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }
                                }

                                Device (DSB6)
                                {
                                    Name (_ADR, 0x00060000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB2.UPS0.DSB4.UPS0.DSB6.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x0F)
                                        }
                                        Else
                                        {
                                            Return (0x09)
                                        }
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }
                                }
                            }
                        }

                        Device (DSB5)
                        {
                            Name (_ADR, 0x00050000)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB2.UPS0.DSB5.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x0F)
                                }
                                Else
                                {
                                    Return (0x09)
                                }
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x01)
                                }

                                Return (0x00)
                            }
                        }

                        Device (DSB6)
                        {
                            Name (_ADR, 0x00060000)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB2.UPS0.DSB6.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x0F)
                                }
                                Else
                                {
                                    Return (0x09)
                                }
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x01)
                                }

                                Return (0x00)
                            }
                        }
                    }
                }

                Device (DSB3)
                {
                    Name (_ADR, 0x00050000)  // _ADR: Address
                    Name (_SUN, 0x04)  // _SUN: Slot User Number
                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }

                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                        Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                        Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                    {
                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB3.SECB */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Device (UPS0)
                    {
                        Name (_ADR, 0x00)  // _ADR: Address
                        OperationRegion (ARE0, PCI_Config, 0x00, 0x04)
                        Field (ARE0, ByteAcc, NoLock, Preserve)
                        {
                            AVND,   16
                        }

                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                        {
                            If (OSDW ())
                            {
                                Return (0x01)
                            }

                            Return (0x00)
                        }

                        Device (DSB0)
                        {
                            Name (_ADR, 0x00)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1, 
                                Offset (0x3E), 
                                    ,   6, 
                                SBRS,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB3.UPS0.DSB0.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x01)
                                }

                                Return (0x00)
                            }

                            Device (DEV0)
                            {
                                Name (_ADR, 0x00)  // _ADR: Address
                                Method (_STA, 0, NotSerialized)  // _STA: Status
                                {
                                    Return (0x0F)
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (0x01)
                                    }

                                    Return (0x00)
                                }
                            }
                        }

                        Device (DSB3)
                        {
                            Name (_ADR, 0x00030000)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB3.UPS0.DSB3.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x01)
                                }

                                Return (0x00)
                            }

                            Device (UPS0)
                            {
                                Name (_ADR, 0x00)  // _ADR: Address
                                OperationRegion (ARE0, PCI_Config, 0x00, 0x04)
                                Field (ARE0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   16
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (0x01)
                                    }

                                    Return (0x00)
                                }

                                Device (DSB0)
                                {
                                    Name (_ADR, 0x00)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1, 
                                        Offset (0x3E), 
                                            ,   6, 
                                        SBRS,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB3.UPS0.DSB3.UPS0.DSB0.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, 0x00)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }
                                    }
                                }

                                Device (DSB3)
                                {
                                    Name (_ADR, 0x00030000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB3.UPS0.DSB3.UPS0.DSB3.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, 0x00)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            If (OSDW ())
                                            {
                                                Return (0x01)
                                            }

                                            Return (0x00)
                                        }
                                    }
                                }

                                Device (DSB4)
                                {
                                    Name (_ADR, 0x00040000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB3.UPS0.DSB3.UPS0.DSB4.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, 0x00)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            If (OSDW ())
                                            {
                                                Return (0x01)
                                            }

                                            Return (0x00)
                                        }
                                    }
                                }

                                Device (DSB5)
                                {
                                    Name (_ADR, 0x00050000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB3.UPS0.DSB3.UPS0.DSB5.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x0F)
                                        }
                                        Else
                                        {
                                            Return (0x09)
                                        }
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }
                                }

                                Device (DSB6)
                                {
                                    Name (_ADR, 0x00060000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB3.UPS0.DSB3.UPS0.DSB6.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x0F)
                                        }
                                        Else
                                        {
                                            Return (0x09)
                                        }
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }
                                }
                            }
                        }

                        Device (DSB4)
                        {
                            Name (_ADR, 0x00040000)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB3.UPS0.DSB4.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                Return (0x0F)
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x01)
                                }

                                Return (0x00)
                            }

                            Device (UPS0)
                            {
                                Name (_ADR, 0x00)  // _ADR: Address
                                OperationRegion (ARE0, PCI_Config, 0x00, 0x04)
                                Field (ARE0, ByteAcc, NoLock, Preserve)
                                {
                                    AVND,   16
                                }

                                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                {
                                    If (OSDW ())
                                    {
                                        Return (0x01)
                                    }

                                    Return (0x00)
                                }

                                Device (DSB0)
                                {
                                    Name (_ADR, 0x00)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1, 
                                        Offset (0x3E), 
                                            ,   6, 
                                        SBRS,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB3.UPS0.DSB4.UPS0.DSB0.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, 0x00)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            If (OSDW ())
                                            {
                                                Return (0x01)
                                            }

                                            Return (0x00)
                                        }
                                    }
                                }

                                Device (DSB3)
                                {
                                    Name (_ADR, 0x00030000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB3.UPS0.DSB4.UPS0.DSB3.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, 0x00)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            If (OSDW ())
                                            {
                                                Return (0x01)
                                            }

                                            Return (0x00)
                                        }
                                    }
                                }

                                Device (DSB4)
                                {
                                    Name (_ADR, 0x00040000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB3.UPS0.DSB4.UPS0.DSB4.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        Return (0x0F)
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }

                                    Device (DEV0)
                                    {
                                        Name (_ADR, 0x00)  // _ADR: Address
                                        Method (_STA, 0, NotSerialized)  // _STA: Status
                                        {
                                            Return (0x0F)
                                        }

                                        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                        {
                                            If (OSDW ())
                                            {
                                                Return (0x01)
                                            }

                                            Return (0x00)
                                        }
                                    }
                                }

                                Device (DSB5)
                                {
                                    Name (_ADR, 0x00050000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB3.UPS0.DSB4.UPS0.DSB5.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x0F)
                                        }
                                        Else
                                        {
                                            Return (0x09)
                                        }
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }
                                }

                                Device (DSB6)
                                {
                                    Name (_ADR, 0x00060000)  // _ADR: Address
                                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                                    Field (A1E0, ByteAcc, NoLock, Preserve)
                                    {
                                        AVND,   32, 
                                        BMIE,   3, 
                                        Offset (0x18), 
                                        PRIB,   8, 
                                        SECB,   8, 
                                        SUBB,   8, 
                                        Offset (0x1E), 
                                            ,   13, 
                                        MABT,   1
                                    }

                                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                                    {
                                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB3.UPS0.DSB4.UPS0.DSB6.SECB */
                                    }

                                    Method (_STA, 0, NotSerialized)  // _STA: Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x0F)
                                        }
                                        Else
                                        {
                                            Return (0x09)
                                        }
                                    }

                                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                                    {
                                        If (OSDW ())
                                        {
                                            Return (0x01)
                                        }

                                        Return (0x00)
                                    }
                                }
                            }
                        }

                        Device (DSB5)
                        {
                            Name (_ADR, 0x00050000)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB3.UPS0.DSB5.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x0F)
                                }
                                Else
                                {
                                    Return (0x09)
                                }
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x01)
                                }

                                Return (0x00)
                            }
                        }

                        Device (DSB6)
                        {
                            Name (_ADR, 0x00060000)  // _ADR: Address
                            OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                            Field (A1E0, ByteAcc, NoLock, Preserve)
                            {
                                AVND,   32, 
                                BMIE,   3, 
                                Offset (0x18), 
                                PRIB,   8, 
                                SECB,   8, 
                                SUBB,   8, 
                                Offset (0x1E), 
                                    ,   13, 
                                MABT,   1
                            }

                            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                            {
                                Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB3.UPS0.DSB6.SECB */
                            }

                            Method (_STA, 0, NotSerialized)  // _STA: Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x0F)
                                }
                                Else
                                {
                                    Return (0x09)
                                }
                            }

                            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                            {
                                If (OSDW ())
                                {
                                    Return (0x01)
                                }

                                Return (0x00)
                            }
                        }
                    }
                }

                Device (DSB4)
                {
                    Name (_ADR, 0x00060000)  // _ADR: Address
                    Name (_SUN, 0x05)  // _SUN: Slot User Number
                    OperationRegion (A1E0, PCI_Config, 0x00, 0x40)
                    Field (A1E0, ByteAcc, NoLock, Preserve)
                    {
                        AVND,   32, 
                        BMIE,   3, 
                        Offset (0x18), 
                        PRIB,   8, 
                        SECB,   8, 
                        SUBB,   8, 
                        Offset (0x1E), 
                            ,   13, 
                        MABT,   1
                    }

                    Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
                    {
                        Return (SECB) /* \_SB_.PCI0.PEG2.UPSB.DSB4.SECB */
                    }

                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (OSDW ())
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (0x09)
                        }
                    }

                    Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                    {
                        Return (0x00)
                    }
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If (OSDW ())
                    {
                        If (Arg0 == ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b"))
                        {
                            Local0 = Package (0x02)
                                {
                                    "PCI-Thunderbolt", 
                                    0x01
                                }
                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }
                    }

                    Return (0x00)
                }
            }
        }
    }
}

