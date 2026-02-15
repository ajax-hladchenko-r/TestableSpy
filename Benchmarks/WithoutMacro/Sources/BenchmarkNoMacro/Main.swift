import Foundation

@main struct BenchmarkNoMacro {
    static func main() async throws {
        let m0 = BenchmarkMock_0()
        m0.runReturn = "ok"
        let r0 = try await m0.run(value: 0)
        assert(r0 == "ok")
        assert(m0.runCallCount == 1)
        let m1 = BenchmarkMock_1()
        m1.runReturn = "ok"
        let r1 = try await m1.run(value: 1)
        assert(r1 == "ok")
        assert(m1.runCallCount == 1)
        let m2 = BenchmarkMock_2()
        m2.runReturn = "ok"
        let r2 = try await m2.run(value: 2)
        assert(r2 == "ok")
        assert(m2.runCallCount == 1)
        let m3 = BenchmarkMock_3()
        m3.runReturn = "ok"
        let r3 = try await m3.run(value: 3)
        assert(r3 == "ok")
        assert(m3.runCallCount == 1)
        let m4 = BenchmarkMock_4()
        m4.runReturn = "ok"
        let r4 = try await m4.run(value: 4)
        assert(r4 == "ok")
        assert(m4.runCallCount == 1)
        let m5 = BenchmarkMock_5()
        m5.runReturn = "ok"
        let r5 = try await m5.run(value: 5)
        assert(r5 == "ok")
        assert(m5.runCallCount == 1)
        let m6 = BenchmarkMock_6()
        m6.runReturn = "ok"
        let r6 = try await m6.run(value: 6)
        assert(r6 == "ok")
        assert(m6.runCallCount == 1)
        let m7 = BenchmarkMock_7()
        m7.runReturn = "ok"
        let r7 = try await m7.run(value: 7)
        assert(r7 == "ok")
        assert(m7.runCallCount == 1)
        let m8 = BenchmarkMock_8()
        m8.runReturn = "ok"
        let r8 = try await m8.run(value: 8)
        assert(r8 == "ok")
        assert(m8.runCallCount == 1)
        let m9 = BenchmarkMock_9()
        m9.runReturn = "ok"
        let r9 = try await m9.run(value: 9)
        assert(r9 == "ok")
        assert(m9.runCallCount == 1)
        let m10 = BenchmarkMock_10()
        m10.runReturn = "ok"
        let r10 = try await m10.run(value: 10)
        assert(r10 == "ok")
        assert(m10.runCallCount == 1)
        let m11 = BenchmarkMock_11()
        m11.runReturn = "ok"
        let r11 = try await m11.run(value: 11)
        assert(r11 == "ok")
        assert(m11.runCallCount == 1)
        let m12 = BenchmarkMock_12()
        m12.runReturn = "ok"
        let r12 = try await m12.run(value: 12)
        assert(r12 == "ok")
        assert(m12.runCallCount == 1)
        let m13 = BenchmarkMock_13()
        m13.runReturn = "ok"
        let r13 = try await m13.run(value: 13)
        assert(r13 == "ok")
        assert(m13.runCallCount == 1)
        let m14 = BenchmarkMock_14()
        m14.runReturn = "ok"
        let r14 = try await m14.run(value: 14)
        assert(r14 == "ok")
        assert(m14.runCallCount == 1)
        let m15 = BenchmarkMock_15()
        m15.runReturn = "ok"
        let r15 = try await m15.run(value: 15)
        assert(r15 == "ok")
        assert(m15.runCallCount == 1)
        let m16 = BenchmarkMock_16()
        m16.runReturn = "ok"
        let r16 = try await m16.run(value: 16)
        assert(r16 == "ok")
        assert(m16.runCallCount == 1)
        let m17 = BenchmarkMock_17()
        m17.runReturn = "ok"
        let r17 = try await m17.run(value: 17)
        assert(r17 == "ok")
        assert(m17.runCallCount == 1)
        let m18 = BenchmarkMock_18()
        m18.runReturn = "ok"
        let r18 = try await m18.run(value: 18)
        assert(r18 == "ok")
        assert(m18.runCallCount == 1)
        let m19 = BenchmarkMock_19()
        m19.runReturn = "ok"
        let r19 = try await m19.run(value: 19)
        assert(r19 == "ok")
        assert(m19.runCallCount == 1)
        let m20 = BenchmarkMock_20()
        m20.runReturn = "ok"
        let r20 = try await m20.run(value: 20)
        assert(r20 == "ok")
        assert(m20.runCallCount == 1)
        let m21 = BenchmarkMock_21()
        m21.runReturn = "ok"
        let r21 = try await m21.run(value: 21)
        assert(r21 == "ok")
        assert(m21.runCallCount == 1)
        let m22 = BenchmarkMock_22()
        m22.runReturn = "ok"
        let r22 = try await m22.run(value: 22)
        assert(r22 == "ok")
        assert(m22.runCallCount == 1)
        let m23 = BenchmarkMock_23()
        m23.runReturn = "ok"
        let r23 = try await m23.run(value: 23)
        assert(r23 == "ok")
        assert(m23.runCallCount == 1)
        let m24 = BenchmarkMock_24()
        m24.runReturn = "ok"
        let r24 = try await m24.run(value: 24)
        assert(r24 == "ok")
        assert(m24.runCallCount == 1)
        let m25 = BenchmarkMock_25()
        m25.runReturn = "ok"
        let r25 = try await m25.run(value: 25)
        assert(r25 == "ok")
        assert(m25.runCallCount == 1)
        let m26 = BenchmarkMock_26()
        m26.runReturn = "ok"
        let r26 = try await m26.run(value: 26)
        assert(r26 == "ok")
        assert(m26.runCallCount == 1)
        let m27 = BenchmarkMock_27()
        m27.runReturn = "ok"
        let r27 = try await m27.run(value: 27)
        assert(r27 == "ok")
        assert(m27.runCallCount == 1)
        let m28 = BenchmarkMock_28()
        m28.runReturn = "ok"
        let r28 = try await m28.run(value: 28)
        assert(r28 == "ok")
        assert(m28.runCallCount == 1)
        let m29 = BenchmarkMock_29()
        m29.runReturn = "ok"
        let r29 = try await m29.run(value: 29)
        assert(r29 == "ok")
        assert(m29.runCallCount == 1)
        let m30 = BenchmarkMock_30()
        m30.runReturn = "ok"
        let r30 = try await m30.run(value: 30)
        assert(r30 == "ok")
        assert(m30.runCallCount == 1)
        let m31 = BenchmarkMock_31()
        m31.runReturn = "ok"
        let r31 = try await m31.run(value: 31)
        assert(r31 == "ok")
        assert(m31.runCallCount == 1)
        let m32 = BenchmarkMock_32()
        m32.runReturn = "ok"
        let r32 = try await m32.run(value: 32)
        assert(r32 == "ok")
        assert(m32.runCallCount == 1)
        let m33 = BenchmarkMock_33()
        m33.runReturn = "ok"
        let r33 = try await m33.run(value: 33)
        assert(r33 == "ok")
        assert(m33.runCallCount == 1)
        let m34 = BenchmarkMock_34()
        m34.runReturn = "ok"
        let r34 = try await m34.run(value: 34)
        assert(r34 == "ok")
        assert(m34.runCallCount == 1)
        let m35 = BenchmarkMock_35()
        m35.runReturn = "ok"
        let r35 = try await m35.run(value: 35)
        assert(r35 == "ok")
        assert(m35.runCallCount == 1)
        let m36 = BenchmarkMock_36()
        m36.runReturn = "ok"
        let r36 = try await m36.run(value: 36)
        assert(r36 == "ok")
        assert(m36.runCallCount == 1)
        let m37 = BenchmarkMock_37()
        m37.runReturn = "ok"
        let r37 = try await m37.run(value: 37)
        assert(r37 == "ok")
        assert(m37.runCallCount == 1)
        let m38 = BenchmarkMock_38()
        m38.runReturn = "ok"
        let r38 = try await m38.run(value: 38)
        assert(r38 == "ok")
        assert(m38.runCallCount == 1)
        let m39 = BenchmarkMock_39()
        m39.runReturn = "ok"
        let r39 = try await m39.run(value: 39)
        assert(r39 == "ok")
        assert(m39.runCallCount == 1)
        let m40 = BenchmarkMock_40()
        m40.runReturn = "ok"
        let r40 = try await m40.run(value: 40)
        assert(r40 == "ok")
        assert(m40.runCallCount == 1)
        let m41 = BenchmarkMock_41()
        m41.runReturn = "ok"
        let r41 = try await m41.run(value: 41)
        assert(r41 == "ok")
        assert(m41.runCallCount == 1)
        let m42 = BenchmarkMock_42()
        m42.runReturn = "ok"
        let r42 = try await m42.run(value: 42)
        assert(r42 == "ok")
        assert(m42.runCallCount == 1)
        let m43 = BenchmarkMock_43()
        m43.runReturn = "ok"
        let r43 = try await m43.run(value: 43)
        assert(r43 == "ok")
        assert(m43.runCallCount == 1)
        let m44 = BenchmarkMock_44()
        m44.runReturn = "ok"
        let r44 = try await m44.run(value: 44)
        assert(r44 == "ok")
        assert(m44.runCallCount == 1)
        let m45 = BenchmarkMock_45()
        m45.runReturn = "ok"
        let r45 = try await m45.run(value: 45)
        assert(r45 == "ok")
        assert(m45.runCallCount == 1)
        let m46 = BenchmarkMock_46()
        m46.runReturn = "ok"
        let r46 = try await m46.run(value: 46)
        assert(r46 == "ok")
        assert(m46.runCallCount == 1)
        let m47 = BenchmarkMock_47()
        m47.runReturn = "ok"
        let r47 = try await m47.run(value: 47)
        assert(r47 == "ok")
        assert(m47.runCallCount == 1)
        let m48 = BenchmarkMock_48()
        m48.runReturn = "ok"
        let r48 = try await m48.run(value: 48)
        assert(r48 == "ok")
        assert(m48.runCallCount == 1)
        let m49 = BenchmarkMock_49()
        m49.runReturn = "ok"
        let r49 = try await m49.run(value: 49)
        assert(r49 == "ok")
        assert(m49.runCallCount == 1)
        let m50 = BenchmarkMock_50()
        m50.runReturn = "ok"
        let r50 = try await m50.run(value: 50)
        assert(r50 == "ok")
        assert(m50.runCallCount == 1)
        let m51 = BenchmarkMock_51()
        m51.runReturn = "ok"
        let r51 = try await m51.run(value: 51)
        assert(r51 == "ok")
        assert(m51.runCallCount == 1)
        let m52 = BenchmarkMock_52()
        m52.runReturn = "ok"
        let r52 = try await m52.run(value: 52)
        assert(r52 == "ok")
        assert(m52.runCallCount == 1)
        let m53 = BenchmarkMock_53()
        m53.runReturn = "ok"
        let r53 = try await m53.run(value: 53)
        assert(r53 == "ok")
        assert(m53.runCallCount == 1)
        let m54 = BenchmarkMock_54()
        m54.runReturn = "ok"
        let r54 = try await m54.run(value: 54)
        assert(r54 == "ok")
        assert(m54.runCallCount == 1)
        let m55 = BenchmarkMock_55()
        m55.runReturn = "ok"
        let r55 = try await m55.run(value: 55)
        assert(r55 == "ok")
        assert(m55.runCallCount == 1)
        let m56 = BenchmarkMock_56()
        m56.runReturn = "ok"
        let r56 = try await m56.run(value: 56)
        assert(r56 == "ok")
        assert(m56.runCallCount == 1)
        let m57 = BenchmarkMock_57()
        m57.runReturn = "ok"
        let r57 = try await m57.run(value: 57)
        assert(r57 == "ok")
        assert(m57.runCallCount == 1)
        let m58 = BenchmarkMock_58()
        m58.runReturn = "ok"
        let r58 = try await m58.run(value: 58)
        assert(r58 == "ok")
        assert(m58.runCallCount == 1)
        let m59 = BenchmarkMock_59()
        m59.runReturn = "ok"
        let r59 = try await m59.run(value: 59)
        assert(r59 == "ok")
        assert(m59.runCallCount == 1)
        let m60 = BenchmarkMock_60()
        m60.runReturn = "ok"
        let r60 = try await m60.run(value: 60)
        assert(r60 == "ok")
        assert(m60.runCallCount == 1)
        let m61 = BenchmarkMock_61()
        m61.runReturn = "ok"
        let r61 = try await m61.run(value: 61)
        assert(r61 == "ok")
        assert(m61.runCallCount == 1)
        let m62 = BenchmarkMock_62()
        m62.runReturn = "ok"
        let r62 = try await m62.run(value: 62)
        assert(r62 == "ok")
        assert(m62.runCallCount == 1)
        let m63 = BenchmarkMock_63()
        m63.runReturn = "ok"
        let r63 = try await m63.run(value: 63)
        assert(r63 == "ok")
        assert(m63.runCallCount == 1)
        let m64 = BenchmarkMock_64()
        m64.runReturn = "ok"
        let r64 = try await m64.run(value: 64)
        assert(r64 == "ok")
        assert(m64.runCallCount == 1)
        let m65 = BenchmarkMock_65()
        m65.runReturn = "ok"
        let r65 = try await m65.run(value: 65)
        assert(r65 == "ok")
        assert(m65.runCallCount == 1)
        let m66 = BenchmarkMock_66()
        m66.runReturn = "ok"
        let r66 = try await m66.run(value: 66)
        assert(r66 == "ok")
        assert(m66.runCallCount == 1)
        let m67 = BenchmarkMock_67()
        m67.runReturn = "ok"
        let r67 = try await m67.run(value: 67)
        assert(r67 == "ok")
        assert(m67.runCallCount == 1)
        let m68 = BenchmarkMock_68()
        m68.runReturn = "ok"
        let r68 = try await m68.run(value: 68)
        assert(r68 == "ok")
        assert(m68.runCallCount == 1)
        let m69 = BenchmarkMock_69()
        m69.runReturn = "ok"
        let r69 = try await m69.run(value: 69)
        assert(r69 == "ok")
        assert(m69.runCallCount == 1)
        let m70 = BenchmarkMock_70()
        m70.runReturn = "ok"
        let r70 = try await m70.run(value: 70)
        assert(r70 == "ok")
        assert(m70.runCallCount == 1)
        let m71 = BenchmarkMock_71()
        m71.runReturn = "ok"
        let r71 = try await m71.run(value: 71)
        assert(r71 == "ok")
        assert(m71.runCallCount == 1)
        let m72 = BenchmarkMock_72()
        m72.runReturn = "ok"
        let r72 = try await m72.run(value: 72)
        assert(r72 == "ok")
        assert(m72.runCallCount == 1)
        let m73 = BenchmarkMock_73()
        m73.runReturn = "ok"
        let r73 = try await m73.run(value: 73)
        assert(r73 == "ok")
        assert(m73.runCallCount == 1)
        let m74 = BenchmarkMock_74()
        m74.runReturn = "ok"
        let r74 = try await m74.run(value: 74)
        assert(r74 == "ok")
        assert(m74.runCallCount == 1)
        let m75 = BenchmarkMock_75()
        m75.runReturn = "ok"
        let r75 = try await m75.run(value: 75)
        assert(r75 == "ok")
        assert(m75.runCallCount == 1)
        let m76 = BenchmarkMock_76()
        m76.runReturn = "ok"
        let r76 = try await m76.run(value: 76)
        assert(r76 == "ok")
        assert(m76.runCallCount == 1)
        let m77 = BenchmarkMock_77()
        m77.runReturn = "ok"
        let r77 = try await m77.run(value: 77)
        assert(r77 == "ok")
        assert(m77.runCallCount == 1)
        let m78 = BenchmarkMock_78()
        m78.runReturn = "ok"
        let r78 = try await m78.run(value: 78)
        assert(r78 == "ok")
        assert(m78.runCallCount == 1)
        let m79 = BenchmarkMock_79()
        m79.runReturn = "ok"
        let r79 = try await m79.run(value: 79)
        assert(r79 == "ok")
        assert(m79.runCallCount == 1)
        let m80 = BenchmarkMock_80()
        m80.runReturn = "ok"
        let r80 = try await m80.run(value: 80)
        assert(r80 == "ok")
        assert(m80.runCallCount == 1)
        let m81 = BenchmarkMock_81()
        m81.runReturn = "ok"
        let r81 = try await m81.run(value: 81)
        assert(r81 == "ok")
        assert(m81.runCallCount == 1)
        let m82 = BenchmarkMock_82()
        m82.runReturn = "ok"
        let r82 = try await m82.run(value: 82)
        assert(r82 == "ok")
        assert(m82.runCallCount == 1)
        let m83 = BenchmarkMock_83()
        m83.runReturn = "ok"
        let r83 = try await m83.run(value: 83)
        assert(r83 == "ok")
        assert(m83.runCallCount == 1)
        let m84 = BenchmarkMock_84()
        m84.runReturn = "ok"
        let r84 = try await m84.run(value: 84)
        assert(r84 == "ok")
        assert(m84.runCallCount == 1)
        let m85 = BenchmarkMock_85()
        m85.runReturn = "ok"
        let r85 = try await m85.run(value: 85)
        assert(r85 == "ok")
        assert(m85.runCallCount == 1)
        let m86 = BenchmarkMock_86()
        m86.runReturn = "ok"
        let r86 = try await m86.run(value: 86)
        assert(r86 == "ok")
        assert(m86.runCallCount == 1)
        let m87 = BenchmarkMock_87()
        m87.runReturn = "ok"
        let r87 = try await m87.run(value: 87)
        assert(r87 == "ok")
        assert(m87.runCallCount == 1)
        let m88 = BenchmarkMock_88()
        m88.runReturn = "ok"
        let r88 = try await m88.run(value: 88)
        assert(r88 == "ok")
        assert(m88.runCallCount == 1)
        let m89 = BenchmarkMock_89()
        m89.runReturn = "ok"
        let r89 = try await m89.run(value: 89)
        assert(r89 == "ok")
        assert(m89.runCallCount == 1)
        let m90 = BenchmarkMock_90()
        m90.runReturn = "ok"
        let r90 = try await m90.run(value: 90)
        assert(r90 == "ok")
        assert(m90.runCallCount == 1)
        let m91 = BenchmarkMock_91()
        m91.runReturn = "ok"
        let r91 = try await m91.run(value: 91)
        assert(r91 == "ok")
        assert(m91.runCallCount == 1)
        let m92 = BenchmarkMock_92()
        m92.runReturn = "ok"
        let r92 = try await m92.run(value: 92)
        assert(r92 == "ok")
        assert(m92.runCallCount == 1)
        let m93 = BenchmarkMock_93()
        m93.runReturn = "ok"
        let r93 = try await m93.run(value: 93)
        assert(r93 == "ok")
        assert(m93.runCallCount == 1)
        let m94 = BenchmarkMock_94()
        m94.runReturn = "ok"
        let r94 = try await m94.run(value: 94)
        assert(r94 == "ok")
        assert(m94.runCallCount == 1)
        let m95 = BenchmarkMock_95()
        m95.runReturn = "ok"
        let r95 = try await m95.run(value: 95)
        assert(r95 == "ok")
        assert(m95.runCallCount == 1)
        let m96 = BenchmarkMock_96()
        m96.runReturn = "ok"
        let r96 = try await m96.run(value: 96)
        assert(r96 == "ok")
        assert(m96.runCallCount == 1)
        let m97 = BenchmarkMock_97()
        m97.runReturn = "ok"
        let r97 = try await m97.run(value: 97)
        assert(r97 == "ok")
        assert(m97.runCallCount == 1)
        let m98 = BenchmarkMock_98()
        m98.runReturn = "ok"
        let r98 = try await m98.run(value: 98)
        assert(r98 == "ok")
        assert(m98.runCallCount == 1)
        let m99 = BenchmarkMock_99()
        m99.runReturn = "ok"
        let r99 = try await m99.run(value: 99)
        assert(r99 == "ok")
        assert(m99.runCallCount == 1)
        print("OK: 100 WithoutMacro assertions passed")
    }
}
