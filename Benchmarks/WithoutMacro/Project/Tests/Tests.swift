import Foundation
import Testing
import Project

struct BenchmarkNoMacro {
    @Test func test_0() async throws {
        let m0 = BenchmarkMock_0()
        m0.runReturn = "ok"
        let r0 = try await m0.run(value: 0)
        #expect(r0 == "ok")
        #expect(m0.runCallCount == 1)
    }
    @Test func test_1() async throws {
        let m1 = BenchmarkMock_1()
        m1.runReturn = "ok"
        let r1 = try await m1.run(value: 1)
        #expect(r1 == "ok")
        #expect(m1.runCallCount == 1)
    }
    @Test func test_2() async throws {
        let m2 = BenchmarkMock_2()
        m2.runReturn = "ok"
        let r2 = try await m2.run(value: 2)
        #expect(r2 == "ok")
        #expect(m2.runCallCount == 1)
    }
    @Test func test_3() async throws {
        let m3 = BenchmarkMock_3()
        m3.runReturn = "ok"
        let r3 = try await m3.run(value: 3)
        #expect(r3 == "ok")
        #expect(m3.runCallCount == 1)
    }
    @Test func test_4() async throws {
        let m4 = BenchmarkMock_4()
        m4.runReturn = "ok"
        let r4 = try await m4.run(value: 4)
        #expect(r4 == "ok")
        #expect(m4.runCallCount == 1)
    }
    @Test func test_5() async throws {
        let m5 = BenchmarkMock_5()
        m5.runReturn = "ok"
        let r5 = try await m5.run(value: 5)
        #expect(r5 == "ok")
        #expect(m5.runCallCount == 1)
    }
    @Test func test_6() async throws {
        let m6 = BenchmarkMock_6()
        m6.runReturn = "ok"
        let r6 = try await m6.run(value: 6)
        #expect(r6 == "ok")
        #expect(m6.runCallCount == 1)
    }
    @Test func test_7() async throws {
        let m7 = BenchmarkMock_7()
        m7.runReturn = "ok"
        let r7 = try await m7.run(value: 7)
        #expect(r7 == "ok")
        #expect(m7.runCallCount == 1)
    }
    @Test func test_8() async throws {
        let m8 = BenchmarkMock_8()
        m8.runReturn = "ok"
        let r8 = try await m8.run(value: 8)
        #expect(r8 == "ok")
        #expect(m8.runCallCount == 1)
    }
    @Test func test_9() async throws {
        let m9 = BenchmarkMock_9()
        m9.runReturn = "ok"
        let r9 = try await m9.run(value: 9)
        #expect(r9 == "ok")
        #expect(m9.runCallCount == 1)
    }
    @Test func test_10() async throws {
        let m10 = BenchmarkMock_10()
        m10.runReturn = "ok"
        let r10 = try await m10.run(value: 10)
        #expect(r10 == "ok")
        #expect(m10.runCallCount == 1)
    }
    @Test func test_11() async throws {
        let m11 = BenchmarkMock_11()
        m11.runReturn = "ok"
        let r11 = try await m11.run(value: 11)
        #expect(r11 == "ok")
        #expect(m11.runCallCount == 1)
    }
    @Test func test_12() async throws {
        let m12 = BenchmarkMock_12()
        m12.runReturn = "ok"
        let r12 = try await m12.run(value: 12)
        #expect(r12 == "ok")
        #expect(m12.runCallCount == 1)
    }
    @Test func test_13() async throws {
        let m13 = BenchmarkMock_13()
        m13.runReturn = "ok"
        let r13 = try await m13.run(value: 13)
        #expect(r13 == "ok")
        #expect(m13.runCallCount == 1)
    }
    @Test func test_14() async throws {
        let m14 = BenchmarkMock_14()
        m14.runReturn = "ok"
        let r14 = try await m14.run(value: 14)
        #expect(r14 == "ok")
        #expect(m14.runCallCount == 1)
    }
    @Test func test_15() async throws {
        let m15 = BenchmarkMock_15()
        m15.runReturn = "ok"
        let r15 = try await m15.run(value: 15)
        #expect(r15 == "ok")
        #expect(m15.runCallCount == 1)
    }
    @Test func test_16() async throws {
        let m16 = BenchmarkMock_16()
        m16.runReturn = "ok"
        let r16 = try await m16.run(value: 16)
        #expect(r16 == "ok")
        #expect(m16.runCallCount == 1)
    }
    @Test func test_17() async throws {
        let m17 = BenchmarkMock_17()
        m17.runReturn = "ok"
        let r17 = try await m17.run(value: 17)
        #expect(r17 == "ok")
        #expect(m17.runCallCount == 1)
    }
    @Test func test_18() async throws {
        let m18 = BenchmarkMock_18()
        m18.runReturn = "ok"
        let r18 = try await m18.run(value: 18)
        #expect(r18 == "ok")
        #expect(m18.runCallCount == 1)
    }
    @Test func test_19() async throws {
        let m19 = BenchmarkMock_19()
        m19.runReturn = "ok"
        let r19 = try await m19.run(value: 19)
        #expect(r19 == "ok")
        #expect(m19.runCallCount == 1)
    }
    @Test func test_20() async throws {
        let m20 = BenchmarkMock_20()
        m20.runReturn = "ok"
        let r20 = try await m20.run(value: 20)
        #expect(r20 == "ok")
        #expect(m20.runCallCount == 1)
    }
    @Test func test_21() async throws {
        let m21 = BenchmarkMock_21()
        m21.runReturn = "ok"
        let r21 = try await m21.run(value: 21)
        #expect(r21 == "ok")
        #expect(m21.runCallCount == 1)
    }
    @Test func test_22() async throws {
        let m22 = BenchmarkMock_22()
        m22.runReturn = "ok"
        let r22 = try await m22.run(value: 22)
        #expect(r22 == "ok")
        #expect(m22.runCallCount == 1)
    }
    @Test func test_23() async throws {
        let m23 = BenchmarkMock_23()
        m23.runReturn = "ok"
        let r23 = try await m23.run(value: 23)
        #expect(r23 == "ok")
        #expect(m23.runCallCount == 1)
    }
    @Test func test_24() async throws {
        let m24 = BenchmarkMock_24()
        m24.runReturn = "ok"
        let r24 = try await m24.run(value: 24)
        #expect(r24 == "ok")
        #expect(m24.runCallCount == 1)
    }
    @Test func test_25() async throws {
        let m25 = BenchmarkMock_25()
        m25.runReturn = "ok"
        let r25 = try await m25.run(value: 25)
        #expect(r25 == "ok")
        #expect(m25.runCallCount == 1)
    }
    @Test func test_26() async throws {
        let m26 = BenchmarkMock_26()
        m26.runReturn = "ok"
        let r26 = try await m26.run(value: 26)
        #expect(r26 == "ok")
        #expect(m26.runCallCount == 1)
    }
    @Test func test_27() async throws {
        let m27 = BenchmarkMock_27()
        m27.runReturn = "ok"
        let r27 = try await m27.run(value: 27)
        #expect(r27 == "ok")
        #expect(m27.runCallCount == 1)
    }
    @Test func test_28() async throws {
        let m28 = BenchmarkMock_28()
        m28.runReturn = "ok"
        let r28 = try await m28.run(value: 28)
        #expect(r28 == "ok")
        #expect(m28.runCallCount == 1)
    }
    @Test func test_29() async throws {
        let m29 = BenchmarkMock_29()
        m29.runReturn = "ok"
        let r29 = try await m29.run(value: 29)
        #expect(r29 == "ok")
        #expect(m29.runCallCount == 1)
    }
    @Test func test_30() async throws {
        let m30 = BenchmarkMock_30()
        m30.runReturn = "ok"
        let r30 = try await m30.run(value: 30)
        #expect(r30 == "ok")
        #expect(m30.runCallCount == 1)
    }
    @Test func test_31() async throws {
        let m31 = BenchmarkMock_31()
        m31.runReturn = "ok"
        let r31 = try await m31.run(value: 31)
        #expect(r31 == "ok")
        #expect(m31.runCallCount == 1)
    }
    @Test func test_32() async throws {
        let m32 = BenchmarkMock_32()
        m32.runReturn = "ok"
        let r32 = try await m32.run(value: 32)
        #expect(r32 == "ok")
        #expect(m32.runCallCount == 1)
    }
    @Test func test_33() async throws {
        let m33 = BenchmarkMock_33()
        m33.runReturn = "ok"
        let r33 = try await m33.run(value: 33)
        #expect(r33 == "ok")
        #expect(m33.runCallCount == 1)
    }
    @Test func test_34() async throws {
        let m34 = BenchmarkMock_34()
        m34.runReturn = "ok"
        let r34 = try await m34.run(value: 34)
        #expect(r34 == "ok")
        #expect(m34.runCallCount == 1)
    }
    @Test func test_35() async throws {
        let m35 = BenchmarkMock_35()
        m35.runReturn = "ok"
        let r35 = try await m35.run(value: 35)
        #expect(r35 == "ok")
        #expect(m35.runCallCount == 1)
    }
    @Test func test_36() async throws {
        let m36 = BenchmarkMock_36()
        m36.runReturn = "ok"
        let r36 = try await m36.run(value: 36)
        #expect(r36 == "ok")
        #expect(m36.runCallCount == 1)
    }
    @Test func test_37() async throws {
        let m37 = BenchmarkMock_37()
        m37.runReturn = "ok"
        let r37 = try await m37.run(value: 37)
        #expect(r37 == "ok")
        #expect(m37.runCallCount == 1)
    }
    @Test func test_38() async throws {
        let m38 = BenchmarkMock_38()
        m38.runReturn = "ok"
        let r38 = try await m38.run(value: 38)
        #expect(r38 == "ok")
        #expect(m38.runCallCount == 1)
    }
    @Test func test_39() async throws {
        let m39 = BenchmarkMock_39()
        m39.runReturn = "ok"
        let r39 = try await m39.run(value: 39)
        #expect(r39 == "ok")
        #expect(m39.runCallCount == 1)
    }
    @Test func test_40() async throws {
        let m40 = BenchmarkMock_40()
        m40.runReturn = "ok"
        let r40 = try await m40.run(value: 40)
        #expect(r40 == "ok")
        #expect(m40.runCallCount == 1)
    }
    @Test func test_41() async throws {
        let m41 = BenchmarkMock_41()
        m41.runReturn = "ok"
        let r41 = try await m41.run(value: 41)
        #expect(r41 == "ok")
        #expect(m41.runCallCount == 1)
    }
    @Test func test_42() async throws {
        let m42 = BenchmarkMock_42()
        m42.runReturn = "ok"
        let r42 = try await m42.run(value: 42)
        #expect(r42 == "ok")
        #expect(m42.runCallCount == 1)
    }
    @Test func test_43() async throws {
        let m43 = BenchmarkMock_43()
        m43.runReturn = "ok"
        let r43 = try await m43.run(value: 43)
        #expect(r43 == "ok")
        #expect(m43.runCallCount == 1)
    }
    @Test func test_44() async throws {
        let m44 = BenchmarkMock_44()
        m44.runReturn = "ok"
        let r44 = try await m44.run(value: 44)
        #expect(r44 == "ok")
        #expect(m44.runCallCount == 1)
    }
    @Test func test_45() async throws {
        let m45 = BenchmarkMock_45()
        m45.runReturn = "ok"
        let r45 = try await m45.run(value: 45)
        #expect(r45 == "ok")
        #expect(m45.runCallCount == 1)
    }
    @Test func test_46() async throws {
        let m46 = BenchmarkMock_46()
        m46.runReturn = "ok"
        let r46 = try await m46.run(value: 46)
        #expect(r46 == "ok")
        #expect(m46.runCallCount == 1)
    }
    @Test func test_47() async throws {
        let m47 = BenchmarkMock_47()
        m47.runReturn = "ok"
        let r47 = try await m47.run(value: 47)
        #expect(r47 == "ok")
        #expect(m47.runCallCount == 1)
    }
    @Test func test_48() async throws {
        let m48 = BenchmarkMock_48()
        m48.runReturn = "ok"
        let r48 = try await m48.run(value: 48)
        #expect(r48 == "ok")
        #expect(m48.runCallCount == 1)
    }
    @Test func test_49() async throws {
        let m49 = BenchmarkMock_49()
        m49.runReturn = "ok"
        let r49 = try await m49.run(value: 49)
        #expect(r49 == "ok")
        #expect(m49.runCallCount == 1)
    }
    @Test func test_50() async throws {
        let m50 = BenchmarkMock_50()
        m50.runReturn = "ok"
        let r50 = try await m50.run(value: 50)
        #expect(r50 == "ok")
        #expect(m50.runCallCount == 1)
    }
    @Test func test_51() async throws {
        let m51 = BenchmarkMock_51()
        m51.runReturn = "ok"
        let r51 = try await m51.run(value: 51)
        #expect(r51 == "ok")
        #expect(m51.runCallCount == 1)
    }
    @Test func test_52() async throws {
        let m52 = BenchmarkMock_52()
        m52.runReturn = "ok"
        let r52 = try await m52.run(value: 52)
        #expect(r52 == "ok")
        #expect(m52.runCallCount == 1)
    }
    @Test func test_53() async throws {
        let m53 = BenchmarkMock_53()
        m53.runReturn = "ok"
        let r53 = try await m53.run(value: 53)
        #expect(r53 == "ok")
        #expect(m53.runCallCount == 1)
    }
    @Test func test_54() async throws {
        let m54 = BenchmarkMock_54()
        m54.runReturn = "ok"
        let r54 = try await m54.run(value: 54)
        #expect(r54 == "ok")
        #expect(m54.runCallCount == 1)
    }
    @Test func test_55() async throws {
        let m55 = BenchmarkMock_55()
        m55.runReturn = "ok"
        let r55 = try await m55.run(value: 55)
        #expect(r55 == "ok")
        #expect(m55.runCallCount == 1)
    }
    @Test func test_56() async throws {
        let m56 = BenchmarkMock_56()
        m56.runReturn = "ok"
        let r56 = try await m56.run(value: 56)
        #expect(r56 == "ok")
        #expect(m56.runCallCount == 1)
    }
    @Test func test_57() async throws {
        let m57 = BenchmarkMock_57()
        m57.runReturn = "ok"
        let r57 = try await m57.run(value: 57)
        #expect(r57 == "ok")
        #expect(m57.runCallCount == 1)
    }
    @Test func test_58() async throws {
        let m58 = BenchmarkMock_58()
        m58.runReturn = "ok"
        let r58 = try await m58.run(value: 58)
        #expect(r58 == "ok")
        #expect(m58.runCallCount == 1)
    }
    @Test func test_59() async throws {
        let m59 = BenchmarkMock_59()
        m59.runReturn = "ok"
        let r59 = try await m59.run(value: 59)
        #expect(r59 == "ok")
        #expect(m59.runCallCount == 1)
    }
    @Test func test_60() async throws {
        let m60 = BenchmarkMock_60()
        m60.runReturn = "ok"
        let r60 = try await m60.run(value: 60)
        #expect(r60 == "ok")
        #expect(m60.runCallCount == 1)
    }
    @Test func test_61() async throws {
        let m61 = BenchmarkMock_61()
        m61.runReturn = "ok"
        let r61 = try await m61.run(value: 61)
        #expect(r61 == "ok")
        #expect(m61.runCallCount == 1)
    }
    @Test func test_62() async throws {
        let m62 = BenchmarkMock_62()
        m62.runReturn = "ok"
        let r62 = try await m62.run(value: 62)
        #expect(r62 == "ok")
        #expect(m62.runCallCount == 1)
    }
    @Test func test_63() async throws {
        let m63 = BenchmarkMock_63()
        m63.runReturn = "ok"
        let r63 = try await m63.run(value: 63)
        #expect(r63 == "ok")
        #expect(m63.runCallCount == 1)
    }
    @Test func test_64() async throws {
        let m64 = BenchmarkMock_64()
        m64.runReturn = "ok"
        let r64 = try await m64.run(value: 64)
        #expect(r64 == "ok")
        #expect(m64.runCallCount == 1)
    }
    @Test func test_65() async throws {
        let m65 = BenchmarkMock_65()
        m65.runReturn = "ok"
        let r65 = try await m65.run(value: 65)
        #expect(r65 == "ok")
        #expect(m65.runCallCount == 1)
    }
    @Test func test_66() async throws {
        let m66 = BenchmarkMock_66()
        m66.runReturn = "ok"
        let r66 = try await m66.run(value: 66)
        #expect(r66 == "ok")
        #expect(m66.runCallCount == 1)
    }
    @Test func test_67() async throws {
        let m67 = BenchmarkMock_67()
        m67.runReturn = "ok"
        let r67 = try await m67.run(value: 67)
        #expect(r67 == "ok")
        #expect(m67.runCallCount == 1)
    }
    @Test func test_68() async throws {
        let m68 = BenchmarkMock_68()
        m68.runReturn = "ok"
        let r68 = try await m68.run(value: 68)
        #expect(r68 == "ok")
        #expect(m68.runCallCount == 1)
    }
    @Test func test_69() async throws {
        let m69 = BenchmarkMock_69()
        m69.runReturn = "ok"
        let r69 = try await m69.run(value: 69)
        #expect(r69 == "ok")
        #expect(m69.runCallCount == 1)
    }
    @Test func test_70() async throws {
        let m70 = BenchmarkMock_70()
        m70.runReturn = "ok"
        let r70 = try await m70.run(value: 70)
        #expect(r70 == "ok")
        #expect(m70.runCallCount == 1)
    }
    @Test func test_71() async throws {
        let m71 = BenchmarkMock_71()
        m71.runReturn = "ok"
        let r71 = try await m71.run(value: 71)
        #expect(r71 == "ok")
        #expect(m71.runCallCount == 1)
    }
    @Test func test_72() async throws {
        let m72 = BenchmarkMock_72()
        m72.runReturn = "ok"
        let r72 = try await m72.run(value: 72)
        #expect(r72 == "ok")
        #expect(m72.runCallCount == 1)
    }
    @Test func test_73() async throws {
        let m73 = BenchmarkMock_73()
        m73.runReturn = "ok"
        let r73 = try await m73.run(value: 73)
        #expect(r73 == "ok")
        #expect(m73.runCallCount == 1)
    }
    @Test func test_74() async throws {
        let m74 = BenchmarkMock_74()
        m74.runReturn = "ok"
        let r74 = try await m74.run(value: 74)
        #expect(r74 == "ok")
        #expect(m74.runCallCount == 1)
    }
    @Test func test_75() async throws {
        let m75 = BenchmarkMock_75()
        m75.runReturn = "ok"
        let r75 = try await m75.run(value: 75)
        #expect(r75 == "ok")
        #expect(m75.runCallCount == 1)
    }
    @Test func test_76() async throws {
        let m76 = BenchmarkMock_76()
        m76.runReturn = "ok"
        let r76 = try await m76.run(value: 76)
        #expect(r76 == "ok")
        #expect(m76.runCallCount == 1)
    }
    @Test func test_77() async throws {
        let m77 = BenchmarkMock_77()
        m77.runReturn = "ok"
        let r77 = try await m77.run(value: 77)
        #expect(r77 == "ok")
        #expect(m77.runCallCount == 1)
    }
    @Test func test_78() async throws {
        let m78 = BenchmarkMock_78()
        m78.runReturn = "ok"
        let r78 = try await m78.run(value: 78)
        #expect(r78 == "ok")
        #expect(m78.runCallCount == 1)
    }
    @Test func test_79() async throws {
        let m79 = BenchmarkMock_79()
        m79.runReturn = "ok"
        let r79 = try await m79.run(value: 79)
        #expect(r79 == "ok")
        #expect(m79.runCallCount == 1)
    }
    @Test func test_80() async throws {
        let m80 = BenchmarkMock_80()
        m80.runReturn = "ok"
        let r80 = try await m80.run(value: 80)
        #expect(r80 == "ok")
        #expect(m80.runCallCount == 1)
    }
    @Test func test_81() async throws {
        let m81 = BenchmarkMock_81()
        m81.runReturn = "ok"
        let r81 = try await m81.run(value: 81)
        #expect(r81 == "ok")
        #expect(m81.runCallCount == 1)
    }
    @Test func test_82() async throws {
        let m82 = BenchmarkMock_82()
        m82.runReturn = "ok"
        let r82 = try await m82.run(value: 82)
        #expect(r82 == "ok")
        #expect(m82.runCallCount == 1)
    }
    @Test func test_83() async throws {
        let m83 = BenchmarkMock_83()
        m83.runReturn = "ok"
        let r83 = try await m83.run(value: 83)
        #expect(r83 == "ok")
        #expect(m83.runCallCount == 1)
    }
    @Test func test_84() async throws {
        let m84 = BenchmarkMock_84()
        m84.runReturn = "ok"
        let r84 = try await m84.run(value: 84)
        #expect(r84 == "ok")
        #expect(m84.runCallCount == 1)
    }
    @Test func test_85() async throws {
        let m85 = BenchmarkMock_85()
        m85.runReturn = "ok"
        let r85 = try await m85.run(value: 85)
        #expect(r85 == "ok")
        #expect(m85.runCallCount == 1)
    }
    @Test func test_86() async throws {
        let m86 = BenchmarkMock_86()
        m86.runReturn = "ok"
        let r86 = try await m86.run(value: 86)
        #expect(r86 == "ok")
        #expect(m86.runCallCount == 1)
    }
    @Test func test_87() async throws {
        let m87 = BenchmarkMock_87()
        m87.runReturn = "ok"
        let r87 = try await m87.run(value: 87)
        #expect(r87 == "ok")
        #expect(m87.runCallCount == 1)
    }
    @Test func test_88() async throws {
        let m88 = BenchmarkMock_88()
        m88.runReturn = "ok"
        let r88 = try await m88.run(value: 88)
        #expect(r88 == "ok")
        #expect(m88.runCallCount == 1)
    }
    @Test func test_89() async throws {
        let m89 = BenchmarkMock_89()
        m89.runReturn = "ok"
        let r89 = try await m89.run(value: 89)
        #expect(r89 == "ok")
        #expect(m89.runCallCount == 1)
    }
    @Test func test_90() async throws {
        let m90 = BenchmarkMock_90()
        m90.runReturn = "ok"
        let r90 = try await m90.run(value: 90)
        #expect(r90 == "ok")
        #expect(m90.runCallCount == 1)
    }
    @Test func test_91() async throws {
        let m91 = BenchmarkMock_91()
        m91.runReturn = "ok"
        let r91 = try await m91.run(value: 91)
        #expect(r91 == "ok")
        #expect(m91.runCallCount == 1)
    }
    @Test func test_92() async throws {
        let m92 = BenchmarkMock_92()
        m92.runReturn = "ok"
        let r92 = try await m92.run(value: 92)
        #expect(r92 == "ok")
        #expect(m92.runCallCount == 1)
    }
    @Test func test_93() async throws {
        let m93 = BenchmarkMock_93()
        m93.runReturn = "ok"
        let r93 = try await m93.run(value: 93)
        #expect(r93 == "ok")
        #expect(m93.runCallCount == 1)
    }
    @Test func test_94() async throws {
        let m94 = BenchmarkMock_94()
        m94.runReturn = "ok"
        let r94 = try await m94.run(value: 94)
        #expect(r94 == "ok")
        #expect(m94.runCallCount == 1)
    }
    @Test func test_95() async throws {
        let m95 = BenchmarkMock_95()
        m95.runReturn = "ok"
        let r95 = try await m95.run(value: 95)
        #expect(r95 == "ok")
        #expect(m95.runCallCount == 1)
    }
    @Test func test_96() async throws {
        let m96 = BenchmarkMock_96()
        m96.runReturn = "ok"
        let r96 = try await m96.run(value: 96)
        #expect(r96 == "ok")
        #expect(m96.runCallCount == 1)
    }
    @Test func test_97() async throws {
        let m97 = BenchmarkMock_97()
        m97.runReturn = "ok"
        let r97 = try await m97.run(value: 97)
        #expect(r97 == "ok")
        #expect(m97.runCallCount == 1)
    }
    @Test func test_98() async throws {
        let m98 = BenchmarkMock_98()
        m98.runReturn = "ok"
        let r98 = try await m98.run(value: 98)
        #expect(r98 == "ok")
        #expect(m98.runCallCount == 1)
    }
    @Test func test_99() async throws {
        let m99 = BenchmarkMock_99()
        m99.runReturn = "ok"
        let r99 = try await m99.run(value: 99)
        #expect(r99 == "ok")
        #expect(m99.runCallCount == 1)
    }
    @Test func test_100() async throws {
        let m100 = BenchmarkMock_100()
        m100.runReturn = "ok"
        let r100 = try await m100.run(value: 100)
        #expect(r100 == "ok")
        #expect(m100.runCallCount == 1)
    }
    @Test func test_101() async throws {
        let m101 = BenchmarkMock_101()
        m101.runReturn = "ok"
        let r101 = try await m101.run(value: 101)
        #expect(r101 == "ok")
        #expect(m101.runCallCount == 1)
    }
    @Test func test_102() async throws {
        let m102 = BenchmarkMock_102()
        m102.runReturn = "ok"
        let r102 = try await m102.run(value: 102)
        #expect(r102 == "ok")
        #expect(m102.runCallCount == 1)
    }
    @Test func test_103() async throws {
        let m103 = BenchmarkMock_103()
        m103.runReturn = "ok"
        let r103 = try await m103.run(value: 103)
        #expect(r103 == "ok")
        #expect(m103.runCallCount == 1)
    }
    @Test func test_104() async throws {
        let m104 = BenchmarkMock_104()
        m104.runReturn = "ok"
        let r104 = try await m104.run(value: 104)
        #expect(r104 == "ok")
        #expect(m104.runCallCount == 1)
    }
    @Test func test_105() async throws {
        let m105 = BenchmarkMock_105()
        m105.runReturn = "ok"
        let r105 = try await m105.run(value: 105)
        #expect(r105 == "ok")
        #expect(m105.runCallCount == 1)
    }
    @Test func test_106() async throws {
        let m106 = BenchmarkMock_106()
        m106.runReturn = "ok"
        let r106 = try await m106.run(value: 106)
        #expect(r106 == "ok")
        #expect(m106.runCallCount == 1)
    }
    @Test func test_107() async throws {
        let m107 = BenchmarkMock_107()
        m107.runReturn = "ok"
        let r107 = try await m107.run(value: 107)
        #expect(r107 == "ok")
        #expect(m107.runCallCount == 1)
    }
    @Test func test_108() async throws {
        let m108 = BenchmarkMock_108()
        m108.runReturn = "ok"
        let r108 = try await m108.run(value: 108)
        #expect(r108 == "ok")
        #expect(m108.runCallCount == 1)
    }
    @Test func test_109() async throws {
        let m109 = BenchmarkMock_109()
        m109.runReturn = "ok"
        let r109 = try await m109.run(value: 109)
        #expect(r109 == "ok")
        #expect(m109.runCallCount == 1)
    }
    @Test func test_110() async throws {
        let m110 = BenchmarkMock_110()
        m110.runReturn = "ok"
        let r110 = try await m110.run(value: 110)
        #expect(r110 == "ok")
        #expect(m110.runCallCount == 1)
    }
    @Test func test_111() async throws {
        let m111 = BenchmarkMock_111()
        m111.runReturn = "ok"
        let r111 = try await m111.run(value: 111)
        #expect(r111 == "ok")
        #expect(m111.runCallCount == 1)
    }
    @Test func test_112() async throws {
        let m112 = BenchmarkMock_112()
        m112.runReturn = "ok"
        let r112 = try await m112.run(value: 112)
        #expect(r112 == "ok")
        #expect(m112.runCallCount == 1)
    }
    @Test func test_113() async throws {
        let m113 = BenchmarkMock_113()
        m113.runReturn = "ok"
        let r113 = try await m113.run(value: 113)
        #expect(r113 == "ok")
        #expect(m113.runCallCount == 1)
    }
    @Test func test_114() async throws {
        let m114 = BenchmarkMock_114()
        m114.runReturn = "ok"
        let r114 = try await m114.run(value: 114)
        #expect(r114 == "ok")
        #expect(m114.runCallCount == 1)
    }
    @Test func test_115() async throws {
        let m115 = BenchmarkMock_115()
        m115.runReturn = "ok"
        let r115 = try await m115.run(value: 115)
        #expect(r115 == "ok")
        #expect(m115.runCallCount == 1)
    }
    @Test func test_116() async throws {
        let m116 = BenchmarkMock_116()
        m116.runReturn = "ok"
        let r116 = try await m116.run(value: 116)
        #expect(r116 == "ok")
        #expect(m116.runCallCount == 1)
    }
    @Test func test_117() async throws {
        let m117 = BenchmarkMock_117()
        m117.runReturn = "ok"
        let r117 = try await m117.run(value: 117)
        #expect(r117 == "ok")
        #expect(m117.runCallCount == 1)
    }
    @Test func test_118() async throws {
        let m118 = BenchmarkMock_118()
        m118.runReturn = "ok"
        let r118 = try await m118.run(value: 118)
        #expect(r118 == "ok")
        #expect(m118.runCallCount == 1)
    }
    @Test func test_119() async throws {
        let m119 = BenchmarkMock_119()
        m119.runReturn = "ok"
        let r119 = try await m119.run(value: 119)
        #expect(r119 == "ok")
        #expect(m119.runCallCount == 1)
    }
    @Test func test_120() async throws {
        let m120 = BenchmarkMock_120()
        m120.runReturn = "ok"
        let r120 = try await m120.run(value: 120)
        #expect(r120 == "ok")
        #expect(m120.runCallCount == 1)
    }
    @Test func test_121() async throws {
        let m121 = BenchmarkMock_121()
        m121.runReturn = "ok"
        let r121 = try await m121.run(value: 121)
        #expect(r121 == "ok")
        #expect(m121.runCallCount == 1)
    }
    @Test func test_122() async throws {
        let m122 = BenchmarkMock_122()
        m122.runReturn = "ok"
        let r122 = try await m122.run(value: 122)
        #expect(r122 == "ok")
        #expect(m122.runCallCount == 1)
    }
    @Test func test_123() async throws {
        let m123 = BenchmarkMock_123()
        m123.runReturn = "ok"
        let r123 = try await m123.run(value: 123)
        #expect(r123 == "ok")
        #expect(m123.runCallCount == 1)
    }
    @Test func test_124() async throws {
        let m124 = BenchmarkMock_124()
        m124.runReturn = "ok"
        let r124 = try await m124.run(value: 124)
        #expect(r124 == "ok")
        #expect(m124.runCallCount == 1)
    }
    @Test func test_125() async throws {
        let m125 = BenchmarkMock_125()
        m125.runReturn = "ok"
        let r125 = try await m125.run(value: 125)
        #expect(r125 == "ok")
        #expect(m125.runCallCount == 1)
    }
    @Test func test_126() async throws {
        let m126 = BenchmarkMock_126()
        m126.runReturn = "ok"
        let r126 = try await m126.run(value: 126)
        #expect(r126 == "ok")
        #expect(m126.runCallCount == 1)
    }
    @Test func test_127() async throws {
        let m127 = BenchmarkMock_127()
        m127.runReturn = "ok"
        let r127 = try await m127.run(value: 127)
        #expect(r127 == "ok")
        #expect(m127.runCallCount == 1)
    }
    @Test func test_128() async throws {
        let m128 = BenchmarkMock_128()
        m128.runReturn = "ok"
        let r128 = try await m128.run(value: 128)
        #expect(r128 == "ok")
        #expect(m128.runCallCount == 1)
    }
    @Test func test_129() async throws {
        let m129 = BenchmarkMock_129()
        m129.runReturn = "ok"
        let r129 = try await m129.run(value: 129)
        #expect(r129 == "ok")
        #expect(m129.runCallCount == 1)
    }
    @Test func test_130() async throws {
        let m130 = BenchmarkMock_130()
        m130.runReturn = "ok"
        let r130 = try await m130.run(value: 130)
        #expect(r130 == "ok")
        #expect(m130.runCallCount == 1)
    }
    @Test func test_131() async throws {
        let m131 = BenchmarkMock_131()
        m131.runReturn = "ok"
        let r131 = try await m131.run(value: 131)
        #expect(r131 == "ok")
        #expect(m131.runCallCount == 1)
    }
    @Test func test_132() async throws {
        let m132 = BenchmarkMock_132()
        m132.runReturn = "ok"
        let r132 = try await m132.run(value: 132)
        #expect(r132 == "ok")
        #expect(m132.runCallCount == 1)
    }
    @Test func test_133() async throws {
        let m133 = BenchmarkMock_133()
        m133.runReturn = "ok"
        let r133 = try await m133.run(value: 133)
        #expect(r133 == "ok")
        #expect(m133.runCallCount == 1)
    }
    @Test func test_134() async throws {
        let m134 = BenchmarkMock_134()
        m134.runReturn = "ok"
        let r134 = try await m134.run(value: 134)
        #expect(r134 == "ok")
        #expect(m134.runCallCount == 1)
    }
    @Test func test_135() async throws {
        let m135 = BenchmarkMock_135()
        m135.runReturn = "ok"
        let r135 = try await m135.run(value: 135)
        #expect(r135 == "ok")
        #expect(m135.runCallCount == 1)
    }
    @Test func test_136() async throws {
        let m136 = BenchmarkMock_136()
        m136.runReturn = "ok"
        let r136 = try await m136.run(value: 136)
        #expect(r136 == "ok")
        #expect(m136.runCallCount == 1)
    }
    @Test func test_137() async throws {
        let m137 = BenchmarkMock_137()
        m137.runReturn = "ok"
        let r137 = try await m137.run(value: 137)
        #expect(r137 == "ok")
        #expect(m137.runCallCount == 1)
    }
    @Test func test_138() async throws {
        let m138 = BenchmarkMock_138()
        m138.runReturn = "ok"
        let r138 = try await m138.run(value: 138)
        #expect(r138 == "ok")
        #expect(m138.runCallCount == 1)
    }
    @Test func test_139() async throws {
        let m139 = BenchmarkMock_139()
        m139.runReturn = "ok"
        let r139 = try await m139.run(value: 139)
        #expect(r139 == "ok")
        #expect(m139.runCallCount == 1)
    }
    @Test func test_140() async throws {
        let m140 = BenchmarkMock_140()
        m140.runReturn = "ok"
        let r140 = try await m140.run(value: 140)
        #expect(r140 == "ok")
        #expect(m140.runCallCount == 1)
    }
    @Test func test_141() async throws {
        let m141 = BenchmarkMock_141()
        m141.runReturn = "ok"
        let r141 = try await m141.run(value: 141)
        #expect(r141 == "ok")
        #expect(m141.runCallCount == 1)
    }
    @Test func test_142() async throws {
        let m142 = BenchmarkMock_142()
        m142.runReturn = "ok"
        let r142 = try await m142.run(value: 142)
        #expect(r142 == "ok")
        #expect(m142.runCallCount == 1)
    }
    @Test func test_143() async throws {
        let m143 = BenchmarkMock_143()
        m143.runReturn = "ok"
        let r143 = try await m143.run(value: 143)
        #expect(r143 == "ok")
        #expect(m143.runCallCount == 1)
    }
    @Test func test_144() async throws {
        let m144 = BenchmarkMock_144()
        m144.runReturn = "ok"
        let r144 = try await m144.run(value: 144)
        #expect(r144 == "ok")
        #expect(m144.runCallCount == 1)
    }
    @Test func test_145() async throws {
        let m145 = BenchmarkMock_145()
        m145.runReturn = "ok"
        let r145 = try await m145.run(value: 145)
        #expect(r145 == "ok")
        #expect(m145.runCallCount == 1)
    }
    @Test func test_146() async throws {
        let m146 = BenchmarkMock_146()
        m146.runReturn = "ok"
        let r146 = try await m146.run(value: 146)
        #expect(r146 == "ok")
        #expect(m146.runCallCount == 1)
    }
    @Test func test_147() async throws {
        let m147 = BenchmarkMock_147()
        m147.runReturn = "ok"
        let r147 = try await m147.run(value: 147)
        #expect(r147 == "ok")
        #expect(m147.runCallCount == 1)
    }
    @Test func test_148() async throws {
        let m148 = BenchmarkMock_148()
        m148.runReturn = "ok"
        let r148 = try await m148.run(value: 148)
        #expect(r148 == "ok")
        #expect(m148.runCallCount == 1)
    }
    @Test func test_149() async throws {
        let m149 = BenchmarkMock_149()
        m149.runReturn = "ok"
        let r149 = try await m149.run(value: 149)
        #expect(r149 == "ok")
        #expect(m149.runCallCount == 1)
    }
    @Test func test_150() async throws {
        let m150 = BenchmarkMock_150()
        m150.runReturn = "ok"
        let r150 = try await m150.run(value: 150)
        #expect(r150 == "ok")
        #expect(m150.runCallCount == 1)
    }
    @Test func test_151() async throws {
        let m151 = BenchmarkMock_151()
        m151.runReturn = "ok"
        let r151 = try await m151.run(value: 151)
        #expect(r151 == "ok")
        #expect(m151.runCallCount == 1)
    }
    @Test func test_152() async throws {
        let m152 = BenchmarkMock_152()
        m152.runReturn = "ok"
        let r152 = try await m152.run(value: 152)
        #expect(r152 == "ok")
        #expect(m152.runCallCount == 1)
    }
    @Test func test_153() async throws {
        let m153 = BenchmarkMock_153()
        m153.runReturn = "ok"
        let r153 = try await m153.run(value: 153)
        #expect(r153 == "ok")
        #expect(m153.runCallCount == 1)
    }
    @Test func test_154() async throws {
        let m154 = BenchmarkMock_154()
        m154.runReturn = "ok"
        let r154 = try await m154.run(value: 154)
        #expect(r154 == "ok")
        #expect(m154.runCallCount == 1)
    }
    @Test func test_155() async throws {
        let m155 = BenchmarkMock_155()
        m155.runReturn = "ok"
        let r155 = try await m155.run(value: 155)
        #expect(r155 == "ok")
        #expect(m155.runCallCount == 1)
    }
    @Test func test_156() async throws {
        let m156 = BenchmarkMock_156()
        m156.runReturn = "ok"
        let r156 = try await m156.run(value: 156)
        #expect(r156 == "ok")
        #expect(m156.runCallCount == 1)
    }
    @Test func test_157() async throws {
        let m157 = BenchmarkMock_157()
        m157.runReturn = "ok"
        let r157 = try await m157.run(value: 157)
        #expect(r157 == "ok")
        #expect(m157.runCallCount == 1)
    }
    @Test func test_158() async throws {
        let m158 = BenchmarkMock_158()
        m158.runReturn = "ok"
        let r158 = try await m158.run(value: 158)
        #expect(r158 == "ok")
        #expect(m158.runCallCount == 1)
    }
    @Test func test_159() async throws {
        let m159 = BenchmarkMock_159()
        m159.runReturn = "ok"
        let r159 = try await m159.run(value: 159)
        #expect(r159 == "ok")
        #expect(m159.runCallCount == 1)
    }
    @Test func test_160() async throws {
        let m160 = BenchmarkMock_160()
        m160.runReturn = "ok"
        let r160 = try await m160.run(value: 160)
        #expect(r160 == "ok")
        #expect(m160.runCallCount == 1)
    }
    @Test func test_161() async throws {
        let m161 = BenchmarkMock_161()
        m161.runReturn = "ok"
        let r161 = try await m161.run(value: 161)
        #expect(r161 == "ok")
        #expect(m161.runCallCount == 1)
    }
    @Test func test_162() async throws {
        let m162 = BenchmarkMock_162()
        m162.runReturn = "ok"
        let r162 = try await m162.run(value: 162)
        #expect(r162 == "ok")
        #expect(m162.runCallCount == 1)
    }
    @Test func test_163() async throws {
        let m163 = BenchmarkMock_163()
        m163.runReturn = "ok"
        let r163 = try await m163.run(value: 163)
        #expect(r163 == "ok")
        #expect(m163.runCallCount == 1)
    }
    @Test func test_164() async throws {
        let m164 = BenchmarkMock_164()
        m164.runReturn = "ok"
        let r164 = try await m164.run(value: 164)
        #expect(r164 == "ok")
        #expect(m164.runCallCount == 1)
    }
    @Test func test_165() async throws {
        let m165 = BenchmarkMock_165()
        m165.runReturn = "ok"
        let r165 = try await m165.run(value: 165)
        #expect(r165 == "ok")
        #expect(m165.runCallCount == 1)
    }
    @Test func test_166() async throws {
        let m166 = BenchmarkMock_166()
        m166.runReturn = "ok"
        let r166 = try await m166.run(value: 166)
        #expect(r166 == "ok")
        #expect(m166.runCallCount == 1)
    }
    @Test func test_167() async throws {
        let m167 = BenchmarkMock_167()
        m167.runReturn = "ok"
        let r167 = try await m167.run(value: 167)
        #expect(r167 == "ok")
        #expect(m167.runCallCount == 1)
    }
    @Test func test_168() async throws {
        let m168 = BenchmarkMock_168()
        m168.runReturn = "ok"
        let r168 = try await m168.run(value: 168)
        #expect(r168 == "ok")
        #expect(m168.runCallCount == 1)
    }
    @Test func test_169() async throws {
        let m169 = BenchmarkMock_169()
        m169.runReturn = "ok"
        let r169 = try await m169.run(value: 169)
        #expect(r169 == "ok")
        #expect(m169.runCallCount == 1)
    }
    @Test func test_170() async throws {
        let m170 = BenchmarkMock_170()
        m170.runReturn = "ok"
        let r170 = try await m170.run(value: 170)
        #expect(r170 == "ok")
        #expect(m170.runCallCount == 1)
    }
    @Test func test_171() async throws {
        let m171 = BenchmarkMock_171()
        m171.runReturn = "ok"
        let r171 = try await m171.run(value: 171)
        #expect(r171 == "ok")
        #expect(m171.runCallCount == 1)
    }
    @Test func test_172() async throws {
        let m172 = BenchmarkMock_172()
        m172.runReturn = "ok"
        let r172 = try await m172.run(value: 172)
        #expect(r172 == "ok")
        #expect(m172.runCallCount == 1)
    }
    @Test func test_173() async throws {
        let m173 = BenchmarkMock_173()
        m173.runReturn = "ok"
        let r173 = try await m173.run(value: 173)
        #expect(r173 == "ok")
        #expect(m173.runCallCount == 1)
    }
    @Test func test_174() async throws {
        let m174 = BenchmarkMock_174()
        m174.runReturn = "ok"
        let r174 = try await m174.run(value: 174)
        #expect(r174 == "ok")
        #expect(m174.runCallCount == 1)
    }
    @Test func test_175() async throws {
        let m175 = BenchmarkMock_175()
        m175.runReturn = "ok"
        let r175 = try await m175.run(value: 175)
        #expect(r175 == "ok")
        #expect(m175.runCallCount == 1)
    }
    @Test func test_176() async throws {
        let m176 = BenchmarkMock_176()
        m176.runReturn = "ok"
        let r176 = try await m176.run(value: 176)
        #expect(r176 == "ok")
        #expect(m176.runCallCount == 1)
    }
    @Test func test_177() async throws {
        let m177 = BenchmarkMock_177()
        m177.runReturn = "ok"
        let r177 = try await m177.run(value: 177)
        #expect(r177 == "ok")
        #expect(m177.runCallCount == 1)
    }
    @Test func test_178() async throws {
        let m178 = BenchmarkMock_178()
        m178.runReturn = "ok"
        let r178 = try await m178.run(value: 178)
        #expect(r178 == "ok")
        #expect(m178.runCallCount == 1)
    }
    @Test func test_179() async throws {
        let m179 = BenchmarkMock_179()
        m179.runReturn = "ok"
        let r179 = try await m179.run(value: 179)
        #expect(r179 == "ok")
        #expect(m179.runCallCount == 1)
    }
    @Test func test_180() async throws {
        let m180 = BenchmarkMock_180()
        m180.runReturn = "ok"
        let r180 = try await m180.run(value: 180)
        #expect(r180 == "ok")
        #expect(m180.runCallCount == 1)
    }
    @Test func test_181() async throws {
        let m181 = BenchmarkMock_181()
        m181.runReturn = "ok"
        let r181 = try await m181.run(value: 181)
        #expect(r181 == "ok")
        #expect(m181.runCallCount == 1)
    }
    @Test func test_182() async throws {
        let m182 = BenchmarkMock_182()
        m182.runReturn = "ok"
        let r182 = try await m182.run(value: 182)
        #expect(r182 == "ok")
        #expect(m182.runCallCount == 1)
    }
    @Test func test_183() async throws {
        let m183 = BenchmarkMock_183()
        m183.runReturn = "ok"
        let r183 = try await m183.run(value: 183)
        #expect(r183 == "ok")
        #expect(m183.runCallCount == 1)
    }
    @Test func test_184() async throws {
        let m184 = BenchmarkMock_184()
        m184.runReturn = "ok"
        let r184 = try await m184.run(value: 184)
        #expect(r184 == "ok")
        #expect(m184.runCallCount == 1)
    }
    @Test func test_185() async throws {
        let m185 = BenchmarkMock_185()
        m185.runReturn = "ok"
        let r185 = try await m185.run(value: 185)
        #expect(r185 == "ok")
        #expect(m185.runCallCount == 1)
    }
    @Test func test_186() async throws {
        let m186 = BenchmarkMock_186()
        m186.runReturn = "ok"
        let r186 = try await m186.run(value: 186)
        #expect(r186 == "ok")
        #expect(m186.runCallCount == 1)
    }
    @Test func test_187() async throws {
        let m187 = BenchmarkMock_187()
        m187.runReturn = "ok"
        let r187 = try await m187.run(value: 187)
        #expect(r187 == "ok")
        #expect(m187.runCallCount == 1)
    }
    @Test func test_188() async throws {
        let m188 = BenchmarkMock_188()
        m188.runReturn = "ok"
        let r188 = try await m188.run(value: 188)
        #expect(r188 == "ok")
        #expect(m188.runCallCount == 1)
    }
    @Test func test_189() async throws {
        let m189 = BenchmarkMock_189()
        m189.runReturn = "ok"
        let r189 = try await m189.run(value: 189)
        #expect(r189 == "ok")
        #expect(m189.runCallCount == 1)
    }
    @Test func test_190() async throws {
        let m190 = BenchmarkMock_190()
        m190.runReturn = "ok"
        let r190 = try await m190.run(value: 190)
        #expect(r190 == "ok")
        #expect(m190.runCallCount == 1)
    }
    @Test func test_191() async throws {
        let m191 = BenchmarkMock_191()
        m191.runReturn = "ok"
        let r191 = try await m191.run(value: 191)
        #expect(r191 == "ok")
        #expect(m191.runCallCount == 1)
    }
    @Test func test_192() async throws {
        let m192 = BenchmarkMock_192()
        m192.runReturn = "ok"
        let r192 = try await m192.run(value: 192)
        #expect(r192 == "ok")
        #expect(m192.runCallCount == 1)
    }
    @Test func test_193() async throws {
        let m193 = BenchmarkMock_193()
        m193.runReturn = "ok"
        let r193 = try await m193.run(value: 193)
        #expect(r193 == "ok")
        #expect(m193.runCallCount == 1)
    }
    @Test func test_194() async throws {
        let m194 = BenchmarkMock_194()
        m194.runReturn = "ok"
        let r194 = try await m194.run(value: 194)
        #expect(r194 == "ok")
        #expect(m194.runCallCount == 1)
    }
    @Test func test_195() async throws {
        let m195 = BenchmarkMock_195()
        m195.runReturn = "ok"
        let r195 = try await m195.run(value: 195)
        #expect(r195 == "ok")
        #expect(m195.runCallCount == 1)
    }
    @Test func test_196() async throws {
        let m196 = BenchmarkMock_196()
        m196.runReturn = "ok"
        let r196 = try await m196.run(value: 196)
        #expect(r196 == "ok")
        #expect(m196.runCallCount == 1)
    }
    @Test func test_197() async throws {
        let m197 = BenchmarkMock_197()
        m197.runReturn = "ok"
        let r197 = try await m197.run(value: 197)
        #expect(r197 == "ok")
        #expect(m197.runCallCount == 1)
    }
    @Test func test_198() async throws {
        let m198 = BenchmarkMock_198()
        m198.runReturn = "ok"
        let r198 = try await m198.run(value: 198)
        #expect(r198 == "ok")
        #expect(m198.runCallCount == 1)
    }
    @Test func test_199() async throws {
        let m199 = BenchmarkMock_199()
        m199.runReturn = "ok"
        let r199 = try await m199.run(value: 199)
        #expect(r199 == "ok")
        #expect(m199.runCallCount == 1)
    }
    @Test func test_200() async throws {
        let m200 = BenchmarkMock_200()
        m200.runReturn = "ok"
        let r200 = try await m200.run(value: 200)
        #expect(r200 == "ok")
        #expect(m200.runCallCount == 1)
    }
    @Test func test_201() async throws {
        let m201 = BenchmarkMock_201()
        m201.runReturn = "ok"
        let r201 = try await m201.run(value: 201)
        #expect(r201 == "ok")
        #expect(m201.runCallCount == 1)
    }
    @Test func test_202() async throws {
        let m202 = BenchmarkMock_202()
        m202.runReturn = "ok"
        let r202 = try await m202.run(value: 202)
        #expect(r202 == "ok")
        #expect(m202.runCallCount == 1)
    }
    @Test func test_203() async throws {
        let m203 = BenchmarkMock_203()
        m203.runReturn = "ok"
        let r203 = try await m203.run(value: 203)
        #expect(r203 == "ok")
        #expect(m203.runCallCount == 1)
    }
    @Test func test_204() async throws {
        let m204 = BenchmarkMock_204()
        m204.runReturn = "ok"
        let r204 = try await m204.run(value: 204)
        #expect(r204 == "ok")
        #expect(m204.runCallCount == 1)
    }
    @Test func test_205() async throws {
        let m205 = BenchmarkMock_205()
        m205.runReturn = "ok"
        let r205 = try await m205.run(value: 205)
        #expect(r205 == "ok")
        #expect(m205.runCallCount == 1)
    }
    @Test func test_206() async throws {
        let m206 = BenchmarkMock_206()
        m206.runReturn = "ok"
        let r206 = try await m206.run(value: 206)
        #expect(r206 == "ok")
        #expect(m206.runCallCount == 1)
    }
    @Test func test_207() async throws {
        let m207 = BenchmarkMock_207()
        m207.runReturn = "ok"
        let r207 = try await m207.run(value: 207)
        #expect(r207 == "ok")
        #expect(m207.runCallCount == 1)
    }
    @Test func test_208() async throws {
        let m208 = BenchmarkMock_208()
        m208.runReturn = "ok"
        let r208 = try await m208.run(value: 208)
        #expect(r208 == "ok")
        #expect(m208.runCallCount == 1)
    }
    @Test func test_209() async throws {
        let m209 = BenchmarkMock_209()
        m209.runReturn = "ok"
        let r209 = try await m209.run(value: 209)
        #expect(r209 == "ok")
        #expect(m209.runCallCount == 1)
    }
    @Test func test_210() async throws {
        let m210 = BenchmarkMock_210()
        m210.runReturn = "ok"
        let r210 = try await m210.run(value: 210)
        #expect(r210 == "ok")
        #expect(m210.runCallCount == 1)
    }
    @Test func test_211() async throws {
        let m211 = BenchmarkMock_211()
        m211.runReturn = "ok"
        let r211 = try await m211.run(value: 211)
        #expect(r211 == "ok")
        #expect(m211.runCallCount == 1)
    }
    @Test func test_212() async throws {
        let m212 = BenchmarkMock_212()
        m212.runReturn = "ok"
        let r212 = try await m212.run(value: 212)
        #expect(r212 == "ok")
        #expect(m212.runCallCount == 1)
    }
    @Test func test_213() async throws {
        let m213 = BenchmarkMock_213()
        m213.runReturn = "ok"
        let r213 = try await m213.run(value: 213)
        #expect(r213 == "ok")
        #expect(m213.runCallCount == 1)
    }
    @Test func test_214() async throws {
        let m214 = BenchmarkMock_214()
        m214.runReturn = "ok"
        let r214 = try await m214.run(value: 214)
        #expect(r214 == "ok")
        #expect(m214.runCallCount == 1)
    }
    @Test func test_215() async throws {
        let m215 = BenchmarkMock_215()
        m215.runReturn = "ok"
        let r215 = try await m215.run(value: 215)
        #expect(r215 == "ok")
        #expect(m215.runCallCount == 1)
    }
    @Test func test_216() async throws {
        let m216 = BenchmarkMock_216()
        m216.runReturn = "ok"
        let r216 = try await m216.run(value: 216)
        #expect(r216 == "ok")
        #expect(m216.runCallCount == 1)
    }
    @Test func test_217() async throws {
        let m217 = BenchmarkMock_217()
        m217.runReturn = "ok"
        let r217 = try await m217.run(value: 217)
        #expect(r217 == "ok")
        #expect(m217.runCallCount == 1)
    }
    @Test func test_218() async throws {
        let m218 = BenchmarkMock_218()
        m218.runReturn = "ok"
        let r218 = try await m218.run(value: 218)
        #expect(r218 == "ok")
        #expect(m218.runCallCount == 1)
    }
    @Test func test_219() async throws {
        let m219 = BenchmarkMock_219()
        m219.runReturn = "ok"
        let r219 = try await m219.run(value: 219)
        #expect(r219 == "ok")
        #expect(m219.runCallCount == 1)
    }
    @Test func test_220() async throws {
        let m220 = BenchmarkMock_220()
        m220.runReturn = "ok"
        let r220 = try await m220.run(value: 220)
        #expect(r220 == "ok")
        #expect(m220.runCallCount == 1)
    }
    @Test func test_221() async throws {
        let m221 = BenchmarkMock_221()
        m221.runReturn = "ok"
        let r221 = try await m221.run(value: 221)
        #expect(r221 == "ok")
        #expect(m221.runCallCount == 1)
    }
    @Test func test_222() async throws {
        let m222 = BenchmarkMock_222()
        m222.runReturn = "ok"
        let r222 = try await m222.run(value: 222)
        #expect(r222 == "ok")
        #expect(m222.runCallCount == 1)
    }
    @Test func test_223() async throws {
        let m223 = BenchmarkMock_223()
        m223.runReturn = "ok"
        let r223 = try await m223.run(value: 223)
        #expect(r223 == "ok")
        #expect(m223.runCallCount == 1)
    }
    @Test func test_224() async throws {
        let m224 = BenchmarkMock_224()
        m224.runReturn = "ok"
        let r224 = try await m224.run(value: 224)
        #expect(r224 == "ok")
        #expect(m224.runCallCount == 1)
    }
    @Test func test_225() async throws {
        let m225 = BenchmarkMock_225()
        m225.runReturn = "ok"
        let r225 = try await m225.run(value: 225)
        #expect(r225 == "ok")
        #expect(m225.runCallCount == 1)
    }
    @Test func test_226() async throws {
        let m226 = BenchmarkMock_226()
        m226.runReturn = "ok"
        let r226 = try await m226.run(value: 226)
        #expect(r226 == "ok")
        #expect(m226.runCallCount == 1)
    }
    @Test func test_227() async throws {
        let m227 = BenchmarkMock_227()
        m227.runReturn = "ok"
        let r227 = try await m227.run(value: 227)
        #expect(r227 == "ok")
        #expect(m227.runCallCount == 1)
    }
    @Test func test_228() async throws {
        let m228 = BenchmarkMock_228()
        m228.runReturn = "ok"
        let r228 = try await m228.run(value: 228)
        #expect(r228 == "ok")
        #expect(m228.runCallCount == 1)
    }
    @Test func test_229() async throws {
        let m229 = BenchmarkMock_229()
        m229.runReturn = "ok"
        let r229 = try await m229.run(value: 229)
        #expect(r229 == "ok")
        #expect(m229.runCallCount == 1)
    }
    @Test func test_230() async throws {
        let m230 = BenchmarkMock_230()
        m230.runReturn = "ok"
        let r230 = try await m230.run(value: 230)
        #expect(r230 == "ok")
        #expect(m230.runCallCount == 1)
    }
    @Test func test_231() async throws {
        let m231 = BenchmarkMock_231()
        m231.runReturn = "ok"
        let r231 = try await m231.run(value: 231)
        #expect(r231 == "ok")
        #expect(m231.runCallCount == 1)
    }
    @Test func test_232() async throws {
        let m232 = BenchmarkMock_232()
        m232.runReturn = "ok"
        let r232 = try await m232.run(value: 232)
        #expect(r232 == "ok")
        #expect(m232.runCallCount == 1)
    }
    @Test func test_233() async throws {
        let m233 = BenchmarkMock_233()
        m233.runReturn = "ok"
        let r233 = try await m233.run(value: 233)
        #expect(r233 == "ok")
        #expect(m233.runCallCount == 1)
    }
    @Test func test_234() async throws {
        let m234 = BenchmarkMock_234()
        m234.runReturn = "ok"
        let r234 = try await m234.run(value: 234)
        #expect(r234 == "ok")
        #expect(m234.runCallCount == 1)
    }
    @Test func test_235() async throws {
        let m235 = BenchmarkMock_235()
        m235.runReturn = "ok"
        let r235 = try await m235.run(value: 235)
        #expect(r235 == "ok")
        #expect(m235.runCallCount == 1)
    }
    @Test func test_236() async throws {
        let m236 = BenchmarkMock_236()
        m236.runReturn = "ok"
        let r236 = try await m236.run(value: 236)
        #expect(r236 == "ok")
        #expect(m236.runCallCount == 1)
    }
    @Test func test_237() async throws {
        let m237 = BenchmarkMock_237()
        m237.runReturn = "ok"
        let r237 = try await m237.run(value: 237)
        #expect(r237 == "ok")
        #expect(m237.runCallCount == 1)
    }
    @Test func test_238() async throws {
        let m238 = BenchmarkMock_238()
        m238.runReturn = "ok"
        let r238 = try await m238.run(value: 238)
        #expect(r238 == "ok")
        #expect(m238.runCallCount == 1)
    }
    @Test func test_239() async throws {
        let m239 = BenchmarkMock_239()
        m239.runReturn = "ok"
        let r239 = try await m239.run(value: 239)
        #expect(r239 == "ok")
        #expect(m239.runCallCount == 1)
    }
    @Test func test_240() async throws {
        let m240 = BenchmarkMock_240()
        m240.runReturn = "ok"
        let r240 = try await m240.run(value: 240)
        #expect(r240 == "ok")
        #expect(m240.runCallCount == 1)
    }
    @Test func test_241() async throws {
        let m241 = BenchmarkMock_241()
        m241.runReturn = "ok"
        let r241 = try await m241.run(value: 241)
        #expect(r241 == "ok")
        #expect(m241.runCallCount == 1)
    }
    @Test func test_242() async throws {
        let m242 = BenchmarkMock_242()
        m242.runReturn = "ok"
        let r242 = try await m242.run(value: 242)
        #expect(r242 == "ok")
        #expect(m242.runCallCount == 1)
    }
    @Test func test_243() async throws {
        let m243 = BenchmarkMock_243()
        m243.runReturn = "ok"
        let r243 = try await m243.run(value: 243)
        #expect(r243 == "ok")
        #expect(m243.runCallCount == 1)
    }
    @Test func test_244() async throws {
        let m244 = BenchmarkMock_244()
        m244.runReturn = "ok"
        let r244 = try await m244.run(value: 244)
        #expect(r244 == "ok")
        #expect(m244.runCallCount == 1)
    }
    @Test func test_245() async throws {
        let m245 = BenchmarkMock_245()
        m245.runReturn = "ok"
        let r245 = try await m245.run(value: 245)
        #expect(r245 == "ok")
        #expect(m245.runCallCount == 1)
    }
    @Test func test_246() async throws {
        let m246 = BenchmarkMock_246()
        m246.runReturn = "ok"
        let r246 = try await m246.run(value: 246)
        #expect(r246 == "ok")
        #expect(m246.runCallCount == 1)
    }
    @Test func test_247() async throws {
        let m247 = BenchmarkMock_247()
        m247.runReturn = "ok"
        let r247 = try await m247.run(value: 247)
        #expect(r247 == "ok")
        #expect(m247.runCallCount == 1)
    }
    @Test func test_248() async throws {
        let m248 = BenchmarkMock_248()
        m248.runReturn = "ok"
        let r248 = try await m248.run(value: 248)
        #expect(r248 == "ok")
        #expect(m248.runCallCount == 1)
    }
    @Test func test_249() async throws {
        let m249 = BenchmarkMock_249()
        m249.runReturn = "ok"
        let r249 = try await m249.run(value: 249)
        #expect(r249 == "ok")
        #expect(m249.runCallCount == 1)
    }
    @Test func test_250() async throws {
        let m250 = BenchmarkMock_250()
        m250.runReturn = "ok"
        let r250 = try await m250.run(value: 250)
        #expect(r250 == "ok")
        #expect(m250.runCallCount == 1)
    }
    @Test func test_251() async throws {
        let m251 = BenchmarkMock_251()
        m251.runReturn = "ok"
        let r251 = try await m251.run(value: 251)
        #expect(r251 == "ok")
        #expect(m251.runCallCount == 1)
    }
    @Test func test_252() async throws {
        let m252 = BenchmarkMock_252()
        m252.runReturn = "ok"
        let r252 = try await m252.run(value: 252)
        #expect(r252 == "ok")
        #expect(m252.runCallCount == 1)
    }
    @Test func test_253() async throws {
        let m253 = BenchmarkMock_253()
        m253.runReturn = "ok"
        let r253 = try await m253.run(value: 253)
        #expect(r253 == "ok")
        #expect(m253.runCallCount == 1)
    }
    @Test func test_254() async throws {
        let m254 = BenchmarkMock_254()
        m254.runReturn = "ok"
        let r254 = try await m254.run(value: 254)
        #expect(r254 == "ok")
        #expect(m254.runCallCount == 1)
    }
    @Test func test_255() async throws {
        let m255 = BenchmarkMock_255()
        m255.runReturn = "ok"
        let r255 = try await m255.run(value: 255)
        #expect(r255 == "ok")
        #expect(m255.runCallCount == 1)
    }
    @Test func test_256() async throws {
        let m256 = BenchmarkMock_256()
        m256.runReturn = "ok"
        let r256 = try await m256.run(value: 256)
        #expect(r256 == "ok")
        #expect(m256.runCallCount == 1)
    }
    @Test func test_257() async throws {
        let m257 = BenchmarkMock_257()
        m257.runReturn = "ok"
        let r257 = try await m257.run(value: 257)
        #expect(r257 == "ok")
        #expect(m257.runCallCount == 1)
    }
    @Test func test_258() async throws {
        let m258 = BenchmarkMock_258()
        m258.runReturn = "ok"
        let r258 = try await m258.run(value: 258)
        #expect(r258 == "ok")
        #expect(m258.runCallCount == 1)
    }
    @Test func test_259() async throws {
        let m259 = BenchmarkMock_259()
        m259.runReturn = "ok"
        let r259 = try await m259.run(value: 259)
        #expect(r259 == "ok")
        #expect(m259.runCallCount == 1)
    }
    @Test func test_260() async throws {
        let m260 = BenchmarkMock_260()
        m260.runReturn = "ok"
        let r260 = try await m260.run(value: 260)
        #expect(r260 == "ok")
        #expect(m260.runCallCount == 1)
    }
    @Test func test_261() async throws {
        let m261 = BenchmarkMock_261()
        m261.runReturn = "ok"
        let r261 = try await m261.run(value: 261)
        #expect(r261 == "ok")
        #expect(m261.runCallCount == 1)
    }
    @Test func test_262() async throws {
        let m262 = BenchmarkMock_262()
        m262.runReturn = "ok"
        let r262 = try await m262.run(value: 262)
        #expect(r262 == "ok")
        #expect(m262.runCallCount == 1)
    }
    @Test func test_263() async throws {
        let m263 = BenchmarkMock_263()
        m263.runReturn = "ok"
        let r263 = try await m263.run(value: 263)
        #expect(r263 == "ok")
        #expect(m263.runCallCount == 1)
    }
    @Test func test_264() async throws {
        let m264 = BenchmarkMock_264()
        m264.runReturn = "ok"
        let r264 = try await m264.run(value: 264)
        #expect(r264 == "ok")
        #expect(m264.runCallCount == 1)
    }
    @Test func test_265() async throws {
        let m265 = BenchmarkMock_265()
        m265.runReturn = "ok"
        let r265 = try await m265.run(value: 265)
        #expect(r265 == "ok")
        #expect(m265.runCallCount == 1)
    }
    @Test func test_266() async throws {
        let m266 = BenchmarkMock_266()
        m266.runReturn = "ok"
        let r266 = try await m266.run(value: 266)
        #expect(r266 == "ok")
        #expect(m266.runCallCount == 1)
    }
    @Test func test_267() async throws {
        let m267 = BenchmarkMock_267()
        m267.runReturn = "ok"
        let r267 = try await m267.run(value: 267)
        #expect(r267 == "ok")
        #expect(m267.runCallCount == 1)
    }
    @Test func test_268() async throws {
        let m268 = BenchmarkMock_268()
        m268.runReturn = "ok"
        let r268 = try await m268.run(value: 268)
        #expect(r268 == "ok")
        #expect(m268.runCallCount == 1)
    }
    @Test func test_269() async throws {
        let m269 = BenchmarkMock_269()
        m269.runReturn = "ok"
        let r269 = try await m269.run(value: 269)
        #expect(r269 == "ok")
        #expect(m269.runCallCount == 1)
    }
    @Test func test_270() async throws {
        let m270 = BenchmarkMock_270()
        m270.runReturn = "ok"
        let r270 = try await m270.run(value: 270)
        #expect(r270 == "ok")
        #expect(m270.runCallCount == 1)
    }
    @Test func test_271() async throws {
        let m271 = BenchmarkMock_271()
        m271.runReturn = "ok"
        let r271 = try await m271.run(value: 271)
        #expect(r271 == "ok")
        #expect(m271.runCallCount == 1)
    }
    @Test func test_272() async throws {
        let m272 = BenchmarkMock_272()
        m272.runReturn = "ok"
        let r272 = try await m272.run(value: 272)
        #expect(r272 == "ok")
        #expect(m272.runCallCount == 1)
    }
    @Test func test_273() async throws {
        let m273 = BenchmarkMock_273()
        m273.runReturn = "ok"
        let r273 = try await m273.run(value: 273)
        #expect(r273 == "ok")
        #expect(m273.runCallCount == 1)
    }
    @Test func test_274() async throws {
        let m274 = BenchmarkMock_274()
        m274.runReturn = "ok"
        let r274 = try await m274.run(value: 274)
        #expect(r274 == "ok")
        #expect(m274.runCallCount == 1)
    }
    @Test func test_275() async throws {
        let m275 = BenchmarkMock_275()
        m275.runReturn = "ok"
        let r275 = try await m275.run(value: 275)
        #expect(r275 == "ok")
        #expect(m275.runCallCount == 1)
    }
    @Test func test_276() async throws {
        let m276 = BenchmarkMock_276()
        m276.runReturn = "ok"
        let r276 = try await m276.run(value: 276)
        #expect(r276 == "ok")
        #expect(m276.runCallCount == 1)
    }
    @Test func test_277() async throws {
        let m277 = BenchmarkMock_277()
        m277.runReturn = "ok"
        let r277 = try await m277.run(value: 277)
        #expect(r277 == "ok")
        #expect(m277.runCallCount == 1)
    }
    @Test func test_278() async throws {
        let m278 = BenchmarkMock_278()
        m278.runReturn = "ok"
        let r278 = try await m278.run(value: 278)
        #expect(r278 == "ok")
        #expect(m278.runCallCount == 1)
    }
    @Test func test_279() async throws {
        let m279 = BenchmarkMock_279()
        m279.runReturn = "ok"
        let r279 = try await m279.run(value: 279)
        #expect(r279 == "ok")
        #expect(m279.runCallCount == 1)
    }
    @Test func test_280() async throws {
        let m280 = BenchmarkMock_280()
        m280.runReturn = "ok"
        let r280 = try await m280.run(value: 280)
        #expect(r280 == "ok")
        #expect(m280.runCallCount == 1)
    }
    @Test func test_281() async throws {
        let m281 = BenchmarkMock_281()
        m281.runReturn = "ok"
        let r281 = try await m281.run(value: 281)
        #expect(r281 == "ok")
        #expect(m281.runCallCount == 1)
    }
    @Test func test_282() async throws {
        let m282 = BenchmarkMock_282()
        m282.runReturn = "ok"
        let r282 = try await m282.run(value: 282)
        #expect(r282 == "ok")
        #expect(m282.runCallCount == 1)
    }
    @Test func test_283() async throws {
        let m283 = BenchmarkMock_283()
        m283.runReturn = "ok"
        let r283 = try await m283.run(value: 283)
        #expect(r283 == "ok")
        #expect(m283.runCallCount == 1)
    }
    @Test func test_284() async throws {
        let m284 = BenchmarkMock_284()
        m284.runReturn = "ok"
        let r284 = try await m284.run(value: 284)
        #expect(r284 == "ok")
        #expect(m284.runCallCount == 1)
    }
    @Test func test_285() async throws {
        let m285 = BenchmarkMock_285()
        m285.runReturn = "ok"
        let r285 = try await m285.run(value: 285)
        #expect(r285 == "ok")
        #expect(m285.runCallCount == 1)
    }
    @Test func test_286() async throws {
        let m286 = BenchmarkMock_286()
        m286.runReturn = "ok"
        let r286 = try await m286.run(value: 286)
        #expect(r286 == "ok")
        #expect(m286.runCallCount == 1)
    }
    @Test func test_287() async throws {
        let m287 = BenchmarkMock_287()
        m287.runReturn = "ok"
        let r287 = try await m287.run(value: 287)
        #expect(r287 == "ok")
        #expect(m287.runCallCount == 1)
    }
    @Test func test_288() async throws {
        let m288 = BenchmarkMock_288()
        m288.runReturn = "ok"
        let r288 = try await m288.run(value: 288)
        #expect(r288 == "ok")
        #expect(m288.runCallCount == 1)
    }
    @Test func test_289() async throws {
        let m289 = BenchmarkMock_289()
        m289.runReturn = "ok"
        let r289 = try await m289.run(value: 289)
        #expect(r289 == "ok")
        #expect(m289.runCallCount == 1)
    }
    @Test func test_290() async throws {
        let m290 = BenchmarkMock_290()
        m290.runReturn = "ok"
        let r290 = try await m290.run(value: 290)
        #expect(r290 == "ok")
        #expect(m290.runCallCount == 1)
    }
    @Test func test_291() async throws {
        let m291 = BenchmarkMock_291()
        m291.runReturn = "ok"
        let r291 = try await m291.run(value: 291)
        #expect(r291 == "ok")
        #expect(m291.runCallCount == 1)
    }
    @Test func test_292() async throws {
        let m292 = BenchmarkMock_292()
        m292.runReturn = "ok"
        let r292 = try await m292.run(value: 292)
        #expect(r292 == "ok")
        #expect(m292.runCallCount == 1)
    }
    @Test func test_293() async throws {
        let m293 = BenchmarkMock_293()
        m293.runReturn = "ok"
        let r293 = try await m293.run(value: 293)
        #expect(r293 == "ok")
        #expect(m293.runCallCount == 1)
    }
    @Test func test_294() async throws {
        let m294 = BenchmarkMock_294()
        m294.runReturn = "ok"
        let r294 = try await m294.run(value: 294)
        #expect(r294 == "ok")
        #expect(m294.runCallCount == 1)
    }
    @Test func test_295() async throws {
        let m295 = BenchmarkMock_295()
        m295.runReturn = "ok"
        let r295 = try await m295.run(value: 295)
        #expect(r295 == "ok")
        #expect(m295.runCallCount == 1)
    }
    @Test func test_296() async throws {
        let m296 = BenchmarkMock_296()
        m296.runReturn = "ok"
        let r296 = try await m296.run(value: 296)
        #expect(r296 == "ok")
        #expect(m296.runCallCount == 1)
    }
    @Test func test_297() async throws {
        let m297 = BenchmarkMock_297()
        m297.runReturn = "ok"
        let r297 = try await m297.run(value: 297)
        #expect(r297 == "ok")
        #expect(m297.runCallCount == 1)
    }
    @Test func test_298() async throws {
        let m298 = BenchmarkMock_298()
        m298.runReturn = "ok"
        let r298 = try await m298.run(value: 298)
        #expect(r298 == "ok")
        #expect(m298.runCallCount == 1)
    }
    @Test func test_299() async throws {
        let m299 = BenchmarkMock_299()
        m299.runReturn = "ok"
        let r299 = try await m299.run(value: 299)
        #expect(r299 == "ok")
        #expect(m299.runCallCount == 1)
    }
    @Test func test_300() async throws {
        let m300 = BenchmarkMock_300()
        m300.runReturn = "ok"
        let r300 = try await m300.run(value: 300)
        #expect(r300 == "ok")
        #expect(m300.runCallCount == 1)
    }
    @Test func test_301() async throws {
        let m301 = BenchmarkMock_301()
        m301.runReturn = "ok"
        let r301 = try await m301.run(value: 301)
        #expect(r301 == "ok")
        #expect(m301.runCallCount == 1)
    }
    @Test func test_302() async throws {
        let m302 = BenchmarkMock_302()
        m302.runReturn = "ok"
        let r302 = try await m302.run(value: 302)
        #expect(r302 == "ok")
        #expect(m302.runCallCount == 1)
    }
    @Test func test_303() async throws {
        let m303 = BenchmarkMock_303()
        m303.runReturn = "ok"
        let r303 = try await m303.run(value: 303)
        #expect(r303 == "ok")
        #expect(m303.runCallCount == 1)
    }
    @Test func test_304() async throws {
        let m304 = BenchmarkMock_304()
        m304.runReturn = "ok"
        let r304 = try await m304.run(value: 304)
        #expect(r304 == "ok")
        #expect(m304.runCallCount == 1)
    }
    @Test func test_305() async throws {
        let m305 = BenchmarkMock_305()
        m305.runReturn = "ok"
        let r305 = try await m305.run(value: 305)
        #expect(r305 == "ok")
        #expect(m305.runCallCount == 1)
    }
    @Test func test_306() async throws {
        let m306 = BenchmarkMock_306()
        m306.runReturn = "ok"
        let r306 = try await m306.run(value: 306)
        #expect(r306 == "ok")
        #expect(m306.runCallCount == 1)
    }
    @Test func test_307() async throws {
        let m307 = BenchmarkMock_307()
        m307.runReturn = "ok"
        let r307 = try await m307.run(value: 307)
        #expect(r307 == "ok")
        #expect(m307.runCallCount == 1)
    }
    @Test func test_308() async throws {
        let m308 = BenchmarkMock_308()
        m308.runReturn = "ok"
        let r308 = try await m308.run(value: 308)
        #expect(r308 == "ok")
        #expect(m308.runCallCount == 1)
    }
    @Test func test_309() async throws {
        let m309 = BenchmarkMock_309()
        m309.runReturn = "ok"
        let r309 = try await m309.run(value: 309)
        #expect(r309 == "ok")
        #expect(m309.runCallCount == 1)
    }
    @Test func test_310() async throws {
        let m310 = BenchmarkMock_310()
        m310.runReturn = "ok"
        let r310 = try await m310.run(value: 310)
        #expect(r310 == "ok")
        #expect(m310.runCallCount == 1)
    }
    @Test func test_311() async throws {
        let m311 = BenchmarkMock_311()
        m311.runReturn = "ok"
        let r311 = try await m311.run(value: 311)
        #expect(r311 == "ok")
        #expect(m311.runCallCount == 1)
    }
    @Test func test_312() async throws {
        let m312 = BenchmarkMock_312()
        m312.runReturn = "ok"
        let r312 = try await m312.run(value: 312)
        #expect(r312 == "ok")
        #expect(m312.runCallCount == 1)
    }
    @Test func test_313() async throws {
        let m313 = BenchmarkMock_313()
        m313.runReturn = "ok"
        let r313 = try await m313.run(value: 313)
        #expect(r313 == "ok")
        #expect(m313.runCallCount == 1)
    }
    @Test func test_314() async throws {
        let m314 = BenchmarkMock_314()
        m314.runReturn = "ok"
        let r314 = try await m314.run(value: 314)
        #expect(r314 == "ok")
        #expect(m314.runCallCount == 1)
    }
    @Test func test_315() async throws {
        let m315 = BenchmarkMock_315()
        m315.runReturn = "ok"
        let r315 = try await m315.run(value: 315)
        #expect(r315 == "ok")
        #expect(m315.runCallCount == 1)
    }
    @Test func test_316() async throws {
        let m316 = BenchmarkMock_316()
        m316.runReturn = "ok"
        let r316 = try await m316.run(value: 316)
        #expect(r316 == "ok")
        #expect(m316.runCallCount == 1)
    }
    @Test func test_317() async throws {
        let m317 = BenchmarkMock_317()
        m317.runReturn = "ok"
        let r317 = try await m317.run(value: 317)
        #expect(r317 == "ok")
        #expect(m317.runCallCount == 1)
    }
    @Test func test_318() async throws {
        let m318 = BenchmarkMock_318()
        m318.runReturn = "ok"
        let r318 = try await m318.run(value: 318)
        #expect(r318 == "ok")
        #expect(m318.runCallCount == 1)
    }
    @Test func test_319() async throws {
        let m319 = BenchmarkMock_319()
        m319.runReturn = "ok"
        let r319 = try await m319.run(value: 319)
        #expect(r319 == "ok")
        #expect(m319.runCallCount == 1)
    }
    @Test func test_320() async throws {
        let m320 = BenchmarkMock_320()
        m320.runReturn = "ok"
        let r320 = try await m320.run(value: 320)
        #expect(r320 == "ok")
        #expect(m320.runCallCount == 1)
    }
    @Test func test_321() async throws {
        let m321 = BenchmarkMock_321()
        m321.runReturn = "ok"
        let r321 = try await m321.run(value: 321)
        #expect(r321 == "ok")
        #expect(m321.runCallCount == 1)
    }
    @Test func test_322() async throws {
        let m322 = BenchmarkMock_322()
        m322.runReturn = "ok"
        let r322 = try await m322.run(value: 322)
        #expect(r322 == "ok")
        #expect(m322.runCallCount == 1)
    }
    @Test func test_323() async throws {
        let m323 = BenchmarkMock_323()
        m323.runReturn = "ok"
        let r323 = try await m323.run(value: 323)
        #expect(r323 == "ok")
        #expect(m323.runCallCount == 1)
    }
    @Test func test_324() async throws {
        let m324 = BenchmarkMock_324()
        m324.runReturn = "ok"
        let r324 = try await m324.run(value: 324)
        #expect(r324 == "ok")
        #expect(m324.runCallCount == 1)
    }
    @Test func test_325() async throws {
        let m325 = BenchmarkMock_325()
        m325.runReturn = "ok"
        let r325 = try await m325.run(value: 325)
        #expect(r325 == "ok")
        #expect(m325.runCallCount == 1)
    }
    @Test func test_326() async throws {
        let m326 = BenchmarkMock_326()
        m326.runReturn = "ok"
        let r326 = try await m326.run(value: 326)
        #expect(r326 == "ok")
        #expect(m326.runCallCount == 1)
    }
    @Test func test_327() async throws {
        let m327 = BenchmarkMock_327()
        m327.runReturn = "ok"
        let r327 = try await m327.run(value: 327)
        #expect(r327 == "ok")
        #expect(m327.runCallCount == 1)
    }
    @Test func test_328() async throws {
        let m328 = BenchmarkMock_328()
        m328.runReturn = "ok"
        let r328 = try await m328.run(value: 328)
        #expect(r328 == "ok")
        #expect(m328.runCallCount == 1)
    }
    @Test func test_329() async throws {
        let m329 = BenchmarkMock_329()
        m329.runReturn = "ok"
        let r329 = try await m329.run(value: 329)
        #expect(r329 == "ok")
        #expect(m329.runCallCount == 1)
    }
    @Test func test_330() async throws {
        let m330 = BenchmarkMock_330()
        m330.runReturn = "ok"
        let r330 = try await m330.run(value: 330)
        #expect(r330 == "ok")
        #expect(m330.runCallCount == 1)
    }
    @Test func test_331() async throws {
        let m331 = BenchmarkMock_331()
        m331.runReturn = "ok"
        let r331 = try await m331.run(value: 331)
        #expect(r331 == "ok")
        #expect(m331.runCallCount == 1)
    }
    @Test func test_332() async throws {
        let m332 = BenchmarkMock_332()
        m332.runReturn = "ok"
        let r332 = try await m332.run(value: 332)
        #expect(r332 == "ok")
        #expect(m332.runCallCount == 1)
    }
    @Test func test_333() async throws {
        let m333 = BenchmarkMock_333()
        m333.runReturn = "ok"
        let r333 = try await m333.run(value: 333)
        #expect(r333 == "ok")
        #expect(m333.runCallCount == 1)
    }
    @Test func test_334() async throws {
        let m334 = BenchmarkMock_334()
        m334.runReturn = "ok"
        let r334 = try await m334.run(value: 334)
        #expect(r334 == "ok")
        #expect(m334.runCallCount == 1)
    }
    @Test func test_335() async throws {
        let m335 = BenchmarkMock_335()
        m335.runReturn = "ok"
        let r335 = try await m335.run(value: 335)
        #expect(r335 == "ok")
        #expect(m335.runCallCount == 1)
    }
    @Test func test_336() async throws {
        let m336 = BenchmarkMock_336()
        m336.runReturn = "ok"
        let r336 = try await m336.run(value: 336)
        #expect(r336 == "ok")
        #expect(m336.runCallCount == 1)
    }
    @Test func test_337() async throws {
        let m337 = BenchmarkMock_337()
        m337.runReturn = "ok"
        let r337 = try await m337.run(value: 337)
        #expect(r337 == "ok")
        #expect(m337.runCallCount == 1)
    }
    @Test func test_338() async throws {
        let m338 = BenchmarkMock_338()
        m338.runReturn = "ok"
        let r338 = try await m338.run(value: 338)
        #expect(r338 == "ok")
        #expect(m338.runCallCount == 1)
    }
    @Test func test_339() async throws {
        let m339 = BenchmarkMock_339()
        m339.runReturn = "ok"
        let r339 = try await m339.run(value: 339)
        #expect(r339 == "ok")
        #expect(m339.runCallCount == 1)
    }
    @Test func test_340() async throws {
        let m340 = BenchmarkMock_340()
        m340.runReturn = "ok"
        let r340 = try await m340.run(value: 340)
        #expect(r340 == "ok")
        #expect(m340.runCallCount == 1)
    }
    @Test func test_341() async throws {
        let m341 = BenchmarkMock_341()
        m341.runReturn = "ok"
        let r341 = try await m341.run(value: 341)
        #expect(r341 == "ok")
        #expect(m341.runCallCount == 1)
    }
    @Test func test_342() async throws {
        let m342 = BenchmarkMock_342()
        m342.runReturn = "ok"
        let r342 = try await m342.run(value: 342)
        #expect(r342 == "ok")
        #expect(m342.runCallCount == 1)
    }
    @Test func test_343() async throws {
        let m343 = BenchmarkMock_343()
        m343.runReturn = "ok"
        let r343 = try await m343.run(value: 343)
        #expect(r343 == "ok")
        #expect(m343.runCallCount == 1)
    }
    @Test func test_344() async throws {
        let m344 = BenchmarkMock_344()
        m344.runReturn = "ok"
        let r344 = try await m344.run(value: 344)
        #expect(r344 == "ok")
        #expect(m344.runCallCount == 1)
    }
    @Test func test_345() async throws {
        let m345 = BenchmarkMock_345()
        m345.runReturn = "ok"
        let r345 = try await m345.run(value: 345)
        #expect(r345 == "ok")
        #expect(m345.runCallCount == 1)
    }
    @Test func test_346() async throws {
        let m346 = BenchmarkMock_346()
        m346.runReturn = "ok"
        let r346 = try await m346.run(value: 346)
        #expect(r346 == "ok")
        #expect(m346.runCallCount == 1)
    }
    @Test func test_347() async throws {
        let m347 = BenchmarkMock_347()
        m347.runReturn = "ok"
        let r347 = try await m347.run(value: 347)
        #expect(r347 == "ok")
        #expect(m347.runCallCount == 1)
    }
    @Test func test_348() async throws {
        let m348 = BenchmarkMock_348()
        m348.runReturn = "ok"
        let r348 = try await m348.run(value: 348)
        #expect(r348 == "ok")
        #expect(m348.runCallCount == 1)
    }
    @Test func test_349() async throws {
        let m349 = BenchmarkMock_349()
        m349.runReturn = "ok"
        let r349 = try await m349.run(value: 349)
        #expect(r349 == "ok")
        #expect(m349.runCallCount == 1)
    }
    @Test func test_350() async throws {
        let m350 = BenchmarkMock_350()
        m350.runReturn = "ok"
        let r350 = try await m350.run(value: 350)
        #expect(r350 == "ok")
        #expect(m350.runCallCount == 1)
    }
    @Test func test_351() async throws {
        let m351 = BenchmarkMock_351()
        m351.runReturn = "ok"
        let r351 = try await m351.run(value: 351)
        #expect(r351 == "ok")
        #expect(m351.runCallCount == 1)
    }
    @Test func test_352() async throws {
        let m352 = BenchmarkMock_352()
        m352.runReturn = "ok"
        let r352 = try await m352.run(value: 352)
        #expect(r352 == "ok")
        #expect(m352.runCallCount == 1)
    }
    @Test func test_353() async throws {
        let m353 = BenchmarkMock_353()
        m353.runReturn = "ok"
        let r353 = try await m353.run(value: 353)
        #expect(r353 == "ok")
        #expect(m353.runCallCount == 1)
    }
    @Test func test_354() async throws {
        let m354 = BenchmarkMock_354()
        m354.runReturn = "ok"
        let r354 = try await m354.run(value: 354)
        #expect(r354 == "ok")
        #expect(m354.runCallCount == 1)
    }
    @Test func test_355() async throws {
        let m355 = BenchmarkMock_355()
        m355.runReturn = "ok"
        let r355 = try await m355.run(value: 355)
        #expect(r355 == "ok")
        #expect(m355.runCallCount == 1)
    }
    @Test func test_356() async throws {
        let m356 = BenchmarkMock_356()
        m356.runReturn = "ok"
        let r356 = try await m356.run(value: 356)
        #expect(r356 == "ok")
        #expect(m356.runCallCount == 1)
    }
    @Test func test_357() async throws {
        let m357 = BenchmarkMock_357()
        m357.runReturn = "ok"
        let r357 = try await m357.run(value: 357)
        #expect(r357 == "ok")
        #expect(m357.runCallCount == 1)
    }
    @Test func test_358() async throws {
        let m358 = BenchmarkMock_358()
        m358.runReturn = "ok"
        let r358 = try await m358.run(value: 358)
        #expect(r358 == "ok")
        #expect(m358.runCallCount == 1)
    }
    @Test func test_359() async throws {
        let m359 = BenchmarkMock_359()
        m359.runReturn = "ok"
        let r359 = try await m359.run(value: 359)
        #expect(r359 == "ok")
        #expect(m359.runCallCount == 1)
    }
    @Test func test_360() async throws {
        let m360 = BenchmarkMock_360()
        m360.runReturn = "ok"
        let r360 = try await m360.run(value: 360)
        #expect(r360 == "ok")
        #expect(m360.runCallCount == 1)
    }
    @Test func test_361() async throws {
        let m361 = BenchmarkMock_361()
        m361.runReturn = "ok"
        let r361 = try await m361.run(value: 361)
        #expect(r361 == "ok")
        #expect(m361.runCallCount == 1)
    }
    @Test func test_362() async throws {
        let m362 = BenchmarkMock_362()
        m362.runReturn = "ok"
        let r362 = try await m362.run(value: 362)
        #expect(r362 == "ok")
        #expect(m362.runCallCount == 1)
    }
    @Test func test_363() async throws {
        let m363 = BenchmarkMock_363()
        m363.runReturn = "ok"
        let r363 = try await m363.run(value: 363)
        #expect(r363 == "ok")
        #expect(m363.runCallCount == 1)
    }
    @Test func test_364() async throws {
        let m364 = BenchmarkMock_364()
        m364.runReturn = "ok"
        let r364 = try await m364.run(value: 364)
        #expect(r364 == "ok")
        #expect(m364.runCallCount == 1)
    }
    @Test func test_365() async throws {
        let m365 = BenchmarkMock_365()
        m365.runReturn = "ok"
        let r365 = try await m365.run(value: 365)
        #expect(r365 == "ok")
        #expect(m365.runCallCount == 1)
    }
    @Test func test_366() async throws {
        let m366 = BenchmarkMock_366()
        m366.runReturn = "ok"
        let r366 = try await m366.run(value: 366)
        #expect(r366 == "ok")
        #expect(m366.runCallCount == 1)
    }
    @Test func test_367() async throws {
        let m367 = BenchmarkMock_367()
        m367.runReturn = "ok"
        let r367 = try await m367.run(value: 367)
        #expect(r367 == "ok")
        #expect(m367.runCallCount == 1)
    }
    @Test func test_368() async throws {
        let m368 = BenchmarkMock_368()
        m368.runReturn = "ok"
        let r368 = try await m368.run(value: 368)
        #expect(r368 == "ok")
        #expect(m368.runCallCount == 1)
    }
    @Test func test_369() async throws {
        let m369 = BenchmarkMock_369()
        m369.runReturn = "ok"
        let r369 = try await m369.run(value: 369)
        #expect(r369 == "ok")
        #expect(m369.runCallCount == 1)
    }
    @Test func test_370() async throws {
        let m370 = BenchmarkMock_370()
        m370.runReturn = "ok"
        let r370 = try await m370.run(value: 370)
        #expect(r370 == "ok")
        #expect(m370.runCallCount == 1)
    }
    @Test func test_371() async throws {
        let m371 = BenchmarkMock_371()
        m371.runReturn = "ok"
        let r371 = try await m371.run(value: 371)
        #expect(r371 == "ok")
        #expect(m371.runCallCount == 1)
    }
    @Test func test_372() async throws {
        let m372 = BenchmarkMock_372()
        m372.runReturn = "ok"
        let r372 = try await m372.run(value: 372)
        #expect(r372 == "ok")
        #expect(m372.runCallCount == 1)
    }
    @Test func test_373() async throws {
        let m373 = BenchmarkMock_373()
        m373.runReturn = "ok"
        let r373 = try await m373.run(value: 373)
        #expect(r373 == "ok")
        #expect(m373.runCallCount == 1)
    }
    @Test func test_374() async throws {
        let m374 = BenchmarkMock_374()
        m374.runReturn = "ok"
        let r374 = try await m374.run(value: 374)
        #expect(r374 == "ok")
        #expect(m374.runCallCount == 1)
    }
    @Test func test_375() async throws {
        let m375 = BenchmarkMock_375()
        m375.runReturn = "ok"
        let r375 = try await m375.run(value: 375)
        #expect(r375 == "ok")
        #expect(m375.runCallCount == 1)
    }
    @Test func test_376() async throws {
        let m376 = BenchmarkMock_376()
        m376.runReturn = "ok"
        let r376 = try await m376.run(value: 376)
        #expect(r376 == "ok")
        #expect(m376.runCallCount == 1)
    }
    @Test func test_377() async throws {
        let m377 = BenchmarkMock_377()
        m377.runReturn = "ok"
        let r377 = try await m377.run(value: 377)
        #expect(r377 == "ok")
        #expect(m377.runCallCount == 1)
    }
    @Test func test_378() async throws {
        let m378 = BenchmarkMock_378()
        m378.runReturn = "ok"
        let r378 = try await m378.run(value: 378)
        #expect(r378 == "ok")
        #expect(m378.runCallCount == 1)
    }
    @Test func test_379() async throws {
        let m379 = BenchmarkMock_379()
        m379.runReturn = "ok"
        let r379 = try await m379.run(value: 379)
        #expect(r379 == "ok")
        #expect(m379.runCallCount == 1)
    }
    @Test func test_380() async throws {
        let m380 = BenchmarkMock_380()
        m380.runReturn = "ok"
        let r380 = try await m380.run(value: 380)
        #expect(r380 == "ok")
        #expect(m380.runCallCount == 1)
    }
    @Test func test_381() async throws {
        let m381 = BenchmarkMock_381()
        m381.runReturn = "ok"
        let r381 = try await m381.run(value: 381)
        #expect(r381 == "ok")
        #expect(m381.runCallCount == 1)
    }
    @Test func test_382() async throws {
        let m382 = BenchmarkMock_382()
        m382.runReturn = "ok"
        let r382 = try await m382.run(value: 382)
        #expect(r382 == "ok")
        #expect(m382.runCallCount == 1)
    }
    @Test func test_383() async throws {
        let m383 = BenchmarkMock_383()
        m383.runReturn = "ok"
        let r383 = try await m383.run(value: 383)
        #expect(r383 == "ok")
        #expect(m383.runCallCount == 1)
    }
    @Test func test_384() async throws {
        let m384 = BenchmarkMock_384()
        m384.runReturn = "ok"
        let r384 = try await m384.run(value: 384)
        #expect(r384 == "ok")
        #expect(m384.runCallCount == 1)
    }
    @Test func test_385() async throws {
        let m385 = BenchmarkMock_385()
        m385.runReturn = "ok"
        let r385 = try await m385.run(value: 385)
        #expect(r385 == "ok")
        #expect(m385.runCallCount == 1)
    }
    @Test func test_386() async throws {
        let m386 = BenchmarkMock_386()
        m386.runReturn = "ok"
        let r386 = try await m386.run(value: 386)
        #expect(r386 == "ok")
        #expect(m386.runCallCount == 1)
    }
    @Test func test_387() async throws {
        let m387 = BenchmarkMock_387()
        m387.runReturn = "ok"
        let r387 = try await m387.run(value: 387)
        #expect(r387 == "ok")
        #expect(m387.runCallCount == 1)
    }
    @Test func test_388() async throws {
        let m388 = BenchmarkMock_388()
        m388.runReturn = "ok"
        let r388 = try await m388.run(value: 388)
        #expect(r388 == "ok")
        #expect(m388.runCallCount == 1)
    }
    @Test func test_389() async throws {
        let m389 = BenchmarkMock_389()
        m389.runReturn = "ok"
        let r389 = try await m389.run(value: 389)
        #expect(r389 == "ok")
        #expect(m389.runCallCount == 1)
    }
    @Test func test_390() async throws {
        let m390 = BenchmarkMock_390()
        m390.runReturn = "ok"
        let r390 = try await m390.run(value: 390)
        #expect(r390 == "ok")
        #expect(m390.runCallCount == 1)
    }
    @Test func test_391() async throws {
        let m391 = BenchmarkMock_391()
        m391.runReturn = "ok"
        let r391 = try await m391.run(value: 391)
        #expect(r391 == "ok")
        #expect(m391.runCallCount == 1)
    }
    @Test func test_392() async throws {
        let m392 = BenchmarkMock_392()
        m392.runReturn = "ok"
        let r392 = try await m392.run(value: 392)
        #expect(r392 == "ok")
        #expect(m392.runCallCount == 1)
    }
    @Test func test_393() async throws {
        let m393 = BenchmarkMock_393()
        m393.runReturn = "ok"
        let r393 = try await m393.run(value: 393)
        #expect(r393 == "ok")
        #expect(m393.runCallCount == 1)
    }
    @Test func test_394() async throws {
        let m394 = BenchmarkMock_394()
        m394.runReturn = "ok"
        let r394 = try await m394.run(value: 394)
        #expect(r394 == "ok")
        #expect(m394.runCallCount == 1)
    }
    @Test func test_395() async throws {
        let m395 = BenchmarkMock_395()
        m395.runReturn = "ok"
        let r395 = try await m395.run(value: 395)
        #expect(r395 == "ok")
        #expect(m395.runCallCount == 1)
    }
    @Test func test_396() async throws {
        let m396 = BenchmarkMock_396()
        m396.runReturn = "ok"
        let r396 = try await m396.run(value: 396)
        #expect(r396 == "ok")
        #expect(m396.runCallCount == 1)
    }
    @Test func test_397() async throws {
        let m397 = BenchmarkMock_397()
        m397.runReturn = "ok"
        let r397 = try await m397.run(value: 397)
        #expect(r397 == "ok")
        #expect(m397.runCallCount == 1)
    }
    @Test func test_398() async throws {
        let m398 = BenchmarkMock_398()
        m398.runReturn = "ok"
        let r398 = try await m398.run(value: 398)
        #expect(r398 == "ok")
        #expect(m398.runCallCount == 1)
    }
    @Test func test_399() async throws {
        let m399 = BenchmarkMock_399()
        m399.runReturn = "ok"
        let r399 = try await m399.run(value: 399)
        #expect(r399 == "ok")
        #expect(m399.runCallCount == 1)
    }
    @Test func test_400() async throws {
        let m400 = BenchmarkMock_400()
        m400.runReturn = "ok"
        let r400 = try await m400.run(value: 400)
        #expect(r400 == "ok")
        #expect(m400.runCallCount == 1)
    }
    @Test func test_401() async throws {
        let m401 = BenchmarkMock_401()
        m401.runReturn = "ok"
        let r401 = try await m401.run(value: 401)
        #expect(r401 == "ok")
        #expect(m401.runCallCount == 1)
    }
    @Test func test_402() async throws {
        let m402 = BenchmarkMock_402()
        m402.runReturn = "ok"
        let r402 = try await m402.run(value: 402)
        #expect(r402 == "ok")
        #expect(m402.runCallCount == 1)
    }
    @Test func test_403() async throws {
        let m403 = BenchmarkMock_403()
        m403.runReturn = "ok"
        let r403 = try await m403.run(value: 403)
        #expect(r403 == "ok")
        #expect(m403.runCallCount == 1)
    }
    @Test func test_404() async throws {
        let m404 = BenchmarkMock_404()
        m404.runReturn = "ok"
        let r404 = try await m404.run(value: 404)
        #expect(r404 == "ok")
        #expect(m404.runCallCount == 1)
    }
    @Test func test_405() async throws {
        let m405 = BenchmarkMock_405()
        m405.runReturn = "ok"
        let r405 = try await m405.run(value: 405)
        #expect(r405 == "ok")
        #expect(m405.runCallCount == 1)
    }
    @Test func test_406() async throws {
        let m406 = BenchmarkMock_406()
        m406.runReturn = "ok"
        let r406 = try await m406.run(value: 406)
        #expect(r406 == "ok")
        #expect(m406.runCallCount == 1)
    }
    @Test func test_407() async throws {
        let m407 = BenchmarkMock_407()
        m407.runReturn = "ok"
        let r407 = try await m407.run(value: 407)
        #expect(r407 == "ok")
        #expect(m407.runCallCount == 1)
    }
    @Test func test_408() async throws {
        let m408 = BenchmarkMock_408()
        m408.runReturn = "ok"
        let r408 = try await m408.run(value: 408)
        #expect(r408 == "ok")
        #expect(m408.runCallCount == 1)
    }
    @Test func test_409() async throws {
        let m409 = BenchmarkMock_409()
        m409.runReturn = "ok"
        let r409 = try await m409.run(value: 409)
        #expect(r409 == "ok")
        #expect(m409.runCallCount == 1)
    }
    @Test func test_410() async throws {
        let m410 = BenchmarkMock_410()
        m410.runReturn = "ok"
        let r410 = try await m410.run(value: 410)
        #expect(r410 == "ok")
        #expect(m410.runCallCount == 1)
    }
    @Test func test_411() async throws {
        let m411 = BenchmarkMock_411()
        m411.runReturn = "ok"
        let r411 = try await m411.run(value: 411)
        #expect(r411 == "ok")
        #expect(m411.runCallCount == 1)
    }
    @Test func test_412() async throws {
        let m412 = BenchmarkMock_412()
        m412.runReturn = "ok"
        let r412 = try await m412.run(value: 412)
        #expect(r412 == "ok")
        #expect(m412.runCallCount == 1)
    }
    @Test func test_413() async throws {
        let m413 = BenchmarkMock_413()
        m413.runReturn = "ok"
        let r413 = try await m413.run(value: 413)
        #expect(r413 == "ok")
        #expect(m413.runCallCount == 1)
    }
    @Test func test_414() async throws {
        let m414 = BenchmarkMock_414()
        m414.runReturn = "ok"
        let r414 = try await m414.run(value: 414)
        #expect(r414 == "ok")
        #expect(m414.runCallCount == 1)
    }
    @Test func test_415() async throws {
        let m415 = BenchmarkMock_415()
        m415.runReturn = "ok"
        let r415 = try await m415.run(value: 415)
        #expect(r415 == "ok")
        #expect(m415.runCallCount == 1)
    }
    @Test func test_416() async throws {
        let m416 = BenchmarkMock_416()
        m416.runReturn = "ok"
        let r416 = try await m416.run(value: 416)
        #expect(r416 == "ok")
        #expect(m416.runCallCount == 1)
    }
    @Test func test_417() async throws {
        let m417 = BenchmarkMock_417()
        m417.runReturn = "ok"
        let r417 = try await m417.run(value: 417)
        #expect(r417 == "ok")
        #expect(m417.runCallCount == 1)
    }
    @Test func test_418() async throws {
        let m418 = BenchmarkMock_418()
        m418.runReturn = "ok"
        let r418 = try await m418.run(value: 418)
        #expect(r418 == "ok")
        #expect(m418.runCallCount == 1)
    }
    @Test func test_419() async throws {
        let m419 = BenchmarkMock_419()
        m419.runReturn = "ok"
        let r419 = try await m419.run(value: 419)
        #expect(r419 == "ok")
        #expect(m419.runCallCount == 1)
    }
    @Test func test_420() async throws {
        let m420 = BenchmarkMock_420()
        m420.runReturn = "ok"
        let r420 = try await m420.run(value: 420)
        #expect(r420 == "ok")
        #expect(m420.runCallCount == 1)
    }
    @Test func test_421() async throws {
        let m421 = BenchmarkMock_421()
        m421.runReturn = "ok"
        let r421 = try await m421.run(value: 421)
        #expect(r421 == "ok")
        #expect(m421.runCallCount == 1)
    }
    @Test func test_422() async throws {
        let m422 = BenchmarkMock_422()
        m422.runReturn = "ok"
        let r422 = try await m422.run(value: 422)
        #expect(r422 == "ok")
        #expect(m422.runCallCount == 1)
    }
    @Test func test_423() async throws {
        let m423 = BenchmarkMock_423()
        m423.runReturn = "ok"
        let r423 = try await m423.run(value: 423)
        #expect(r423 == "ok")
        #expect(m423.runCallCount == 1)
    }
    @Test func test_424() async throws {
        let m424 = BenchmarkMock_424()
        m424.runReturn = "ok"
        let r424 = try await m424.run(value: 424)
        #expect(r424 == "ok")
        #expect(m424.runCallCount == 1)
    }
    @Test func test_425() async throws {
        let m425 = BenchmarkMock_425()
        m425.runReturn = "ok"
        let r425 = try await m425.run(value: 425)
        #expect(r425 == "ok")
        #expect(m425.runCallCount == 1)
    }
    @Test func test_426() async throws {
        let m426 = BenchmarkMock_426()
        m426.runReturn = "ok"
        let r426 = try await m426.run(value: 426)
        #expect(r426 == "ok")
        #expect(m426.runCallCount == 1)
    }
    @Test func test_427() async throws {
        let m427 = BenchmarkMock_427()
        m427.runReturn = "ok"
        let r427 = try await m427.run(value: 427)
        #expect(r427 == "ok")
        #expect(m427.runCallCount == 1)
    }
    @Test func test_428() async throws {
        let m428 = BenchmarkMock_428()
        m428.runReturn = "ok"
        let r428 = try await m428.run(value: 428)
        #expect(r428 == "ok")
        #expect(m428.runCallCount == 1)
    }
    @Test func test_429() async throws {
        let m429 = BenchmarkMock_429()
        m429.runReturn = "ok"
        let r429 = try await m429.run(value: 429)
        #expect(r429 == "ok")
        #expect(m429.runCallCount == 1)
    }
    @Test func test_430() async throws {
        let m430 = BenchmarkMock_430()
        m430.runReturn = "ok"
        let r430 = try await m430.run(value: 430)
        #expect(r430 == "ok")
        #expect(m430.runCallCount == 1)
    }
    @Test func test_431() async throws {
        let m431 = BenchmarkMock_431()
        m431.runReturn = "ok"
        let r431 = try await m431.run(value: 431)
        #expect(r431 == "ok")
        #expect(m431.runCallCount == 1)
    }
    @Test func test_432() async throws {
        let m432 = BenchmarkMock_432()
        m432.runReturn = "ok"
        let r432 = try await m432.run(value: 432)
        #expect(r432 == "ok")
        #expect(m432.runCallCount == 1)
    }
    @Test func test_433() async throws {
        let m433 = BenchmarkMock_433()
        m433.runReturn = "ok"
        let r433 = try await m433.run(value: 433)
        #expect(r433 == "ok")
        #expect(m433.runCallCount == 1)
    }
    @Test func test_434() async throws {
        let m434 = BenchmarkMock_434()
        m434.runReturn = "ok"
        let r434 = try await m434.run(value: 434)
        #expect(r434 == "ok")
        #expect(m434.runCallCount == 1)
    }
    @Test func test_435() async throws {
        let m435 = BenchmarkMock_435()
        m435.runReturn = "ok"
        let r435 = try await m435.run(value: 435)
        #expect(r435 == "ok")
        #expect(m435.runCallCount == 1)
    }
    @Test func test_436() async throws {
        let m436 = BenchmarkMock_436()
        m436.runReturn = "ok"
        let r436 = try await m436.run(value: 436)
        #expect(r436 == "ok")
        #expect(m436.runCallCount == 1)
    }
    @Test func test_437() async throws {
        let m437 = BenchmarkMock_437()
        m437.runReturn = "ok"
        let r437 = try await m437.run(value: 437)
        #expect(r437 == "ok")
        #expect(m437.runCallCount == 1)
    }
    @Test func test_438() async throws {
        let m438 = BenchmarkMock_438()
        m438.runReturn = "ok"
        let r438 = try await m438.run(value: 438)
        #expect(r438 == "ok")
        #expect(m438.runCallCount == 1)
    }
    @Test func test_439() async throws {
        let m439 = BenchmarkMock_439()
        m439.runReturn = "ok"
        let r439 = try await m439.run(value: 439)
        #expect(r439 == "ok")
        #expect(m439.runCallCount == 1)
    }
    @Test func test_440() async throws {
        let m440 = BenchmarkMock_440()
        m440.runReturn = "ok"
        let r440 = try await m440.run(value: 440)
        #expect(r440 == "ok")
        #expect(m440.runCallCount == 1)
    }
    @Test func test_441() async throws {
        let m441 = BenchmarkMock_441()
        m441.runReturn = "ok"
        let r441 = try await m441.run(value: 441)
        #expect(r441 == "ok")
        #expect(m441.runCallCount == 1)
    }
    @Test func test_442() async throws {
        let m442 = BenchmarkMock_442()
        m442.runReturn = "ok"
        let r442 = try await m442.run(value: 442)
        #expect(r442 == "ok")
        #expect(m442.runCallCount == 1)
    }
    @Test func test_443() async throws {
        let m443 = BenchmarkMock_443()
        m443.runReturn = "ok"
        let r443 = try await m443.run(value: 443)
        #expect(r443 == "ok")
        #expect(m443.runCallCount == 1)
    }
    @Test func test_444() async throws {
        let m444 = BenchmarkMock_444()
        m444.runReturn = "ok"
        let r444 = try await m444.run(value: 444)
        #expect(r444 == "ok")
        #expect(m444.runCallCount == 1)
    }
    @Test func test_445() async throws {
        let m445 = BenchmarkMock_445()
        m445.runReturn = "ok"
        let r445 = try await m445.run(value: 445)
        #expect(r445 == "ok")
        #expect(m445.runCallCount == 1)
    }
    @Test func test_446() async throws {
        let m446 = BenchmarkMock_446()
        m446.runReturn = "ok"
        let r446 = try await m446.run(value: 446)
        #expect(r446 == "ok")
        #expect(m446.runCallCount == 1)
    }
    @Test func test_447() async throws {
        let m447 = BenchmarkMock_447()
        m447.runReturn = "ok"
        let r447 = try await m447.run(value: 447)
        #expect(r447 == "ok")
        #expect(m447.runCallCount == 1)
    }
    @Test func test_448() async throws {
        let m448 = BenchmarkMock_448()
        m448.runReturn = "ok"
        let r448 = try await m448.run(value: 448)
        #expect(r448 == "ok")
        #expect(m448.runCallCount == 1)
    }
    @Test func test_449() async throws {
        let m449 = BenchmarkMock_449()
        m449.runReturn = "ok"
        let r449 = try await m449.run(value: 449)
        #expect(r449 == "ok")
        #expect(m449.runCallCount == 1)
    }
    @Test func test_450() async throws {
        let m450 = BenchmarkMock_450()
        m450.runReturn = "ok"
        let r450 = try await m450.run(value: 450)
        #expect(r450 == "ok")
        #expect(m450.runCallCount == 1)
    }
    @Test func test_451() async throws {
        let m451 = BenchmarkMock_451()
        m451.runReturn = "ok"
        let r451 = try await m451.run(value: 451)
        #expect(r451 == "ok")
        #expect(m451.runCallCount == 1)
    }
    @Test func test_452() async throws {
        let m452 = BenchmarkMock_452()
        m452.runReturn = "ok"
        let r452 = try await m452.run(value: 452)
        #expect(r452 == "ok")
        #expect(m452.runCallCount == 1)
    }
    @Test func test_453() async throws {
        let m453 = BenchmarkMock_453()
        m453.runReturn = "ok"
        let r453 = try await m453.run(value: 453)
        #expect(r453 == "ok")
        #expect(m453.runCallCount == 1)
    }
    @Test func test_454() async throws {
        let m454 = BenchmarkMock_454()
        m454.runReturn = "ok"
        let r454 = try await m454.run(value: 454)
        #expect(r454 == "ok")
        #expect(m454.runCallCount == 1)
    }
    @Test func test_455() async throws {
        let m455 = BenchmarkMock_455()
        m455.runReturn = "ok"
        let r455 = try await m455.run(value: 455)
        #expect(r455 == "ok")
        #expect(m455.runCallCount == 1)
    }
    @Test func test_456() async throws {
        let m456 = BenchmarkMock_456()
        m456.runReturn = "ok"
        let r456 = try await m456.run(value: 456)
        #expect(r456 == "ok")
        #expect(m456.runCallCount == 1)
    }
    @Test func test_457() async throws {
        let m457 = BenchmarkMock_457()
        m457.runReturn = "ok"
        let r457 = try await m457.run(value: 457)
        #expect(r457 == "ok")
        #expect(m457.runCallCount == 1)
    }
    @Test func test_458() async throws {
        let m458 = BenchmarkMock_458()
        m458.runReturn = "ok"
        let r458 = try await m458.run(value: 458)
        #expect(r458 == "ok")
        #expect(m458.runCallCount == 1)
    }
    @Test func test_459() async throws {
        let m459 = BenchmarkMock_459()
        m459.runReturn = "ok"
        let r459 = try await m459.run(value: 459)
        #expect(r459 == "ok")
        #expect(m459.runCallCount == 1)
    }
    @Test func test_460() async throws {
        let m460 = BenchmarkMock_460()
        m460.runReturn = "ok"
        let r460 = try await m460.run(value: 460)
        #expect(r460 == "ok")
        #expect(m460.runCallCount == 1)
    }
    @Test func test_461() async throws {
        let m461 = BenchmarkMock_461()
        m461.runReturn = "ok"
        let r461 = try await m461.run(value: 461)
        #expect(r461 == "ok")
        #expect(m461.runCallCount == 1)
    }
    @Test func test_462() async throws {
        let m462 = BenchmarkMock_462()
        m462.runReturn = "ok"
        let r462 = try await m462.run(value: 462)
        #expect(r462 == "ok")
        #expect(m462.runCallCount == 1)
    }
    @Test func test_463() async throws {
        let m463 = BenchmarkMock_463()
        m463.runReturn = "ok"
        let r463 = try await m463.run(value: 463)
        #expect(r463 == "ok")
        #expect(m463.runCallCount == 1)
    }
    @Test func test_464() async throws {
        let m464 = BenchmarkMock_464()
        m464.runReturn = "ok"
        let r464 = try await m464.run(value: 464)
        #expect(r464 == "ok")
        #expect(m464.runCallCount == 1)
    }
    @Test func test_465() async throws {
        let m465 = BenchmarkMock_465()
        m465.runReturn = "ok"
        let r465 = try await m465.run(value: 465)
        #expect(r465 == "ok")
        #expect(m465.runCallCount == 1)
    }
    @Test func test_466() async throws {
        let m466 = BenchmarkMock_466()
        m466.runReturn = "ok"
        let r466 = try await m466.run(value: 466)
        #expect(r466 == "ok")
        #expect(m466.runCallCount == 1)
    }
    @Test func test_467() async throws {
        let m467 = BenchmarkMock_467()
        m467.runReturn = "ok"
        let r467 = try await m467.run(value: 467)
        #expect(r467 == "ok")
        #expect(m467.runCallCount == 1)
    }
    @Test func test_468() async throws {
        let m468 = BenchmarkMock_468()
        m468.runReturn = "ok"
        let r468 = try await m468.run(value: 468)
        #expect(r468 == "ok")
        #expect(m468.runCallCount == 1)
    }
    @Test func test_469() async throws {
        let m469 = BenchmarkMock_469()
        m469.runReturn = "ok"
        let r469 = try await m469.run(value: 469)
        #expect(r469 == "ok")
        #expect(m469.runCallCount == 1)
    }
    @Test func test_470() async throws {
        let m470 = BenchmarkMock_470()
        m470.runReturn = "ok"
        let r470 = try await m470.run(value: 470)
        #expect(r470 == "ok")
        #expect(m470.runCallCount == 1)
    }
    @Test func test_471() async throws {
        let m471 = BenchmarkMock_471()
        m471.runReturn = "ok"
        let r471 = try await m471.run(value: 471)
        #expect(r471 == "ok")
        #expect(m471.runCallCount == 1)
    }
    @Test func test_472() async throws {
        let m472 = BenchmarkMock_472()
        m472.runReturn = "ok"
        let r472 = try await m472.run(value: 472)
        #expect(r472 == "ok")
        #expect(m472.runCallCount == 1)
    }
    @Test func test_473() async throws {
        let m473 = BenchmarkMock_473()
        m473.runReturn = "ok"
        let r473 = try await m473.run(value: 473)
        #expect(r473 == "ok")
        #expect(m473.runCallCount == 1)
    }
    @Test func test_474() async throws {
        let m474 = BenchmarkMock_474()
        m474.runReturn = "ok"
        let r474 = try await m474.run(value: 474)
        #expect(r474 == "ok")
        #expect(m474.runCallCount == 1)
    }
    @Test func test_475() async throws {
        let m475 = BenchmarkMock_475()
        m475.runReturn = "ok"
        let r475 = try await m475.run(value: 475)
        #expect(r475 == "ok")
        #expect(m475.runCallCount == 1)
    }
    @Test func test_476() async throws {
        let m476 = BenchmarkMock_476()
        m476.runReturn = "ok"
        let r476 = try await m476.run(value: 476)
        #expect(r476 == "ok")
        #expect(m476.runCallCount == 1)
    }
    @Test func test_477() async throws {
        let m477 = BenchmarkMock_477()
        m477.runReturn = "ok"
        let r477 = try await m477.run(value: 477)
        #expect(r477 == "ok")
        #expect(m477.runCallCount == 1)
    }
    @Test func test_478() async throws {
        let m478 = BenchmarkMock_478()
        m478.runReturn = "ok"
        let r478 = try await m478.run(value: 478)
        #expect(r478 == "ok")
        #expect(m478.runCallCount == 1)
    }
    @Test func test_479() async throws {
        let m479 = BenchmarkMock_479()
        m479.runReturn = "ok"
        let r479 = try await m479.run(value: 479)
        #expect(r479 == "ok")
        #expect(m479.runCallCount == 1)
    }
    @Test func test_480() async throws {
        let m480 = BenchmarkMock_480()
        m480.runReturn = "ok"
        let r480 = try await m480.run(value: 480)
        #expect(r480 == "ok")
        #expect(m480.runCallCount == 1)
    }
    @Test func test_481() async throws {
        let m481 = BenchmarkMock_481()
        m481.runReturn = "ok"
        let r481 = try await m481.run(value: 481)
        #expect(r481 == "ok")
        #expect(m481.runCallCount == 1)
    }
    @Test func test_482() async throws {
        let m482 = BenchmarkMock_482()
        m482.runReturn = "ok"
        let r482 = try await m482.run(value: 482)
        #expect(r482 == "ok")
        #expect(m482.runCallCount == 1)
    }
    @Test func test_483() async throws {
        let m483 = BenchmarkMock_483()
        m483.runReturn = "ok"
        let r483 = try await m483.run(value: 483)
        #expect(r483 == "ok")
        #expect(m483.runCallCount == 1)
    }
    @Test func test_484() async throws {
        let m484 = BenchmarkMock_484()
        m484.runReturn = "ok"
        let r484 = try await m484.run(value: 484)
        #expect(r484 == "ok")
        #expect(m484.runCallCount == 1)
    }
    @Test func test_485() async throws {
        let m485 = BenchmarkMock_485()
        m485.runReturn = "ok"
        let r485 = try await m485.run(value: 485)
        #expect(r485 == "ok")
        #expect(m485.runCallCount == 1)
    }
    @Test func test_486() async throws {
        let m486 = BenchmarkMock_486()
        m486.runReturn = "ok"
        let r486 = try await m486.run(value: 486)
        #expect(r486 == "ok")
        #expect(m486.runCallCount == 1)
    }
    @Test func test_487() async throws {
        let m487 = BenchmarkMock_487()
        m487.runReturn = "ok"
        let r487 = try await m487.run(value: 487)
        #expect(r487 == "ok")
        #expect(m487.runCallCount == 1)
    }
    @Test func test_488() async throws {
        let m488 = BenchmarkMock_488()
        m488.runReturn = "ok"
        let r488 = try await m488.run(value: 488)
        #expect(r488 == "ok")
        #expect(m488.runCallCount == 1)
    }
    @Test func test_489() async throws {
        let m489 = BenchmarkMock_489()
        m489.runReturn = "ok"
        let r489 = try await m489.run(value: 489)
        #expect(r489 == "ok")
        #expect(m489.runCallCount == 1)
    }
    @Test func test_490() async throws {
        let m490 = BenchmarkMock_490()
        m490.runReturn = "ok"
        let r490 = try await m490.run(value: 490)
        #expect(r490 == "ok")
        #expect(m490.runCallCount == 1)
    }
    @Test func test_491() async throws {
        let m491 = BenchmarkMock_491()
        m491.runReturn = "ok"
        let r491 = try await m491.run(value: 491)
        #expect(r491 == "ok")
        #expect(m491.runCallCount == 1)
    }
    @Test func test_492() async throws {
        let m492 = BenchmarkMock_492()
        m492.runReturn = "ok"
        let r492 = try await m492.run(value: 492)
        #expect(r492 == "ok")
        #expect(m492.runCallCount == 1)
    }
    @Test func test_493() async throws {
        let m493 = BenchmarkMock_493()
        m493.runReturn = "ok"
        let r493 = try await m493.run(value: 493)
        #expect(r493 == "ok")
        #expect(m493.runCallCount == 1)
    }
    @Test func test_494() async throws {
        let m494 = BenchmarkMock_494()
        m494.runReturn = "ok"
        let r494 = try await m494.run(value: 494)
        #expect(r494 == "ok")
        #expect(m494.runCallCount == 1)
    }
    @Test func test_495() async throws {
        let m495 = BenchmarkMock_495()
        m495.runReturn = "ok"
        let r495 = try await m495.run(value: 495)
        #expect(r495 == "ok")
        #expect(m495.runCallCount == 1)
    }
    @Test func test_496() async throws {
        let m496 = BenchmarkMock_496()
        m496.runReturn = "ok"
        let r496 = try await m496.run(value: 496)
        #expect(r496 == "ok")
        #expect(m496.runCallCount == 1)
    }
    @Test func test_497() async throws {
        let m497 = BenchmarkMock_497()
        m497.runReturn = "ok"
        let r497 = try await m497.run(value: 497)
        #expect(r497 == "ok")
        #expect(m497.runCallCount == 1)
    }
    @Test func test_498() async throws {
        let m498 = BenchmarkMock_498()
        m498.runReturn = "ok"
        let r498 = try await m498.run(value: 498)
        #expect(r498 == "ok")
        #expect(m498.runCallCount == 1)
    }
    @Test func test_499() async throws {
        let m499 = BenchmarkMock_499()
        m499.runReturn = "ok"
        let r499 = try await m499.run(value: 499)
        #expect(r499 == "ok")
        #expect(m499.runCallCount == 1)
    }
    @Test func test_500() async throws {
        let m500 = BenchmarkMock_500()
        m500.runReturn = "ok"
        let r500 = try await m500.run(value: 500)
        #expect(r500 == "ok")
        #expect(m500.runCallCount == 1)
    }
    @Test func test_501() async throws {
        let m501 = BenchmarkMock_501()
        m501.runReturn = "ok"
        let r501 = try await m501.run(value: 501)
        #expect(r501 == "ok")
        #expect(m501.runCallCount == 1)
    }
    @Test func test_502() async throws {
        let m502 = BenchmarkMock_502()
        m502.runReturn = "ok"
        let r502 = try await m502.run(value: 502)
        #expect(r502 == "ok")
        #expect(m502.runCallCount == 1)
    }
    @Test func test_503() async throws {
        let m503 = BenchmarkMock_503()
        m503.runReturn = "ok"
        let r503 = try await m503.run(value: 503)
        #expect(r503 == "ok")
        #expect(m503.runCallCount == 1)
    }
    @Test func test_504() async throws {
        let m504 = BenchmarkMock_504()
        m504.runReturn = "ok"
        let r504 = try await m504.run(value: 504)
        #expect(r504 == "ok")
        #expect(m504.runCallCount == 1)
    }
    @Test func test_505() async throws {
        let m505 = BenchmarkMock_505()
        m505.runReturn = "ok"
        let r505 = try await m505.run(value: 505)
        #expect(r505 == "ok")
        #expect(m505.runCallCount == 1)
    }
    @Test func test_506() async throws {
        let m506 = BenchmarkMock_506()
        m506.runReturn = "ok"
        let r506 = try await m506.run(value: 506)
        #expect(r506 == "ok")
        #expect(m506.runCallCount == 1)
    }
    @Test func test_507() async throws {
        let m507 = BenchmarkMock_507()
        m507.runReturn = "ok"
        let r507 = try await m507.run(value: 507)
        #expect(r507 == "ok")
        #expect(m507.runCallCount == 1)
    }
    @Test func test_508() async throws {
        let m508 = BenchmarkMock_508()
        m508.runReturn = "ok"
        let r508 = try await m508.run(value: 508)
        #expect(r508 == "ok")
        #expect(m508.runCallCount == 1)
    }
    @Test func test_509() async throws {
        let m509 = BenchmarkMock_509()
        m509.runReturn = "ok"
        let r509 = try await m509.run(value: 509)
        #expect(r509 == "ok")
        #expect(m509.runCallCount == 1)
    }
    @Test func test_510() async throws {
        let m510 = BenchmarkMock_510()
        m510.runReturn = "ok"
        let r510 = try await m510.run(value: 510)
        #expect(r510 == "ok")
        #expect(m510.runCallCount == 1)
    }
    @Test func test_511() async throws {
        let m511 = BenchmarkMock_511()
        m511.runReturn = "ok"
        let r511 = try await m511.run(value: 511)
        #expect(r511 == "ok")
        #expect(m511.runCallCount == 1)
    }
    @Test func test_512() async throws {
        let m512 = BenchmarkMock_512()
        m512.runReturn = "ok"
        let r512 = try await m512.run(value: 512)
        #expect(r512 == "ok")
        #expect(m512.runCallCount == 1)
    }
    @Test func test_513() async throws {
        let m513 = BenchmarkMock_513()
        m513.runReturn = "ok"
        let r513 = try await m513.run(value: 513)
        #expect(r513 == "ok")
        #expect(m513.runCallCount == 1)
    }
    @Test func test_514() async throws {
        let m514 = BenchmarkMock_514()
        m514.runReturn = "ok"
        let r514 = try await m514.run(value: 514)
        #expect(r514 == "ok")
        #expect(m514.runCallCount == 1)
    }
    @Test func test_515() async throws {
        let m515 = BenchmarkMock_515()
        m515.runReturn = "ok"
        let r515 = try await m515.run(value: 515)
        #expect(r515 == "ok")
        #expect(m515.runCallCount == 1)
    }
    @Test func test_516() async throws {
        let m516 = BenchmarkMock_516()
        m516.runReturn = "ok"
        let r516 = try await m516.run(value: 516)
        #expect(r516 == "ok")
        #expect(m516.runCallCount == 1)
    }
    @Test func test_517() async throws {
        let m517 = BenchmarkMock_517()
        m517.runReturn = "ok"
        let r517 = try await m517.run(value: 517)
        #expect(r517 == "ok")
        #expect(m517.runCallCount == 1)
    }
    @Test func test_518() async throws {
        let m518 = BenchmarkMock_518()
        m518.runReturn = "ok"
        let r518 = try await m518.run(value: 518)
        #expect(r518 == "ok")
        #expect(m518.runCallCount == 1)
    }
    @Test func test_519() async throws {
        let m519 = BenchmarkMock_519()
        m519.runReturn = "ok"
        let r519 = try await m519.run(value: 519)
        #expect(r519 == "ok")
        #expect(m519.runCallCount == 1)
    }
    @Test func test_520() async throws {
        let m520 = BenchmarkMock_520()
        m520.runReturn = "ok"
        let r520 = try await m520.run(value: 520)
        #expect(r520 == "ok")
        #expect(m520.runCallCount == 1)
    }
    @Test func test_521() async throws {
        let m521 = BenchmarkMock_521()
        m521.runReturn = "ok"
        let r521 = try await m521.run(value: 521)
        #expect(r521 == "ok")
        #expect(m521.runCallCount == 1)
    }
    @Test func test_522() async throws {
        let m522 = BenchmarkMock_522()
        m522.runReturn = "ok"
        let r522 = try await m522.run(value: 522)
        #expect(r522 == "ok")
        #expect(m522.runCallCount == 1)
    }
    @Test func test_523() async throws {
        let m523 = BenchmarkMock_523()
        m523.runReturn = "ok"
        let r523 = try await m523.run(value: 523)
        #expect(r523 == "ok")
        #expect(m523.runCallCount == 1)
    }
    @Test func test_524() async throws {
        let m524 = BenchmarkMock_524()
        m524.runReturn = "ok"
        let r524 = try await m524.run(value: 524)
        #expect(r524 == "ok")
        #expect(m524.runCallCount == 1)
    }
    @Test func test_525() async throws {
        let m525 = BenchmarkMock_525()
        m525.runReturn = "ok"
        let r525 = try await m525.run(value: 525)
        #expect(r525 == "ok")
        #expect(m525.runCallCount == 1)
    }
    @Test func test_526() async throws {
        let m526 = BenchmarkMock_526()
        m526.runReturn = "ok"
        let r526 = try await m526.run(value: 526)
        #expect(r526 == "ok")
        #expect(m526.runCallCount == 1)
    }
    @Test func test_527() async throws {
        let m527 = BenchmarkMock_527()
        m527.runReturn = "ok"
        let r527 = try await m527.run(value: 527)
        #expect(r527 == "ok")
        #expect(m527.runCallCount == 1)
    }
    @Test func test_528() async throws {
        let m528 = BenchmarkMock_528()
        m528.runReturn = "ok"
        let r528 = try await m528.run(value: 528)
        #expect(r528 == "ok")
        #expect(m528.runCallCount == 1)
    }
    @Test func test_529() async throws {
        let m529 = BenchmarkMock_529()
        m529.runReturn = "ok"
        let r529 = try await m529.run(value: 529)
        #expect(r529 == "ok")
        #expect(m529.runCallCount == 1)
    }
    @Test func test_530() async throws {
        let m530 = BenchmarkMock_530()
        m530.runReturn = "ok"
        let r530 = try await m530.run(value: 530)
        #expect(r530 == "ok")
        #expect(m530.runCallCount == 1)
    }
    @Test func test_531() async throws {
        let m531 = BenchmarkMock_531()
        m531.runReturn = "ok"
        let r531 = try await m531.run(value: 531)
        #expect(r531 == "ok")
        #expect(m531.runCallCount == 1)
    }
    @Test func test_532() async throws {
        let m532 = BenchmarkMock_532()
        m532.runReturn = "ok"
        let r532 = try await m532.run(value: 532)
        #expect(r532 == "ok")
        #expect(m532.runCallCount == 1)
    }
    @Test func test_533() async throws {
        let m533 = BenchmarkMock_533()
        m533.runReturn = "ok"
        let r533 = try await m533.run(value: 533)
        #expect(r533 == "ok")
        #expect(m533.runCallCount == 1)
    }
    @Test func test_534() async throws {
        let m534 = BenchmarkMock_534()
        m534.runReturn = "ok"
        let r534 = try await m534.run(value: 534)
        #expect(r534 == "ok")
        #expect(m534.runCallCount == 1)
    }
    @Test func test_535() async throws {
        let m535 = BenchmarkMock_535()
        m535.runReturn = "ok"
        let r535 = try await m535.run(value: 535)
        #expect(r535 == "ok")
        #expect(m535.runCallCount == 1)
    }
    @Test func test_536() async throws {
        let m536 = BenchmarkMock_536()
        m536.runReturn = "ok"
        let r536 = try await m536.run(value: 536)
        #expect(r536 == "ok")
        #expect(m536.runCallCount == 1)
    }
    @Test func test_537() async throws {
        let m537 = BenchmarkMock_537()
        m537.runReturn = "ok"
        let r537 = try await m537.run(value: 537)
        #expect(r537 == "ok")
        #expect(m537.runCallCount == 1)
    }
    @Test func test_538() async throws {
        let m538 = BenchmarkMock_538()
        m538.runReturn = "ok"
        let r538 = try await m538.run(value: 538)
        #expect(r538 == "ok")
        #expect(m538.runCallCount == 1)
    }
    @Test func test_539() async throws {
        let m539 = BenchmarkMock_539()
        m539.runReturn = "ok"
        let r539 = try await m539.run(value: 539)
        #expect(r539 == "ok")
        #expect(m539.runCallCount == 1)
    }
    @Test func test_540() async throws {
        let m540 = BenchmarkMock_540()
        m540.runReturn = "ok"
        let r540 = try await m540.run(value: 540)
        #expect(r540 == "ok")
        #expect(m540.runCallCount == 1)
    }
    @Test func test_541() async throws {
        let m541 = BenchmarkMock_541()
        m541.runReturn = "ok"
        let r541 = try await m541.run(value: 541)
        #expect(r541 == "ok")
        #expect(m541.runCallCount == 1)
    }
    @Test func test_542() async throws {
        let m542 = BenchmarkMock_542()
        m542.runReturn = "ok"
        let r542 = try await m542.run(value: 542)
        #expect(r542 == "ok")
        #expect(m542.runCallCount == 1)
    }
    @Test func test_543() async throws {
        let m543 = BenchmarkMock_543()
        m543.runReturn = "ok"
        let r543 = try await m543.run(value: 543)
        #expect(r543 == "ok")
        #expect(m543.runCallCount == 1)
    }
    @Test func test_544() async throws {
        let m544 = BenchmarkMock_544()
        m544.runReturn = "ok"
        let r544 = try await m544.run(value: 544)
        #expect(r544 == "ok")
        #expect(m544.runCallCount == 1)
    }
    @Test func test_545() async throws {
        let m545 = BenchmarkMock_545()
        m545.runReturn = "ok"
        let r545 = try await m545.run(value: 545)
        #expect(r545 == "ok")
        #expect(m545.runCallCount == 1)
    }
    @Test func test_546() async throws {
        let m546 = BenchmarkMock_546()
        m546.runReturn = "ok"
        let r546 = try await m546.run(value: 546)
        #expect(r546 == "ok")
        #expect(m546.runCallCount == 1)
    }
    @Test func test_547() async throws {
        let m547 = BenchmarkMock_547()
        m547.runReturn = "ok"
        let r547 = try await m547.run(value: 547)
        #expect(r547 == "ok")
        #expect(m547.runCallCount == 1)
    }
    @Test func test_548() async throws {
        let m548 = BenchmarkMock_548()
        m548.runReturn = "ok"
        let r548 = try await m548.run(value: 548)
        #expect(r548 == "ok")
        #expect(m548.runCallCount == 1)
    }
    @Test func test_549() async throws {
        let m549 = BenchmarkMock_549()
        m549.runReturn = "ok"
        let r549 = try await m549.run(value: 549)
        #expect(r549 == "ok")
        #expect(m549.runCallCount == 1)
    }
    @Test func test_550() async throws {
        let m550 = BenchmarkMock_550()
        m550.runReturn = "ok"
        let r550 = try await m550.run(value: 550)
        #expect(r550 == "ok")
        #expect(m550.runCallCount == 1)
    }
    @Test func test_551() async throws {
        let m551 = BenchmarkMock_551()
        m551.runReturn = "ok"
        let r551 = try await m551.run(value: 551)
        #expect(r551 == "ok")
        #expect(m551.runCallCount == 1)
    }
    @Test func test_552() async throws {
        let m552 = BenchmarkMock_552()
        m552.runReturn = "ok"
        let r552 = try await m552.run(value: 552)
        #expect(r552 == "ok")
        #expect(m552.runCallCount == 1)
    }
    @Test func test_553() async throws {
        let m553 = BenchmarkMock_553()
        m553.runReturn = "ok"
        let r553 = try await m553.run(value: 553)
        #expect(r553 == "ok")
        #expect(m553.runCallCount == 1)
    }
    @Test func test_554() async throws {
        let m554 = BenchmarkMock_554()
        m554.runReturn = "ok"
        let r554 = try await m554.run(value: 554)
        #expect(r554 == "ok")
        #expect(m554.runCallCount == 1)
    }
    @Test func test_555() async throws {
        let m555 = BenchmarkMock_555()
        m555.runReturn = "ok"
        let r555 = try await m555.run(value: 555)
        #expect(r555 == "ok")
        #expect(m555.runCallCount == 1)
    }
    @Test func test_556() async throws {
        let m556 = BenchmarkMock_556()
        m556.runReturn = "ok"
        let r556 = try await m556.run(value: 556)
        #expect(r556 == "ok")
        #expect(m556.runCallCount == 1)
    }
    @Test func test_557() async throws {
        let m557 = BenchmarkMock_557()
        m557.runReturn = "ok"
        let r557 = try await m557.run(value: 557)
        #expect(r557 == "ok")
        #expect(m557.runCallCount == 1)
    }
    @Test func test_558() async throws {
        let m558 = BenchmarkMock_558()
        m558.runReturn = "ok"
        let r558 = try await m558.run(value: 558)
        #expect(r558 == "ok")
        #expect(m558.runCallCount == 1)
    }
    @Test func test_559() async throws {
        let m559 = BenchmarkMock_559()
        m559.runReturn = "ok"
        let r559 = try await m559.run(value: 559)
        #expect(r559 == "ok")
        #expect(m559.runCallCount == 1)
    }
    @Test func test_560() async throws {
        let m560 = BenchmarkMock_560()
        m560.runReturn = "ok"
        let r560 = try await m560.run(value: 560)
        #expect(r560 == "ok")
        #expect(m560.runCallCount == 1)
    }
    @Test func test_561() async throws {
        let m561 = BenchmarkMock_561()
        m561.runReturn = "ok"
        let r561 = try await m561.run(value: 561)
        #expect(r561 == "ok")
        #expect(m561.runCallCount == 1)
    }
    @Test func test_562() async throws {
        let m562 = BenchmarkMock_562()
        m562.runReturn = "ok"
        let r562 = try await m562.run(value: 562)
        #expect(r562 == "ok")
        #expect(m562.runCallCount == 1)
    }
    @Test func test_563() async throws {
        let m563 = BenchmarkMock_563()
        m563.runReturn = "ok"
        let r563 = try await m563.run(value: 563)
        #expect(r563 == "ok")
        #expect(m563.runCallCount == 1)
    }
    @Test func test_564() async throws {
        let m564 = BenchmarkMock_564()
        m564.runReturn = "ok"
        let r564 = try await m564.run(value: 564)
        #expect(r564 == "ok")
        #expect(m564.runCallCount == 1)
    }
    @Test func test_565() async throws {
        let m565 = BenchmarkMock_565()
        m565.runReturn = "ok"
        let r565 = try await m565.run(value: 565)
        #expect(r565 == "ok")
        #expect(m565.runCallCount == 1)
    }
    @Test func test_566() async throws {
        let m566 = BenchmarkMock_566()
        m566.runReturn = "ok"
        let r566 = try await m566.run(value: 566)
        #expect(r566 == "ok")
        #expect(m566.runCallCount == 1)
    }
    @Test func test_567() async throws {
        let m567 = BenchmarkMock_567()
        m567.runReturn = "ok"
        let r567 = try await m567.run(value: 567)
        #expect(r567 == "ok")
        #expect(m567.runCallCount == 1)
    }
    @Test func test_568() async throws {
        let m568 = BenchmarkMock_568()
        m568.runReturn = "ok"
        let r568 = try await m568.run(value: 568)
        #expect(r568 == "ok")
        #expect(m568.runCallCount == 1)
    }
    @Test func test_569() async throws {
        let m569 = BenchmarkMock_569()
        m569.runReturn = "ok"
        let r569 = try await m569.run(value: 569)
        #expect(r569 == "ok")
        #expect(m569.runCallCount == 1)
    }
    @Test func test_570() async throws {
        let m570 = BenchmarkMock_570()
        m570.runReturn = "ok"
        let r570 = try await m570.run(value: 570)
        #expect(r570 == "ok")
        #expect(m570.runCallCount == 1)
    }
    @Test func test_571() async throws {
        let m571 = BenchmarkMock_571()
        m571.runReturn = "ok"
        let r571 = try await m571.run(value: 571)
        #expect(r571 == "ok")
        #expect(m571.runCallCount == 1)
    }
    @Test func test_572() async throws {
        let m572 = BenchmarkMock_572()
        m572.runReturn = "ok"
        let r572 = try await m572.run(value: 572)
        #expect(r572 == "ok")
        #expect(m572.runCallCount == 1)
    }
    @Test func test_573() async throws {
        let m573 = BenchmarkMock_573()
        m573.runReturn = "ok"
        let r573 = try await m573.run(value: 573)
        #expect(r573 == "ok")
        #expect(m573.runCallCount == 1)
    }
    @Test func test_574() async throws {
        let m574 = BenchmarkMock_574()
        m574.runReturn = "ok"
        let r574 = try await m574.run(value: 574)
        #expect(r574 == "ok")
        #expect(m574.runCallCount == 1)
    }
    @Test func test_575() async throws {
        let m575 = BenchmarkMock_575()
        m575.runReturn = "ok"
        let r575 = try await m575.run(value: 575)
        #expect(r575 == "ok")
        #expect(m575.runCallCount == 1)
    }
    @Test func test_576() async throws {
        let m576 = BenchmarkMock_576()
        m576.runReturn = "ok"
        let r576 = try await m576.run(value: 576)
        #expect(r576 == "ok")
        #expect(m576.runCallCount == 1)
    }
    @Test func test_577() async throws {
        let m577 = BenchmarkMock_577()
        m577.runReturn = "ok"
        let r577 = try await m577.run(value: 577)
        #expect(r577 == "ok")
        #expect(m577.runCallCount == 1)
    }
    @Test func test_578() async throws {
        let m578 = BenchmarkMock_578()
        m578.runReturn = "ok"
        let r578 = try await m578.run(value: 578)
        #expect(r578 == "ok")
        #expect(m578.runCallCount == 1)
    }
    @Test func test_579() async throws {
        let m579 = BenchmarkMock_579()
        m579.runReturn = "ok"
        let r579 = try await m579.run(value: 579)
        #expect(r579 == "ok")
        #expect(m579.runCallCount == 1)
    }
    @Test func test_580() async throws {
        let m580 = BenchmarkMock_580()
        m580.runReturn = "ok"
        let r580 = try await m580.run(value: 580)
        #expect(r580 == "ok")
        #expect(m580.runCallCount == 1)
    }
    @Test func test_581() async throws {
        let m581 = BenchmarkMock_581()
        m581.runReturn = "ok"
        let r581 = try await m581.run(value: 581)
        #expect(r581 == "ok")
        #expect(m581.runCallCount == 1)
    }
    @Test func test_582() async throws {
        let m582 = BenchmarkMock_582()
        m582.runReturn = "ok"
        let r582 = try await m582.run(value: 582)
        #expect(r582 == "ok")
        #expect(m582.runCallCount == 1)
    }
    @Test func test_583() async throws {
        let m583 = BenchmarkMock_583()
        m583.runReturn = "ok"
        let r583 = try await m583.run(value: 583)
        #expect(r583 == "ok")
        #expect(m583.runCallCount == 1)
    }
    @Test func test_584() async throws {
        let m584 = BenchmarkMock_584()
        m584.runReturn = "ok"
        let r584 = try await m584.run(value: 584)
        #expect(r584 == "ok")
        #expect(m584.runCallCount == 1)
    }
    @Test func test_585() async throws {
        let m585 = BenchmarkMock_585()
        m585.runReturn = "ok"
        let r585 = try await m585.run(value: 585)
        #expect(r585 == "ok")
        #expect(m585.runCallCount == 1)
    }
    @Test func test_586() async throws {
        let m586 = BenchmarkMock_586()
        m586.runReturn = "ok"
        let r586 = try await m586.run(value: 586)
        #expect(r586 == "ok")
        #expect(m586.runCallCount == 1)
    }
    @Test func test_587() async throws {
        let m587 = BenchmarkMock_587()
        m587.runReturn = "ok"
        let r587 = try await m587.run(value: 587)
        #expect(r587 == "ok")
        #expect(m587.runCallCount == 1)
    }
    @Test func test_588() async throws {
        let m588 = BenchmarkMock_588()
        m588.runReturn = "ok"
        let r588 = try await m588.run(value: 588)
        #expect(r588 == "ok")
        #expect(m588.runCallCount == 1)
    }
    @Test func test_589() async throws {
        let m589 = BenchmarkMock_589()
        m589.runReturn = "ok"
        let r589 = try await m589.run(value: 589)
        #expect(r589 == "ok")
        #expect(m589.runCallCount == 1)
    }
    @Test func test_590() async throws {
        let m590 = BenchmarkMock_590()
        m590.runReturn = "ok"
        let r590 = try await m590.run(value: 590)
        #expect(r590 == "ok")
        #expect(m590.runCallCount == 1)
    }
    @Test func test_591() async throws {
        let m591 = BenchmarkMock_591()
        m591.runReturn = "ok"
        let r591 = try await m591.run(value: 591)
        #expect(r591 == "ok")
        #expect(m591.runCallCount == 1)
    }
    @Test func test_592() async throws {
        let m592 = BenchmarkMock_592()
        m592.runReturn = "ok"
        let r592 = try await m592.run(value: 592)
        #expect(r592 == "ok")
        #expect(m592.runCallCount == 1)
    }
    @Test func test_593() async throws {
        let m593 = BenchmarkMock_593()
        m593.runReturn = "ok"
        let r593 = try await m593.run(value: 593)
        #expect(r593 == "ok")
        #expect(m593.runCallCount == 1)
    }
    @Test func test_594() async throws {
        let m594 = BenchmarkMock_594()
        m594.runReturn = "ok"
        let r594 = try await m594.run(value: 594)
        #expect(r594 == "ok")
        #expect(m594.runCallCount == 1)
    }
    @Test func test_595() async throws {
        let m595 = BenchmarkMock_595()
        m595.runReturn = "ok"
        let r595 = try await m595.run(value: 595)
        #expect(r595 == "ok")
        #expect(m595.runCallCount == 1)
    }
    @Test func test_596() async throws {
        let m596 = BenchmarkMock_596()
        m596.runReturn = "ok"
        let r596 = try await m596.run(value: 596)
        #expect(r596 == "ok")
        #expect(m596.runCallCount == 1)
    }
    @Test func test_597() async throws {
        let m597 = BenchmarkMock_597()
        m597.runReturn = "ok"
        let r597 = try await m597.run(value: 597)
        #expect(r597 == "ok")
        #expect(m597.runCallCount == 1)
    }
    @Test func test_598() async throws {
        let m598 = BenchmarkMock_598()
        m598.runReturn = "ok"
        let r598 = try await m598.run(value: 598)
        #expect(r598 == "ok")
        #expect(m598.runCallCount == 1)
    }
    @Test func test_599() async throws {
        let m599 = BenchmarkMock_599()
        m599.runReturn = "ok"
        let r599 = try await m599.run(value: 599)
        #expect(r599 == "ok")
        #expect(m599.runCallCount == 1)
    }
    @Test func test_600() async throws {
        let m600 = BenchmarkMock_600()
        m600.runReturn = "ok"
        let r600 = try await m600.run(value: 600)
        #expect(r600 == "ok")
        #expect(m600.runCallCount == 1)
    }
    @Test func test_601() async throws {
        let m601 = BenchmarkMock_601()
        m601.runReturn = "ok"
        let r601 = try await m601.run(value: 601)
        #expect(r601 == "ok")
        #expect(m601.runCallCount == 1)
    }
    @Test func test_602() async throws {
        let m602 = BenchmarkMock_602()
        m602.runReturn = "ok"
        let r602 = try await m602.run(value: 602)
        #expect(r602 == "ok")
        #expect(m602.runCallCount == 1)
    }
    @Test func test_603() async throws {
        let m603 = BenchmarkMock_603()
        m603.runReturn = "ok"
        let r603 = try await m603.run(value: 603)
        #expect(r603 == "ok")
        #expect(m603.runCallCount == 1)
    }
    @Test func test_604() async throws {
        let m604 = BenchmarkMock_604()
        m604.runReturn = "ok"
        let r604 = try await m604.run(value: 604)
        #expect(r604 == "ok")
        #expect(m604.runCallCount == 1)
    }
    @Test func test_605() async throws {
        let m605 = BenchmarkMock_605()
        m605.runReturn = "ok"
        let r605 = try await m605.run(value: 605)
        #expect(r605 == "ok")
        #expect(m605.runCallCount == 1)
    }
    @Test func test_606() async throws {
        let m606 = BenchmarkMock_606()
        m606.runReturn = "ok"
        let r606 = try await m606.run(value: 606)
        #expect(r606 == "ok")
        #expect(m606.runCallCount == 1)
    }
    @Test func test_607() async throws {
        let m607 = BenchmarkMock_607()
        m607.runReturn = "ok"
        let r607 = try await m607.run(value: 607)
        #expect(r607 == "ok")
        #expect(m607.runCallCount == 1)
    }
    @Test func test_608() async throws {
        let m608 = BenchmarkMock_608()
        m608.runReturn = "ok"
        let r608 = try await m608.run(value: 608)
        #expect(r608 == "ok")
        #expect(m608.runCallCount == 1)
    }
    @Test func test_609() async throws {
        let m609 = BenchmarkMock_609()
        m609.runReturn = "ok"
        let r609 = try await m609.run(value: 609)
        #expect(r609 == "ok")
        #expect(m609.runCallCount == 1)
    }
    @Test func test_610() async throws {
        let m610 = BenchmarkMock_610()
        m610.runReturn = "ok"
        let r610 = try await m610.run(value: 610)
        #expect(r610 == "ok")
        #expect(m610.runCallCount == 1)
    }
    @Test func test_611() async throws {
        let m611 = BenchmarkMock_611()
        m611.runReturn = "ok"
        let r611 = try await m611.run(value: 611)
        #expect(r611 == "ok")
        #expect(m611.runCallCount == 1)
    }
    @Test func test_612() async throws {
        let m612 = BenchmarkMock_612()
        m612.runReturn = "ok"
        let r612 = try await m612.run(value: 612)
        #expect(r612 == "ok")
        #expect(m612.runCallCount == 1)
    }
    @Test func test_613() async throws {
        let m613 = BenchmarkMock_613()
        m613.runReturn = "ok"
        let r613 = try await m613.run(value: 613)
        #expect(r613 == "ok")
        #expect(m613.runCallCount == 1)
    }
    @Test func test_614() async throws {
        let m614 = BenchmarkMock_614()
        m614.runReturn = "ok"
        let r614 = try await m614.run(value: 614)
        #expect(r614 == "ok")
        #expect(m614.runCallCount == 1)
    }
    @Test func test_615() async throws {
        let m615 = BenchmarkMock_615()
        m615.runReturn = "ok"
        let r615 = try await m615.run(value: 615)
        #expect(r615 == "ok")
        #expect(m615.runCallCount == 1)
    }
    @Test func test_616() async throws {
        let m616 = BenchmarkMock_616()
        m616.runReturn = "ok"
        let r616 = try await m616.run(value: 616)
        #expect(r616 == "ok")
        #expect(m616.runCallCount == 1)
    }
    @Test func test_617() async throws {
        let m617 = BenchmarkMock_617()
        m617.runReturn = "ok"
        let r617 = try await m617.run(value: 617)
        #expect(r617 == "ok")
        #expect(m617.runCallCount == 1)
    }
    @Test func test_618() async throws {
        let m618 = BenchmarkMock_618()
        m618.runReturn = "ok"
        let r618 = try await m618.run(value: 618)
        #expect(r618 == "ok")
        #expect(m618.runCallCount == 1)
    }
    @Test func test_619() async throws {
        let m619 = BenchmarkMock_619()
        m619.runReturn = "ok"
        let r619 = try await m619.run(value: 619)
        #expect(r619 == "ok")
        #expect(m619.runCallCount == 1)
    }
    @Test func test_620() async throws {
        let m620 = BenchmarkMock_620()
        m620.runReturn = "ok"
        let r620 = try await m620.run(value: 620)
        #expect(r620 == "ok")
        #expect(m620.runCallCount == 1)
    }
    @Test func test_621() async throws {
        let m621 = BenchmarkMock_621()
        m621.runReturn = "ok"
        let r621 = try await m621.run(value: 621)
        #expect(r621 == "ok")
        #expect(m621.runCallCount == 1)
    }
    @Test func test_622() async throws {
        let m622 = BenchmarkMock_622()
        m622.runReturn = "ok"
        let r622 = try await m622.run(value: 622)
        #expect(r622 == "ok")
        #expect(m622.runCallCount == 1)
    }
    @Test func test_623() async throws {
        let m623 = BenchmarkMock_623()
        m623.runReturn = "ok"
        let r623 = try await m623.run(value: 623)
        #expect(r623 == "ok")
        #expect(m623.runCallCount == 1)
    }
    @Test func test_624() async throws {
        let m624 = BenchmarkMock_624()
        m624.runReturn = "ok"
        let r624 = try await m624.run(value: 624)
        #expect(r624 == "ok")
        #expect(m624.runCallCount == 1)
    }
    @Test func test_625() async throws {
        let m625 = BenchmarkMock_625()
        m625.runReturn = "ok"
        let r625 = try await m625.run(value: 625)
        #expect(r625 == "ok")
        #expect(m625.runCallCount == 1)
    }
    @Test func test_626() async throws {
        let m626 = BenchmarkMock_626()
        m626.runReturn = "ok"
        let r626 = try await m626.run(value: 626)
        #expect(r626 == "ok")
        #expect(m626.runCallCount == 1)
    }
    @Test func test_627() async throws {
        let m627 = BenchmarkMock_627()
        m627.runReturn = "ok"
        let r627 = try await m627.run(value: 627)
        #expect(r627 == "ok")
        #expect(m627.runCallCount == 1)
    }
    @Test func test_628() async throws {
        let m628 = BenchmarkMock_628()
        m628.runReturn = "ok"
        let r628 = try await m628.run(value: 628)
        #expect(r628 == "ok")
        #expect(m628.runCallCount == 1)
    }
    @Test func test_629() async throws {
        let m629 = BenchmarkMock_629()
        m629.runReturn = "ok"
        let r629 = try await m629.run(value: 629)
        #expect(r629 == "ok")
        #expect(m629.runCallCount == 1)
    }
    @Test func test_630() async throws {
        let m630 = BenchmarkMock_630()
        m630.runReturn = "ok"
        let r630 = try await m630.run(value: 630)
        #expect(r630 == "ok")
        #expect(m630.runCallCount == 1)
    }
    @Test func test_631() async throws {
        let m631 = BenchmarkMock_631()
        m631.runReturn = "ok"
        let r631 = try await m631.run(value: 631)
        #expect(r631 == "ok")
        #expect(m631.runCallCount == 1)
    }
    @Test func test_632() async throws {
        let m632 = BenchmarkMock_632()
        m632.runReturn = "ok"
        let r632 = try await m632.run(value: 632)
        #expect(r632 == "ok")
        #expect(m632.runCallCount == 1)
    }
    @Test func test_633() async throws {
        let m633 = BenchmarkMock_633()
        m633.runReturn = "ok"
        let r633 = try await m633.run(value: 633)
        #expect(r633 == "ok")
        #expect(m633.runCallCount == 1)
    }
    @Test func test_634() async throws {
        let m634 = BenchmarkMock_634()
        m634.runReturn = "ok"
        let r634 = try await m634.run(value: 634)
        #expect(r634 == "ok")
        #expect(m634.runCallCount == 1)
    }
    @Test func test_635() async throws {
        let m635 = BenchmarkMock_635()
        m635.runReturn = "ok"
        let r635 = try await m635.run(value: 635)
        #expect(r635 == "ok")
        #expect(m635.runCallCount == 1)
    }
    @Test func test_636() async throws {
        let m636 = BenchmarkMock_636()
        m636.runReturn = "ok"
        let r636 = try await m636.run(value: 636)
        #expect(r636 == "ok")
        #expect(m636.runCallCount == 1)
    }
    @Test func test_637() async throws {
        let m637 = BenchmarkMock_637()
        m637.runReturn = "ok"
        let r637 = try await m637.run(value: 637)
        #expect(r637 == "ok")
        #expect(m637.runCallCount == 1)
    }
    @Test func test_638() async throws {
        let m638 = BenchmarkMock_638()
        m638.runReturn = "ok"
        let r638 = try await m638.run(value: 638)
        #expect(r638 == "ok")
        #expect(m638.runCallCount == 1)
    }
    @Test func test_639() async throws {
        let m639 = BenchmarkMock_639()
        m639.runReturn = "ok"
        let r639 = try await m639.run(value: 639)
        #expect(r639 == "ok")
        #expect(m639.runCallCount == 1)
    }
    @Test func test_640() async throws {
        let m640 = BenchmarkMock_640()
        m640.runReturn = "ok"
        let r640 = try await m640.run(value: 640)
        #expect(r640 == "ok")
        #expect(m640.runCallCount == 1)
    }
    @Test func test_641() async throws {
        let m641 = BenchmarkMock_641()
        m641.runReturn = "ok"
        let r641 = try await m641.run(value: 641)
        #expect(r641 == "ok")
        #expect(m641.runCallCount == 1)
    }
    @Test func test_642() async throws {
        let m642 = BenchmarkMock_642()
        m642.runReturn = "ok"
        let r642 = try await m642.run(value: 642)
        #expect(r642 == "ok")
        #expect(m642.runCallCount == 1)
    }
    @Test func test_643() async throws {
        let m643 = BenchmarkMock_643()
        m643.runReturn = "ok"
        let r643 = try await m643.run(value: 643)
        #expect(r643 == "ok")
        #expect(m643.runCallCount == 1)
    }
    @Test func test_644() async throws {
        let m644 = BenchmarkMock_644()
        m644.runReturn = "ok"
        let r644 = try await m644.run(value: 644)
        #expect(r644 == "ok")
        #expect(m644.runCallCount == 1)
    }
    @Test func test_645() async throws {
        let m645 = BenchmarkMock_645()
        m645.runReturn = "ok"
        let r645 = try await m645.run(value: 645)
        #expect(r645 == "ok")
        #expect(m645.runCallCount == 1)
    }
    @Test func test_646() async throws {
        let m646 = BenchmarkMock_646()
        m646.runReturn = "ok"
        let r646 = try await m646.run(value: 646)
        #expect(r646 == "ok")
        #expect(m646.runCallCount == 1)
    }
    @Test func test_647() async throws {
        let m647 = BenchmarkMock_647()
        m647.runReturn = "ok"
        let r647 = try await m647.run(value: 647)
        #expect(r647 == "ok")
        #expect(m647.runCallCount == 1)
    }
    @Test func test_648() async throws {
        let m648 = BenchmarkMock_648()
        m648.runReturn = "ok"
        let r648 = try await m648.run(value: 648)
        #expect(r648 == "ok")
        #expect(m648.runCallCount == 1)
    }
    @Test func test_649() async throws {
        let m649 = BenchmarkMock_649()
        m649.runReturn = "ok"
        let r649 = try await m649.run(value: 649)
        #expect(r649 == "ok")
        #expect(m649.runCallCount == 1)
    }
    @Test func test_650() async throws {
        let m650 = BenchmarkMock_650()
        m650.runReturn = "ok"
        let r650 = try await m650.run(value: 650)
        #expect(r650 == "ok")
        #expect(m650.runCallCount == 1)
    }
    @Test func test_651() async throws {
        let m651 = BenchmarkMock_651()
        m651.runReturn = "ok"
        let r651 = try await m651.run(value: 651)
        #expect(r651 == "ok")
        #expect(m651.runCallCount == 1)
    }
    @Test func test_652() async throws {
        let m652 = BenchmarkMock_652()
        m652.runReturn = "ok"
        let r652 = try await m652.run(value: 652)
        #expect(r652 == "ok")
        #expect(m652.runCallCount == 1)
    }
    @Test func test_653() async throws {
        let m653 = BenchmarkMock_653()
        m653.runReturn = "ok"
        let r653 = try await m653.run(value: 653)
        #expect(r653 == "ok")
        #expect(m653.runCallCount == 1)
    }
    @Test func test_654() async throws {
        let m654 = BenchmarkMock_654()
        m654.runReturn = "ok"
        let r654 = try await m654.run(value: 654)
        #expect(r654 == "ok")
        #expect(m654.runCallCount == 1)
    }
    @Test func test_655() async throws {
        let m655 = BenchmarkMock_655()
        m655.runReturn = "ok"
        let r655 = try await m655.run(value: 655)
        #expect(r655 == "ok")
        #expect(m655.runCallCount == 1)
    }
    @Test func test_656() async throws {
        let m656 = BenchmarkMock_656()
        m656.runReturn = "ok"
        let r656 = try await m656.run(value: 656)
        #expect(r656 == "ok")
        #expect(m656.runCallCount == 1)
    }
    @Test func test_657() async throws {
        let m657 = BenchmarkMock_657()
        m657.runReturn = "ok"
        let r657 = try await m657.run(value: 657)
        #expect(r657 == "ok")
        #expect(m657.runCallCount == 1)
    }
    @Test func test_658() async throws {
        let m658 = BenchmarkMock_658()
        m658.runReturn = "ok"
        let r658 = try await m658.run(value: 658)
        #expect(r658 == "ok")
        #expect(m658.runCallCount == 1)
    }
    @Test func test_659() async throws {
        let m659 = BenchmarkMock_659()
        m659.runReturn = "ok"
        let r659 = try await m659.run(value: 659)
        #expect(r659 == "ok")
        #expect(m659.runCallCount == 1)
    }
    @Test func test_660() async throws {
        let m660 = BenchmarkMock_660()
        m660.runReturn = "ok"
        let r660 = try await m660.run(value: 660)
        #expect(r660 == "ok")
        #expect(m660.runCallCount == 1)
    }
    @Test func test_661() async throws {
        let m661 = BenchmarkMock_661()
        m661.runReturn = "ok"
        let r661 = try await m661.run(value: 661)
        #expect(r661 == "ok")
        #expect(m661.runCallCount == 1)
    }
    @Test func test_662() async throws {
        let m662 = BenchmarkMock_662()
        m662.runReturn = "ok"
        let r662 = try await m662.run(value: 662)
        #expect(r662 == "ok")
        #expect(m662.runCallCount == 1)
    }
    @Test func test_663() async throws {
        let m663 = BenchmarkMock_663()
        m663.runReturn = "ok"
        let r663 = try await m663.run(value: 663)
        #expect(r663 == "ok")
        #expect(m663.runCallCount == 1)
    }
    @Test func test_664() async throws {
        let m664 = BenchmarkMock_664()
        m664.runReturn = "ok"
        let r664 = try await m664.run(value: 664)
        #expect(r664 == "ok")
        #expect(m664.runCallCount == 1)
    }
    @Test func test_665() async throws {
        let m665 = BenchmarkMock_665()
        m665.runReturn = "ok"
        let r665 = try await m665.run(value: 665)
        #expect(r665 == "ok")
        #expect(m665.runCallCount == 1)
    }
    @Test func test_666() async throws {
        let m666 = BenchmarkMock_666()
        m666.runReturn = "ok"
        let r666 = try await m666.run(value: 666)
        #expect(r666 == "ok")
        #expect(m666.runCallCount == 1)
    }
    @Test func test_667() async throws {
        let m667 = BenchmarkMock_667()
        m667.runReturn = "ok"
        let r667 = try await m667.run(value: 667)
        #expect(r667 == "ok")
        #expect(m667.runCallCount == 1)
    }
    @Test func test_668() async throws {
        let m668 = BenchmarkMock_668()
        m668.runReturn = "ok"
        let r668 = try await m668.run(value: 668)
        #expect(r668 == "ok")
        #expect(m668.runCallCount == 1)
    }
    @Test func test_669() async throws {
        let m669 = BenchmarkMock_669()
        m669.runReturn = "ok"
        let r669 = try await m669.run(value: 669)
        #expect(r669 == "ok")
        #expect(m669.runCallCount == 1)
    }
    @Test func test_670() async throws {
        let m670 = BenchmarkMock_670()
        m670.runReturn = "ok"
        let r670 = try await m670.run(value: 670)
        #expect(r670 == "ok")
        #expect(m670.runCallCount == 1)
    }
    @Test func test_671() async throws {
        let m671 = BenchmarkMock_671()
        m671.runReturn = "ok"
        let r671 = try await m671.run(value: 671)
        #expect(r671 == "ok")
        #expect(m671.runCallCount == 1)
    }
    @Test func test_672() async throws {
        let m672 = BenchmarkMock_672()
        m672.runReturn = "ok"
        let r672 = try await m672.run(value: 672)
        #expect(r672 == "ok")
        #expect(m672.runCallCount == 1)
    }
    @Test func test_673() async throws {
        let m673 = BenchmarkMock_673()
        m673.runReturn = "ok"
        let r673 = try await m673.run(value: 673)
        #expect(r673 == "ok")
        #expect(m673.runCallCount == 1)
    }
    @Test func test_674() async throws {
        let m674 = BenchmarkMock_674()
        m674.runReturn = "ok"
        let r674 = try await m674.run(value: 674)
        #expect(r674 == "ok")
        #expect(m674.runCallCount == 1)
    }
    @Test func test_675() async throws {
        let m675 = BenchmarkMock_675()
        m675.runReturn = "ok"
        let r675 = try await m675.run(value: 675)
        #expect(r675 == "ok")
        #expect(m675.runCallCount == 1)
    }
    @Test func test_676() async throws {
        let m676 = BenchmarkMock_676()
        m676.runReturn = "ok"
        let r676 = try await m676.run(value: 676)
        #expect(r676 == "ok")
        #expect(m676.runCallCount == 1)
    }
    @Test func test_677() async throws {
        let m677 = BenchmarkMock_677()
        m677.runReturn = "ok"
        let r677 = try await m677.run(value: 677)
        #expect(r677 == "ok")
        #expect(m677.runCallCount == 1)
    }
    @Test func test_678() async throws {
        let m678 = BenchmarkMock_678()
        m678.runReturn = "ok"
        let r678 = try await m678.run(value: 678)
        #expect(r678 == "ok")
        #expect(m678.runCallCount == 1)
    }
    @Test func test_679() async throws {
        let m679 = BenchmarkMock_679()
        m679.runReturn = "ok"
        let r679 = try await m679.run(value: 679)
        #expect(r679 == "ok")
        #expect(m679.runCallCount == 1)
    }
    @Test func test_680() async throws {
        let m680 = BenchmarkMock_680()
        m680.runReturn = "ok"
        let r680 = try await m680.run(value: 680)
        #expect(r680 == "ok")
        #expect(m680.runCallCount == 1)
    }
    @Test func test_681() async throws {
        let m681 = BenchmarkMock_681()
        m681.runReturn = "ok"
        let r681 = try await m681.run(value: 681)
        #expect(r681 == "ok")
        #expect(m681.runCallCount == 1)
    }
    @Test func test_682() async throws {
        let m682 = BenchmarkMock_682()
        m682.runReturn = "ok"
        let r682 = try await m682.run(value: 682)
        #expect(r682 == "ok")
        #expect(m682.runCallCount == 1)
    }
    @Test func test_683() async throws {
        let m683 = BenchmarkMock_683()
        m683.runReturn = "ok"
        let r683 = try await m683.run(value: 683)
        #expect(r683 == "ok")
        #expect(m683.runCallCount == 1)
    }
    @Test func test_684() async throws {
        let m684 = BenchmarkMock_684()
        m684.runReturn = "ok"
        let r684 = try await m684.run(value: 684)
        #expect(r684 == "ok")
        #expect(m684.runCallCount == 1)
    }
    @Test func test_685() async throws {
        let m685 = BenchmarkMock_685()
        m685.runReturn = "ok"
        let r685 = try await m685.run(value: 685)
        #expect(r685 == "ok")
        #expect(m685.runCallCount == 1)
    }
    @Test func test_686() async throws {
        let m686 = BenchmarkMock_686()
        m686.runReturn = "ok"
        let r686 = try await m686.run(value: 686)
        #expect(r686 == "ok")
        #expect(m686.runCallCount == 1)
    }
    @Test func test_687() async throws {
        let m687 = BenchmarkMock_687()
        m687.runReturn = "ok"
        let r687 = try await m687.run(value: 687)
        #expect(r687 == "ok")
        #expect(m687.runCallCount == 1)
    }
    @Test func test_688() async throws {
        let m688 = BenchmarkMock_688()
        m688.runReturn = "ok"
        let r688 = try await m688.run(value: 688)
        #expect(r688 == "ok")
        #expect(m688.runCallCount == 1)
    }
    @Test func test_689() async throws {
        let m689 = BenchmarkMock_689()
        m689.runReturn = "ok"
        let r689 = try await m689.run(value: 689)
        #expect(r689 == "ok")
        #expect(m689.runCallCount == 1)
    }
    @Test func test_690() async throws {
        let m690 = BenchmarkMock_690()
        m690.runReturn = "ok"
        let r690 = try await m690.run(value: 690)
        #expect(r690 == "ok")
        #expect(m690.runCallCount == 1)
    }
    @Test func test_691() async throws {
        let m691 = BenchmarkMock_691()
        m691.runReturn = "ok"
        let r691 = try await m691.run(value: 691)
        #expect(r691 == "ok")
        #expect(m691.runCallCount == 1)
    }
    @Test func test_692() async throws {
        let m692 = BenchmarkMock_692()
        m692.runReturn = "ok"
        let r692 = try await m692.run(value: 692)
        #expect(r692 == "ok")
        #expect(m692.runCallCount == 1)
    }
    @Test func test_693() async throws {
        let m693 = BenchmarkMock_693()
        m693.runReturn = "ok"
        let r693 = try await m693.run(value: 693)
        #expect(r693 == "ok")
        #expect(m693.runCallCount == 1)
    }
    @Test func test_694() async throws {
        let m694 = BenchmarkMock_694()
        m694.runReturn = "ok"
        let r694 = try await m694.run(value: 694)
        #expect(r694 == "ok")
        #expect(m694.runCallCount == 1)
    }
    @Test func test_695() async throws {
        let m695 = BenchmarkMock_695()
        m695.runReturn = "ok"
        let r695 = try await m695.run(value: 695)
        #expect(r695 == "ok")
        #expect(m695.runCallCount == 1)
    }
    @Test func test_696() async throws {
        let m696 = BenchmarkMock_696()
        m696.runReturn = "ok"
        let r696 = try await m696.run(value: 696)
        #expect(r696 == "ok")
        #expect(m696.runCallCount == 1)
    }
    @Test func test_697() async throws {
        let m697 = BenchmarkMock_697()
        m697.runReturn = "ok"
        let r697 = try await m697.run(value: 697)
        #expect(r697 == "ok")
        #expect(m697.runCallCount == 1)
    }
    @Test func test_698() async throws {
        let m698 = BenchmarkMock_698()
        m698.runReturn = "ok"
        let r698 = try await m698.run(value: 698)
        #expect(r698 == "ok")
        #expect(m698.runCallCount == 1)
    }
    @Test func test_699() async throws {
        let m699 = BenchmarkMock_699()
        m699.runReturn = "ok"
        let r699 = try await m699.run(value: 699)
        #expect(r699 == "ok")
        #expect(m699.runCallCount == 1)
    }
    @Test func test_700() async throws {
        let m700 = BenchmarkMock_700()
        m700.runReturn = "ok"
        let r700 = try await m700.run(value: 700)
        #expect(r700 == "ok")
        #expect(m700.runCallCount == 1)
    }
    @Test func test_701() async throws {
        let m701 = BenchmarkMock_701()
        m701.runReturn = "ok"
        let r701 = try await m701.run(value: 701)
        #expect(r701 == "ok")
        #expect(m701.runCallCount == 1)
    }
    @Test func test_702() async throws {
        let m702 = BenchmarkMock_702()
        m702.runReturn = "ok"
        let r702 = try await m702.run(value: 702)
        #expect(r702 == "ok")
        #expect(m702.runCallCount == 1)
    }
    @Test func test_703() async throws {
        let m703 = BenchmarkMock_703()
        m703.runReturn = "ok"
        let r703 = try await m703.run(value: 703)
        #expect(r703 == "ok")
        #expect(m703.runCallCount == 1)
    }
    @Test func test_704() async throws {
        let m704 = BenchmarkMock_704()
        m704.runReturn = "ok"
        let r704 = try await m704.run(value: 704)
        #expect(r704 == "ok")
        #expect(m704.runCallCount == 1)
    }
    @Test func test_705() async throws {
        let m705 = BenchmarkMock_705()
        m705.runReturn = "ok"
        let r705 = try await m705.run(value: 705)
        #expect(r705 == "ok")
        #expect(m705.runCallCount == 1)
    }
    @Test func test_706() async throws {
        let m706 = BenchmarkMock_706()
        m706.runReturn = "ok"
        let r706 = try await m706.run(value: 706)
        #expect(r706 == "ok")
        #expect(m706.runCallCount == 1)
    }
    @Test func test_707() async throws {
        let m707 = BenchmarkMock_707()
        m707.runReturn = "ok"
        let r707 = try await m707.run(value: 707)
        #expect(r707 == "ok")
        #expect(m707.runCallCount == 1)
    }
    @Test func test_708() async throws {
        let m708 = BenchmarkMock_708()
        m708.runReturn = "ok"
        let r708 = try await m708.run(value: 708)
        #expect(r708 == "ok")
        #expect(m708.runCallCount == 1)
    }
    @Test func test_709() async throws {
        let m709 = BenchmarkMock_709()
        m709.runReturn = "ok"
        let r709 = try await m709.run(value: 709)
        #expect(r709 == "ok")
        #expect(m709.runCallCount == 1)
    }
    @Test func test_710() async throws {
        let m710 = BenchmarkMock_710()
        m710.runReturn = "ok"
        let r710 = try await m710.run(value: 710)
        #expect(r710 == "ok")
        #expect(m710.runCallCount == 1)
    }
    @Test func test_711() async throws {
        let m711 = BenchmarkMock_711()
        m711.runReturn = "ok"
        let r711 = try await m711.run(value: 711)
        #expect(r711 == "ok")
        #expect(m711.runCallCount == 1)
    }
    @Test func test_712() async throws {
        let m712 = BenchmarkMock_712()
        m712.runReturn = "ok"
        let r712 = try await m712.run(value: 712)
        #expect(r712 == "ok")
        #expect(m712.runCallCount == 1)
    }
    @Test func test_713() async throws {
        let m713 = BenchmarkMock_713()
        m713.runReturn = "ok"
        let r713 = try await m713.run(value: 713)
        #expect(r713 == "ok")
        #expect(m713.runCallCount == 1)
    }
    @Test func test_714() async throws {
        let m714 = BenchmarkMock_714()
        m714.runReturn = "ok"
        let r714 = try await m714.run(value: 714)
        #expect(r714 == "ok")
        #expect(m714.runCallCount == 1)
    }
    @Test func test_715() async throws {
        let m715 = BenchmarkMock_715()
        m715.runReturn = "ok"
        let r715 = try await m715.run(value: 715)
        #expect(r715 == "ok")
        #expect(m715.runCallCount == 1)
    }
    @Test func test_716() async throws {
        let m716 = BenchmarkMock_716()
        m716.runReturn = "ok"
        let r716 = try await m716.run(value: 716)
        #expect(r716 == "ok")
        #expect(m716.runCallCount == 1)
    }
    @Test func test_717() async throws {
        let m717 = BenchmarkMock_717()
        m717.runReturn = "ok"
        let r717 = try await m717.run(value: 717)
        #expect(r717 == "ok")
        #expect(m717.runCallCount == 1)
    }
    @Test func test_718() async throws {
        let m718 = BenchmarkMock_718()
        m718.runReturn = "ok"
        let r718 = try await m718.run(value: 718)
        #expect(r718 == "ok")
        #expect(m718.runCallCount == 1)
    }
    @Test func test_719() async throws {
        let m719 = BenchmarkMock_719()
        m719.runReturn = "ok"
        let r719 = try await m719.run(value: 719)
        #expect(r719 == "ok")
        #expect(m719.runCallCount == 1)
    }
    @Test func test_720() async throws {
        let m720 = BenchmarkMock_720()
        m720.runReturn = "ok"
        let r720 = try await m720.run(value: 720)
        #expect(r720 == "ok")
        #expect(m720.runCallCount == 1)
    }
    @Test func test_721() async throws {
        let m721 = BenchmarkMock_721()
        m721.runReturn = "ok"
        let r721 = try await m721.run(value: 721)
        #expect(r721 == "ok")
        #expect(m721.runCallCount == 1)
    }
    @Test func test_722() async throws {
        let m722 = BenchmarkMock_722()
        m722.runReturn = "ok"
        let r722 = try await m722.run(value: 722)
        #expect(r722 == "ok")
        #expect(m722.runCallCount == 1)
    }
    @Test func test_723() async throws {
        let m723 = BenchmarkMock_723()
        m723.runReturn = "ok"
        let r723 = try await m723.run(value: 723)
        #expect(r723 == "ok")
        #expect(m723.runCallCount == 1)
    }
    @Test func test_724() async throws {
        let m724 = BenchmarkMock_724()
        m724.runReturn = "ok"
        let r724 = try await m724.run(value: 724)
        #expect(r724 == "ok")
        #expect(m724.runCallCount == 1)
    }
    @Test func test_725() async throws {
        let m725 = BenchmarkMock_725()
        m725.runReturn = "ok"
        let r725 = try await m725.run(value: 725)
        #expect(r725 == "ok")
        #expect(m725.runCallCount == 1)
    }
    @Test func test_726() async throws {
        let m726 = BenchmarkMock_726()
        m726.runReturn = "ok"
        let r726 = try await m726.run(value: 726)
        #expect(r726 == "ok")
        #expect(m726.runCallCount == 1)
    }
    @Test func test_727() async throws {
        let m727 = BenchmarkMock_727()
        m727.runReturn = "ok"
        let r727 = try await m727.run(value: 727)
        #expect(r727 == "ok")
        #expect(m727.runCallCount == 1)
    }
    @Test func test_728() async throws {
        let m728 = BenchmarkMock_728()
        m728.runReturn = "ok"
        let r728 = try await m728.run(value: 728)
        #expect(r728 == "ok")
        #expect(m728.runCallCount == 1)
    }
    @Test func test_729() async throws {
        let m729 = BenchmarkMock_729()
        m729.runReturn = "ok"
        let r729 = try await m729.run(value: 729)
        #expect(r729 == "ok")
        #expect(m729.runCallCount == 1)
    }
    @Test func test_730() async throws {
        let m730 = BenchmarkMock_730()
        m730.runReturn = "ok"
        let r730 = try await m730.run(value: 730)
        #expect(r730 == "ok")
        #expect(m730.runCallCount == 1)
    }
    @Test func test_731() async throws {
        let m731 = BenchmarkMock_731()
        m731.runReturn = "ok"
        let r731 = try await m731.run(value: 731)
        #expect(r731 == "ok")
        #expect(m731.runCallCount == 1)
    }
    @Test func test_732() async throws {
        let m732 = BenchmarkMock_732()
        m732.runReturn = "ok"
        let r732 = try await m732.run(value: 732)
        #expect(r732 == "ok")
        #expect(m732.runCallCount == 1)
    }
    @Test func test_733() async throws {
        let m733 = BenchmarkMock_733()
        m733.runReturn = "ok"
        let r733 = try await m733.run(value: 733)
        #expect(r733 == "ok")
        #expect(m733.runCallCount == 1)
    }
    @Test func test_734() async throws {
        let m734 = BenchmarkMock_734()
        m734.runReturn = "ok"
        let r734 = try await m734.run(value: 734)
        #expect(r734 == "ok")
        #expect(m734.runCallCount == 1)
    }
    @Test func test_735() async throws {
        let m735 = BenchmarkMock_735()
        m735.runReturn = "ok"
        let r735 = try await m735.run(value: 735)
        #expect(r735 == "ok")
        #expect(m735.runCallCount == 1)
    }
    @Test func test_736() async throws {
        let m736 = BenchmarkMock_736()
        m736.runReturn = "ok"
        let r736 = try await m736.run(value: 736)
        #expect(r736 == "ok")
        #expect(m736.runCallCount == 1)
    }
    @Test func test_737() async throws {
        let m737 = BenchmarkMock_737()
        m737.runReturn = "ok"
        let r737 = try await m737.run(value: 737)
        #expect(r737 == "ok")
        #expect(m737.runCallCount == 1)
    }
    @Test func test_738() async throws {
        let m738 = BenchmarkMock_738()
        m738.runReturn = "ok"
        let r738 = try await m738.run(value: 738)
        #expect(r738 == "ok")
        #expect(m738.runCallCount == 1)
    }
    @Test func test_739() async throws {
        let m739 = BenchmarkMock_739()
        m739.runReturn = "ok"
        let r739 = try await m739.run(value: 739)
        #expect(r739 == "ok")
        #expect(m739.runCallCount == 1)
    }
    @Test func test_740() async throws {
        let m740 = BenchmarkMock_740()
        m740.runReturn = "ok"
        let r740 = try await m740.run(value: 740)
        #expect(r740 == "ok")
        #expect(m740.runCallCount == 1)
    }
    @Test func test_741() async throws {
        let m741 = BenchmarkMock_741()
        m741.runReturn = "ok"
        let r741 = try await m741.run(value: 741)
        #expect(r741 == "ok")
        #expect(m741.runCallCount == 1)
    }
    @Test func test_742() async throws {
        let m742 = BenchmarkMock_742()
        m742.runReturn = "ok"
        let r742 = try await m742.run(value: 742)
        #expect(r742 == "ok")
        #expect(m742.runCallCount == 1)
    }
    @Test func test_743() async throws {
        let m743 = BenchmarkMock_743()
        m743.runReturn = "ok"
        let r743 = try await m743.run(value: 743)
        #expect(r743 == "ok")
        #expect(m743.runCallCount == 1)
    }
    @Test func test_744() async throws {
        let m744 = BenchmarkMock_744()
        m744.runReturn = "ok"
        let r744 = try await m744.run(value: 744)
        #expect(r744 == "ok")
        #expect(m744.runCallCount == 1)
    }
    @Test func test_745() async throws {
        let m745 = BenchmarkMock_745()
        m745.runReturn = "ok"
        let r745 = try await m745.run(value: 745)
        #expect(r745 == "ok")
        #expect(m745.runCallCount == 1)
    }
    @Test func test_746() async throws {
        let m746 = BenchmarkMock_746()
        m746.runReturn = "ok"
        let r746 = try await m746.run(value: 746)
        #expect(r746 == "ok")
        #expect(m746.runCallCount == 1)
    }
    @Test func test_747() async throws {
        let m747 = BenchmarkMock_747()
        m747.runReturn = "ok"
        let r747 = try await m747.run(value: 747)
        #expect(r747 == "ok")
        #expect(m747.runCallCount == 1)
    }
    @Test func test_748() async throws {
        let m748 = BenchmarkMock_748()
        m748.runReturn = "ok"
        let r748 = try await m748.run(value: 748)
        #expect(r748 == "ok")
        #expect(m748.runCallCount == 1)
    }
    @Test func test_749() async throws {
        let m749 = BenchmarkMock_749()
        m749.runReturn = "ok"
        let r749 = try await m749.run(value: 749)
        #expect(r749 == "ok")
        #expect(m749.runCallCount == 1)
    }
    @Test func test_750() async throws {
        let m750 = BenchmarkMock_750()
        m750.runReturn = "ok"
        let r750 = try await m750.run(value: 750)
        #expect(r750 == "ok")
        #expect(m750.runCallCount == 1)
    }
    @Test func test_751() async throws {
        let m751 = BenchmarkMock_751()
        m751.runReturn = "ok"
        let r751 = try await m751.run(value: 751)
        #expect(r751 == "ok")
        #expect(m751.runCallCount == 1)
    }
    @Test func test_752() async throws {
        let m752 = BenchmarkMock_752()
        m752.runReturn = "ok"
        let r752 = try await m752.run(value: 752)
        #expect(r752 == "ok")
        #expect(m752.runCallCount == 1)
    }
    @Test func test_753() async throws {
        let m753 = BenchmarkMock_753()
        m753.runReturn = "ok"
        let r753 = try await m753.run(value: 753)
        #expect(r753 == "ok")
        #expect(m753.runCallCount == 1)
    }
    @Test func test_754() async throws {
        let m754 = BenchmarkMock_754()
        m754.runReturn = "ok"
        let r754 = try await m754.run(value: 754)
        #expect(r754 == "ok")
        #expect(m754.runCallCount == 1)
    }
    @Test func test_755() async throws {
        let m755 = BenchmarkMock_755()
        m755.runReturn = "ok"
        let r755 = try await m755.run(value: 755)
        #expect(r755 == "ok")
        #expect(m755.runCallCount == 1)
    }
    @Test func test_756() async throws {
        let m756 = BenchmarkMock_756()
        m756.runReturn = "ok"
        let r756 = try await m756.run(value: 756)
        #expect(r756 == "ok")
        #expect(m756.runCallCount == 1)
    }
    @Test func test_757() async throws {
        let m757 = BenchmarkMock_757()
        m757.runReturn = "ok"
        let r757 = try await m757.run(value: 757)
        #expect(r757 == "ok")
        #expect(m757.runCallCount == 1)
    }
    @Test func test_758() async throws {
        let m758 = BenchmarkMock_758()
        m758.runReturn = "ok"
        let r758 = try await m758.run(value: 758)
        #expect(r758 == "ok")
        #expect(m758.runCallCount == 1)
    }
    @Test func test_759() async throws {
        let m759 = BenchmarkMock_759()
        m759.runReturn = "ok"
        let r759 = try await m759.run(value: 759)
        #expect(r759 == "ok")
        #expect(m759.runCallCount == 1)
    }
    @Test func test_760() async throws {
        let m760 = BenchmarkMock_760()
        m760.runReturn = "ok"
        let r760 = try await m760.run(value: 760)
        #expect(r760 == "ok")
        #expect(m760.runCallCount == 1)
    }
    @Test func test_761() async throws {
        let m761 = BenchmarkMock_761()
        m761.runReturn = "ok"
        let r761 = try await m761.run(value: 761)
        #expect(r761 == "ok")
        #expect(m761.runCallCount == 1)
    }
    @Test func test_762() async throws {
        let m762 = BenchmarkMock_762()
        m762.runReturn = "ok"
        let r762 = try await m762.run(value: 762)
        #expect(r762 == "ok")
        #expect(m762.runCallCount == 1)
    }
    @Test func test_763() async throws {
        let m763 = BenchmarkMock_763()
        m763.runReturn = "ok"
        let r763 = try await m763.run(value: 763)
        #expect(r763 == "ok")
        #expect(m763.runCallCount == 1)
    }
    @Test func test_764() async throws {
        let m764 = BenchmarkMock_764()
        m764.runReturn = "ok"
        let r764 = try await m764.run(value: 764)
        #expect(r764 == "ok")
        #expect(m764.runCallCount == 1)
    }
    @Test func test_765() async throws {
        let m765 = BenchmarkMock_765()
        m765.runReturn = "ok"
        let r765 = try await m765.run(value: 765)
        #expect(r765 == "ok")
        #expect(m765.runCallCount == 1)
    }
    @Test func test_766() async throws {
        let m766 = BenchmarkMock_766()
        m766.runReturn = "ok"
        let r766 = try await m766.run(value: 766)
        #expect(r766 == "ok")
        #expect(m766.runCallCount == 1)
    }
    @Test func test_767() async throws {
        let m767 = BenchmarkMock_767()
        m767.runReturn = "ok"
        let r767 = try await m767.run(value: 767)
        #expect(r767 == "ok")
        #expect(m767.runCallCount == 1)
    }
    @Test func test_768() async throws {
        let m768 = BenchmarkMock_768()
        m768.runReturn = "ok"
        let r768 = try await m768.run(value: 768)
        #expect(r768 == "ok")
        #expect(m768.runCallCount == 1)
    }
    @Test func test_769() async throws {
        let m769 = BenchmarkMock_769()
        m769.runReturn = "ok"
        let r769 = try await m769.run(value: 769)
        #expect(r769 == "ok")
        #expect(m769.runCallCount == 1)
    }
    @Test func test_770() async throws {
        let m770 = BenchmarkMock_770()
        m770.runReturn = "ok"
        let r770 = try await m770.run(value: 770)
        #expect(r770 == "ok")
        #expect(m770.runCallCount == 1)
    }
    @Test func test_771() async throws {
        let m771 = BenchmarkMock_771()
        m771.runReturn = "ok"
        let r771 = try await m771.run(value: 771)
        #expect(r771 == "ok")
        #expect(m771.runCallCount == 1)
    }
    @Test func test_772() async throws {
        let m772 = BenchmarkMock_772()
        m772.runReturn = "ok"
        let r772 = try await m772.run(value: 772)
        #expect(r772 == "ok")
        #expect(m772.runCallCount == 1)
    }
    @Test func test_773() async throws {
        let m773 = BenchmarkMock_773()
        m773.runReturn = "ok"
        let r773 = try await m773.run(value: 773)
        #expect(r773 == "ok")
        #expect(m773.runCallCount == 1)
    }
    @Test func test_774() async throws {
        let m774 = BenchmarkMock_774()
        m774.runReturn = "ok"
        let r774 = try await m774.run(value: 774)
        #expect(r774 == "ok")
        #expect(m774.runCallCount == 1)
    }
    @Test func test_775() async throws {
        let m775 = BenchmarkMock_775()
        m775.runReturn = "ok"
        let r775 = try await m775.run(value: 775)
        #expect(r775 == "ok")
        #expect(m775.runCallCount == 1)
    }
    @Test func test_776() async throws {
        let m776 = BenchmarkMock_776()
        m776.runReturn = "ok"
        let r776 = try await m776.run(value: 776)
        #expect(r776 == "ok")
        #expect(m776.runCallCount == 1)
    }
    @Test func test_777() async throws {
        let m777 = BenchmarkMock_777()
        m777.runReturn = "ok"
        let r777 = try await m777.run(value: 777)
        #expect(r777 == "ok")
        #expect(m777.runCallCount == 1)
    }
    @Test func test_778() async throws {
        let m778 = BenchmarkMock_778()
        m778.runReturn = "ok"
        let r778 = try await m778.run(value: 778)
        #expect(r778 == "ok")
        #expect(m778.runCallCount == 1)
    }
    @Test func test_779() async throws {
        let m779 = BenchmarkMock_779()
        m779.runReturn = "ok"
        let r779 = try await m779.run(value: 779)
        #expect(r779 == "ok")
        #expect(m779.runCallCount == 1)
    }
    @Test func test_780() async throws {
        let m780 = BenchmarkMock_780()
        m780.runReturn = "ok"
        let r780 = try await m780.run(value: 780)
        #expect(r780 == "ok")
        #expect(m780.runCallCount == 1)
    }
    @Test func test_781() async throws {
        let m781 = BenchmarkMock_781()
        m781.runReturn = "ok"
        let r781 = try await m781.run(value: 781)
        #expect(r781 == "ok")
        #expect(m781.runCallCount == 1)
    }
    @Test func test_782() async throws {
        let m782 = BenchmarkMock_782()
        m782.runReturn = "ok"
        let r782 = try await m782.run(value: 782)
        #expect(r782 == "ok")
        #expect(m782.runCallCount == 1)
    }
    @Test func test_783() async throws {
        let m783 = BenchmarkMock_783()
        m783.runReturn = "ok"
        let r783 = try await m783.run(value: 783)
        #expect(r783 == "ok")
        #expect(m783.runCallCount == 1)
    }
    @Test func test_784() async throws {
        let m784 = BenchmarkMock_784()
        m784.runReturn = "ok"
        let r784 = try await m784.run(value: 784)
        #expect(r784 == "ok")
        #expect(m784.runCallCount == 1)
    }
    @Test func test_785() async throws {
        let m785 = BenchmarkMock_785()
        m785.runReturn = "ok"
        let r785 = try await m785.run(value: 785)
        #expect(r785 == "ok")
        #expect(m785.runCallCount == 1)
    }
    @Test func test_786() async throws {
        let m786 = BenchmarkMock_786()
        m786.runReturn = "ok"
        let r786 = try await m786.run(value: 786)
        #expect(r786 == "ok")
        #expect(m786.runCallCount == 1)
    }
    @Test func test_787() async throws {
        let m787 = BenchmarkMock_787()
        m787.runReturn = "ok"
        let r787 = try await m787.run(value: 787)
        #expect(r787 == "ok")
        #expect(m787.runCallCount == 1)
    }
    @Test func test_788() async throws {
        let m788 = BenchmarkMock_788()
        m788.runReturn = "ok"
        let r788 = try await m788.run(value: 788)
        #expect(r788 == "ok")
        #expect(m788.runCallCount == 1)
    }
    @Test func test_789() async throws {
        let m789 = BenchmarkMock_789()
        m789.runReturn = "ok"
        let r789 = try await m789.run(value: 789)
        #expect(r789 == "ok")
        #expect(m789.runCallCount == 1)
    }
    @Test func test_790() async throws {
        let m790 = BenchmarkMock_790()
        m790.runReturn = "ok"
        let r790 = try await m790.run(value: 790)
        #expect(r790 == "ok")
        #expect(m790.runCallCount == 1)
    }
    @Test func test_791() async throws {
        let m791 = BenchmarkMock_791()
        m791.runReturn = "ok"
        let r791 = try await m791.run(value: 791)
        #expect(r791 == "ok")
        #expect(m791.runCallCount == 1)
    }
    @Test func test_792() async throws {
        let m792 = BenchmarkMock_792()
        m792.runReturn = "ok"
        let r792 = try await m792.run(value: 792)
        #expect(r792 == "ok")
        #expect(m792.runCallCount == 1)
    }
    @Test func test_793() async throws {
        let m793 = BenchmarkMock_793()
        m793.runReturn = "ok"
        let r793 = try await m793.run(value: 793)
        #expect(r793 == "ok")
        #expect(m793.runCallCount == 1)
    }
    @Test func test_794() async throws {
        let m794 = BenchmarkMock_794()
        m794.runReturn = "ok"
        let r794 = try await m794.run(value: 794)
        #expect(r794 == "ok")
        #expect(m794.runCallCount == 1)
    }
    @Test func test_795() async throws {
        let m795 = BenchmarkMock_795()
        m795.runReturn = "ok"
        let r795 = try await m795.run(value: 795)
        #expect(r795 == "ok")
        #expect(m795.runCallCount == 1)
    }
    @Test func test_796() async throws {
        let m796 = BenchmarkMock_796()
        m796.runReturn = "ok"
        let r796 = try await m796.run(value: 796)
        #expect(r796 == "ok")
        #expect(m796.runCallCount == 1)
    }
    @Test func test_797() async throws {
        let m797 = BenchmarkMock_797()
        m797.runReturn = "ok"
        let r797 = try await m797.run(value: 797)
        #expect(r797 == "ok")
        #expect(m797.runCallCount == 1)
    }
    @Test func test_798() async throws {
        let m798 = BenchmarkMock_798()
        m798.runReturn = "ok"
        let r798 = try await m798.run(value: 798)
        #expect(r798 == "ok")
        #expect(m798.runCallCount == 1)
    }
    @Test func test_799() async throws {
        let m799 = BenchmarkMock_799()
        m799.runReturn = "ok"
        let r799 = try await m799.run(value: 799)
        #expect(r799 == "ok")
        #expect(m799.runCallCount == 1)
    }
    @Test func test_800() async throws {
        let m800 = BenchmarkMock_800()
        m800.runReturn = "ok"
        let r800 = try await m800.run(value: 800)
        #expect(r800 == "ok")
        #expect(m800.runCallCount == 1)
    }
    @Test func test_801() async throws {
        let m801 = BenchmarkMock_801()
        m801.runReturn = "ok"
        let r801 = try await m801.run(value: 801)
        #expect(r801 == "ok")
        #expect(m801.runCallCount == 1)
    }
    @Test func test_802() async throws {
        let m802 = BenchmarkMock_802()
        m802.runReturn = "ok"
        let r802 = try await m802.run(value: 802)
        #expect(r802 == "ok")
        #expect(m802.runCallCount == 1)
    }
    @Test func test_803() async throws {
        let m803 = BenchmarkMock_803()
        m803.runReturn = "ok"
        let r803 = try await m803.run(value: 803)
        #expect(r803 == "ok")
        #expect(m803.runCallCount == 1)
    }
    @Test func test_804() async throws {
        let m804 = BenchmarkMock_804()
        m804.runReturn = "ok"
        let r804 = try await m804.run(value: 804)
        #expect(r804 == "ok")
        #expect(m804.runCallCount == 1)
    }
    @Test func test_805() async throws {
        let m805 = BenchmarkMock_805()
        m805.runReturn = "ok"
        let r805 = try await m805.run(value: 805)
        #expect(r805 == "ok")
        #expect(m805.runCallCount == 1)
    }
    @Test func test_806() async throws {
        let m806 = BenchmarkMock_806()
        m806.runReturn = "ok"
        let r806 = try await m806.run(value: 806)
        #expect(r806 == "ok")
        #expect(m806.runCallCount == 1)
    }
    @Test func test_807() async throws {
        let m807 = BenchmarkMock_807()
        m807.runReturn = "ok"
        let r807 = try await m807.run(value: 807)
        #expect(r807 == "ok")
        #expect(m807.runCallCount == 1)
    }
    @Test func test_808() async throws {
        let m808 = BenchmarkMock_808()
        m808.runReturn = "ok"
        let r808 = try await m808.run(value: 808)
        #expect(r808 == "ok")
        #expect(m808.runCallCount == 1)
    }
    @Test func test_809() async throws {
        let m809 = BenchmarkMock_809()
        m809.runReturn = "ok"
        let r809 = try await m809.run(value: 809)
        #expect(r809 == "ok")
        #expect(m809.runCallCount == 1)
    }
    @Test func test_810() async throws {
        let m810 = BenchmarkMock_810()
        m810.runReturn = "ok"
        let r810 = try await m810.run(value: 810)
        #expect(r810 == "ok")
        #expect(m810.runCallCount == 1)
    }
    @Test func test_811() async throws {
        let m811 = BenchmarkMock_811()
        m811.runReturn = "ok"
        let r811 = try await m811.run(value: 811)
        #expect(r811 == "ok")
        #expect(m811.runCallCount == 1)
    }
    @Test func test_812() async throws {
        let m812 = BenchmarkMock_812()
        m812.runReturn = "ok"
        let r812 = try await m812.run(value: 812)
        #expect(r812 == "ok")
        #expect(m812.runCallCount == 1)
    }
    @Test func test_813() async throws {
        let m813 = BenchmarkMock_813()
        m813.runReturn = "ok"
        let r813 = try await m813.run(value: 813)
        #expect(r813 == "ok")
        #expect(m813.runCallCount == 1)
    }
    @Test func test_814() async throws {
        let m814 = BenchmarkMock_814()
        m814.runReturn = "ok"
        let r814 = try await m814.run(value: 814)
        #expect(r814 == "ok")
        #expect(m814.runCallCount == 1)
    }
    @Test func test_815() async throws {
        let m815 = BenchmarkMock_815()
        m815.runReturn = "ok"
        let r815 = try await m815.run(value: 815)
        #expect(r815 == "ok")
        #expect(m815.runCallCount == 1)
    }
    @Test func test_816() async throws {
        let m816 = BenchmarkMock_816()
        m816.runReturn = "ok"
        let r816 = try await m816.run(value: 816)
        #expect(r816 == "ok")
        #expect(m816.runCallCount == 1)
    }
    @Test func test_817() async throws {
        let m817 = BenchmarkMock_817()
        m817.runReturn = "ok"
        let r817 = try await m817.run(value: 817)
        #expect(r817 == "ok")
        #expect(m817.runCallCount == 1)
    }
    @Test func test_818() async throws {
        let m818 = BenchmarkMock_818()
        m818.runReturn = "ok"
        let r818 = try await m818.run(value: 818)
        #expect(r818 == "ok")
        #expect(m818.runCallCount == 1)
    }
    @Test func test_819() async throws {
        let m819 = BenchmarkMock_819()
        m819.runReturn = "ok"
        let r819 = try await m819.run(value: 819)
        #expect(r819 == "ok")
        #expect(m819.runCallCount == 1)
    }
    @Test func test_820() async throws {
        let m820 = BenchmarkMock_820()
        m820.runReturn = "ok"
        let r820 = try await m820.run(value: 820)
        #expect(r820 == "ok")
        #expect(m820.runCallCount == 1)
    }
    @Test func test_821() async throws {
        let m821 = BenchmarkMock_821()
        m821.runReturn = "ok"
        let r821 = try await m821.run(value: 821)
        #expect(r821 == "ok")
        #expect(m821.runCallCount == 1)
    }
    @Test func test_822() async throws {
        let m822 = BenchmarkMock_822()
        m822.runReturn = "ok"
        let r822 = try await m822.run(value: 822)
        #expect(r822 == "ok")
        #expect(m822.runCallCount == 1)
    }
    @Test func test_823() async throws {
        let m823 = BenchmarkMock_823()
        m823.runReturn = "ok"
        let r823 = try await m823.run(value: 823)
        #expect(r823 == "ok")
        #expect(m823.runCallCount == 1)
    }
    @Test func test_824() async throws {
        let m824 = BenchmarkMock_824()
        m824.runReturn = "ok"
        let r824 = try await m824.run(value: 824)
        #expect(r824 == "ok")
        #expect(m824.runCallCount == 1)
    }
    @Test func test_825() async throws {
        let m825 = BenchmarkMock_825()
        m825.runReturn = "ok"
        let r825 = try await m825.run(value: 825)
        #expect(r825 == "ok")
        #expect(m825.runCallCount == 1)
    }
    @Test func test_826() async throws {
        let m826 = BenchmarkMock_826()
        m826.runReturn = "ok"
        let r826 = try await m826.run(value: 826)
        #expect(r826 == "ok")
        #expect(m826.runCallCount == 1)
    }
    @Test func test_827() async throws {
        let m827 = BenchmarkMock_827()
        m827.runReturn = "ok"
        let r827 = try await m827.run(value: 827)
        #expect(r827 == "ok")
        #expect(m827.runCallCount == 1)
    }
    @Test func test_828() async throws {
        let m828 = BenchmarkMock_828()
        m828.runReturn = "ok"
        let r828 = try await m828.run(value: 828)
        #expect(r828 == "ok")
        #expect(m828.runCallCount == 1)
    }
    @Test func test_829() async throws {
        let m829 = BenchmarkMock_829()
        m829.runReturn = "ok"
        let r829 = try await m829.run(value: 829)
        #expect(r829 == "ok")
        #expect(m829.runCallCount == 1)
    }
    @Test func test_830() async throws {
        let m830 = BenchmarkMock_830()
        m830.runReturn = "ok"
        let r830 = try await m830.run(value: 830)
        #expect(r830 == "ok")
        #expect(m830.runCallCount == 1)
    }
    @Test func test_831() async throws {
        let m831 = BenchmarkMock_831()
        m831.runReturn = "ok"
        let r831 = try await m831.run(value: 831)
        #expect(r831 == "ok")
        #expect(m831.runCallCount == 1)
    }
    @Test func test_832() async throws {
        let m832 = BenchmarkMock_832()
        m832.runReturn = "ok"
        let r832 = try await m832.run(value: 832)
        #expect(r832 == "ok")
        #expect(m832.runCallCount == 1)
    }
    @Test func test_833() async throws {
        let m833 = BenchmarkMock_833()
        m833.runReturn = "ok"
        let r833 = try await m833.run(value: 833)
        #expect(r833 == "ok")
        #expect(m833.runCallCount == 1)
    }
    @Test func test_834() async throws {
        let m834 = BenchmarkMock_834()
        m834.runReturn = "ok"
        let r834 = try await m834.run(value: 834)
        #expect(r834 == "ok")
        #expect(m834.runCallCount == 1)
    }
    @Test func test_835() async throws {
        let m835 = BenchmarkMock_835()
        m835.runReturn = "ok"
        let r835 = try await m835.run(value: 835)
        #expect(r835 == "ok")
        #expect(m835.runCallCount == 1)
    }
    @Test func test_836() async throws {
        let m836 = BenchmarkMock_836()
        m836.runReturn = "ok"
        let r836 = try await m836.run(value: 836)
        #expect(r836 == "ok")
        #expect(m836.runCallCount == 1)
    }
    @Test func test_837() async throws {
        let m837 = BenchmarkMock_837()
        m837.runReturn = "ok"
        let r837 = try await m837.run(value: 837)
        #expect(r837 == "ok")
        #expect(m837.runCallCount == 1)
    }
    @Test func test_838() async throws {
        let m838 = BenchmarkMock_838()
        m838.runReturn = "ok"
        let r838 = try await m838.run(value: 838)
        #expect(r838 == "ok")
        #expect(m838.runCallCount == 1)
    }
    @Test func test_839() async throws {
        let m839 = BenchmarkMock_839()
        m839.runReturn = "ok"
        let r839 = try await m839.run(value: 839)
        #expect(r839 == "ok")
        #expect(m839.runCallCount == 1)
    }
    @Test func test_840() async throws {
        let m840 = BenchmarkMock_840()
        m840.runReturn = "ok"
        let r840 = try await m840.run(value: 840)
        #expect(r840 == "ok")
        #expect(m840.runCallCount == 1)
    }
    @Test func test_841() async throws {
        let m841 = BenchmarkMock_841()
        m841.runReturn = "ok"
        let r841 = try await m841.run(value: 841)
        #expect(r841 == "ok")
        #expect(m841.runCallCount == 1)
    }
    @Test func test_842() async throws {
        let m842 = BenchmarkMock_842()
        m842.runReturn = "ok"
        let r842 = try await m842.run(value: 842)
        #expect(r842 == "ok")
        #expect(m842.runCallCount == 1)
    }
    @Test func test_843() async throws {
        let m843 = BenchmarkMock_843()
        m843.runReturn = "ok"
        let r843 = try await m843.run(value: 843)
        #expect(r843 == "ok")
        #expect(m843.runCallCount == 1)
    }
    @Test func test_844() async throws {
        let m844 = BenchmarkMock_844()
        m844.runReturn = "ok"
        let r844 = try await m844.run(value: 844)
        #expect(r844 == "ok")
        #expect(m844.runCallCount == 1)
    }
    @Test func test_845() async throws {
        let m845 = BenchmarkMock_845()
        m845.runReturn = "ok"
        let r845 = try await m845.run(value: 845)
        #expect(r845 == "ok")
        #expect(m845.runCallCount == 1)
    }
    @Test func test_846() async throws {
        let m846 = BenchmarkMock_846()
        m846.runReturn = "ok"
        let r846 = try await m846.run(value: 846)
        #expect(r846 == "ok")
        #expect(m846.runCallCount == 1)
    }
    @Test func test_847() async throws {
        let m847 = BenchmarkMock_847()
        m847.runReturn = "ok"
        let r847 = try await m847.run(value: 847)
        #expect(r847 == "ok")
        #expect(m847.runCallCount == 1)
    }
    @Test func test_848() async throws {
        let m848 = BenchmarkMock_848()
        m848.runReturn = "ok"
        let r848 = try await m848.run(value: 848)
        #expect(r848 == "ok")
        #expect(m848.runCallCount == 1)
    }
    @Test func test_849() async throws {
        let m849 = BenchmarkMock_849()
        m849.runReturn = "ok"
        let r849 = try await m849.run(value: 849)
        #expect(r849 == "ok")
        #expect(m849.runCallCount == 1)
    }
    @Test func test_850() async throws {
        let m850 = BenchmarkMock_850()
        m850.runReturn = "ok"
        let r850 = try await m850.run(value: 850)
        #expect(r850 == "ok")
        #expect(m850.runCallCount == 1)
    }
    @Test func test_851() async throws {
        let m851 = BenchmarkMock_851()
        m851.runReturn = "ok"
        let r851 = try await m851.run(value: 851)
        #expect(r851 == "ok")
        #expect(m851.runCallCount == 1)
    }
    @Test func test_852() async throws {
        let m852 = BenchmarkMock_852()
        m852.runReturn = "ok"
        let r852 = try await m852.run(value: 852)
        #expect(r852 == "ok")
        #expect(m852.runCallCount == 1)
    }
    @Test func test_853() async throws {
        let m853 = BenchmarkMock_853()
        m853.runReturn = "ok"
        let r853 = try await m853.run(value: 853)
        #expect(r853 == "ok")
        #expect(m853.runCallCount == 1)
    }
    @Test func test_854() async throws {
        let m854 = BenchmarkMock_854()
        m854.runReturn = "ok"
        let r854 = try await m854.run(value: 854)
        #expect(r854 == "ok")
        #expect(m854.runCallCount == 1)
    }
    @Test func test_855() async throws {
        let m855 = BenchmarkMock_855()
        m855.runReturn = "ok"
        let r855 = try await m855.run(value: 855)
        #expect(r855 == "ok")
        #expect(m855.runCallCount == 1)
    }
    @Test func test_856() async throws {
        let m856 = BenchmarkMock_856()
        m856.runReturn = "ok"
        let r856 = try await m856.run(value: 856)
        #expect(r856 == "ok")
        #expect(m856.runCallCount == 1)
    }
    @Test func test_857() async throws {
        let m857 = BenchmarkMock_857()
        m857.runReturn = "ok"
        let r857 = try await m857.run(value: 857)
        #expect(r857 == "ok")
        #expect(m857.runCallCount == 1)
    }
    @Test func test_858() async throws {
        let m858 = BenchmarkMock_858()
        m858.runReturn = "ok"
        let r858 = try await m858.run(value: 858)
        #expect(r858 == "ok")
        #expect(m858.runCallCount == 1)
    }
    @Test func test_859() async throws {
        let m859 = BenchmarkMock_859()
        m859.runReturn = "ok"
        let r859 = try await m859.run(value: 859)
        #expect(r859 == "ok")
        #expect(m859.runCallCount == 1)
    }
    @Test func test_860() async throws {
        let m860 = BenchmarkMock_860()
        m860.runReturn = "ok"
        let r860 = try await m860.run(value: 860)
        #expect(r860 == "ok")
        #expect(m860.runCallCount == 1)
    }
    @Test func test_861() async throws {
        let m861 = BenchmarkMock_861()
        m861.runReturn = "ok"
        let r861 = try await m861.run(value: 861)
        #expect(r861 == "ok")
        #expect(m861.runCallCount == 1)
    }
    @Test func test_862() async throws {
        let m862 = BenchmarkMock_862()
        m862.runReturn = "ok"
        let r862 = try await m862.run(value: 862)
        #expect(r862 == "ok")
        #expect(m862.runCallCount == 1)
    }
    @Test func test_863() async throws {
        let m863 = BenchmarkMock_863()
        m863.runReturn = "ok"
        let r863 = try await m863.run(value: 863)
        #expect(r863 == "ok")
        #expect(m863.runCallCount == 1)
    }
    @Test func test_864() async throws {
        let m864 = BenchmarkMock_864()
        m864.runReturn = "ok"
        let r864 = try await m864.run(value: 864)
        #expect(r864 == "ok")
        #expect(m864.runCallCount == 1)
    }
    @Test func test_865() async throws {
        let m865 = BenchmarkMock_865()
        m865.runReturn = "ok"
        let r865 = try await m865.run(value: 865)
        #expect(r865 == "ok")
        #expect(m865.runCallCount == 1)
    }
    @Test func test_866() async throws {
        let m866 = BenchmarkMock_866()
        m866.runReturn = "ok"
        let r866 = try await m866.run(value: 866)
        #expect(r866 == "ok")
        #expect(m866.runCallCount == 1)
    }
    @Test func test_867() async throws {
        let m867 = BenchmarkMock_867()
        m867.runReturn = "ok"
        let r867 = try await m867.run(value: 867)
        #expect(r867 == "ok")
        #expect(m867.runCallCount == 1)
    }
    @Test func test_868() async throws {
        let m868 = BenchmarkMock_868()
        m868.runReturn = "ok"
        let r868 = try await m868.run(value: 868)
        #expect(r868 == "ok")
        #expect(m868.runCallCount == 1)
    }
    @Test func test_869() async throws {
        let m869 = BenchmarkMock_869()
        m869.runReturn = "ok"
        let r869 = try await m869.run(value: 869)
        #expect(r869 == "ok")
        #expect(m869.runCallCount == 1)
    }
    @Test func test_870() async throws {
        let m870 = BenchmarkMock_870()
        m870.runReturn = "ok"
        let r870 = try await m870.run(value: 870)
        #expect(r870 == "ok")
        #expect(m870.runCallCount == 1)
    }
    @Test func test_871() async throws {
        let m871 = BenchmarkMock_871()
        m871.runReturn = "ok"
        let r871 = try await m871.run(value: 871)
        #expect(r871 == "ok")
        #expect(m871.runCallCount == 1)
    }
    @Test func test_872() async throws {
        let m872 = BenchmarkMock_872()
        m872.runReturn = "ok"
        let r872 = try await m872.run(value: 872)
        #expect(r872 == "ok")
        #expect(m872.runCallCount == 1)
    }
    @Test func test_873() async throws {
        let m873 = BenchmarkMock_873()
        m873.runReturn = "ok"
        let r873 = try await m873.run(value: 873)
        #expect(r873 == "ok")
        #expect(m873.runCallCount == 1)
    }
    @Test func test_874() async throws {
        let m874 = BenchmarkMock_874()
        m874.runReturn = "ok"
        let r874 = try await m874.run(value: 874)
        #expect(r874 == "ok")
        #expect(m874.runCallCount == 1)
    }
    @Test func test_875() async throws {
        let m875 = BenchmarkMock_875()
        m875.runReturn = "ok"
        let r875 = try await m875.run(value: 875)
        #expect(r875 == "ok")
        #expect(m875.runCallCount == 1)
    }
    @Test func test_876() async throws {
        let m876 = BenchmarkMock_876()
        m876.runReturn = "ok"
        let r876 = try await m876.run(value: 876)
        #expect(r876 == "ok")
        #expect(m876.runCallCount == 1)
    }
    @Test func test_877() async throws {
        let m877 = BenchmarkMock_877()
        m877.runReturn = "ok"
        let r877 = try await m877.run(value: 877)
        #expect(r877 == "ok")
        #expect(m877.runCallCount == 1)
    }
    @Test func test_878() async throws {
        let m878 = BenchmarkMock_878()
        m878.runReturn = "ok"
        let r878 = try await m878.run(value: 878)
        #expect(r878 == "ok")
        #expect(m878.runCallCount == 1)
    }
    @Test func test_879() async throws {
        let m879 = BenchmarkMock_879()
        m879.runReturn = "ok"
        let r879 = try await m879.run(value: 879)
        #expect(r879 == "ok")
        #expect(m879.runCallCount == 1)
    }
    @Test func test_880() async throws {
        let m880 = BenchmarkMock_880()
        m880.runReturn = "ok"
        let r880 = try await m880.run(value: 880)
        #expect(r880 == "ok")
        #expect(m880.runCallCount == 1)
    }
    @Test func test_881() async throws {
        let m881 = BenchmarkMock_881()
        m881.runReturn = "ok"
        let r881 = try await m881.run(value: 881)
        #expect(r881 == "ok")
        #expect(m881.runCallCount == 1)
    }
    @Test func test_882() async throws {
        let m882 = BenchmarkMock_882()
        m882.runReturn = "ok"
        let r882 = try await m882.run(value: 882)
        #expect(r882 == "ok")
        #expect(m882.runCallCount == 1)
    }
    @Test func test_883() async throws {
        let m883 = BenchmarkMock_883()
        m883.runReturn = "ok"
        let r883 = try await m883.run(value: 883)
        #expect(r883 == "ok")
        #expect(m883.runCallCount == 1)
    }
    @Test func test_884() async throws {
        let m884 = BenchmarkMock_884()
        m884.runReturn = "ok"
        let r884 = try await m884.run(value: 884)
        #expect(r884 == "ok")
        #expect(m884.runCallCount == 1)
    }
    @Test func test_885() async throws {
        let m885 = BenchmarkMock_885()
        m885.runReturn = "ok"
        let r885 = try await m885.run(value: 885)
        #expect(r885 == "ok")
        #expect(m885.runCallCount == 1)
    }
    @Test func test_886() async throws {
        let m886 = BenchmarkMock_886()
        m886.runReturn = "ok"
        let r886 = try await m886.run(value: 886)
        #expect(r886 == "ok")
        #expect(m886.runCallCount == 1)
    }
    @Test func test_887() async throws {
        let m887 = BenchmarkMock_887()
        m887.runReturn = "ok"
        let r887 = try await m887.run(value: 887)
        #expect(r887 == "ok")
        #expect(m887.runCallCount == 1)
    }
    @Test func test_888() async throws {
        let m888 = BenchmarkMock_888()
        m888.runReturn = "ok"
        let r888 = try await m888.run(value: 888)
        #expect(r888 == "ok")
        #expect(m888.runCallCount == 1)
    }
    @Test func test_889() async throws {
        let m889 = BenchmarkMock_889()
        m889.runReturn = "ok"
        let r889 = try await m889.run(value: 889)
        #expect(r889 == "ok")
        #expect(m889.runCallCount == 1)
    }
    @Test func test_890() async throws {
        let m890 = BenchmarkMock_890()
        m890.runReturn = "ok"
        let r890 = try await m890.run(value: 890)
        #expect(r890 == "ok")
        #expect(m890.runCallCount == 1)
    }
    @Test func test_891() async throws {
        let m891 = BenchmarkMock_891()
        m891.runReturn = "ok"
        let r891 = try await m891.run(value: 891)
        #expect(r891 == "ok")
        #expect(m891.runCallCount == 1)
    }
    @Test func test_892() async throws {
        let m892 = BenchmarkMock_892()
        m892.runReturn = "ok"
        let r892 = try await m892.run(value: 892)
        #expect(r892 == "ok")
        #expect(m892.runCallCount == 1)
    }
    @Test func test_893() async throws {
        let m893 = BenchmarkMock_893()
        m893.runReturn = "ok"
        let r893 = try await m893.run(value: 893)
        #expect(r893 == "ok")
        #expect(m893.runCallCount == 1)
    }
    @Test func test_894() async throws {
        let m894 = BenchmarkMock_894()
        m894.runReturn = "ok"
        let r894 = try await m894.run(value: 894)
        #expect(r894 == "ok")
        #expect(m894.runCallCount == 1)
    }
    @Test func test_895() async throws {
        let m895 = BenchmarkMock_895()
        m895.runReturn = "ok"
        let r895 = try await m895.run(value: 895)
        #expect(r895 == "ok")
        #expect(m895.runCallCount == 1)
    }
    @Test func test_896() async throws {
        let m896 = BenchmarkMock_896()
        m896.runReturn = "ok"
        let r896 = try await m896.run(value: 896)
        #expect(r896 == "ok")
        #expect(m896.runCallCount == 1)
    }
    @Test func test_897() async throws {
        let m897 = BenchmarkMock_897()
        m897.runReturn = "ok"
        let r897 = try await m897.run(value: 897)
        #expect(r897 == "ok")
        #expect(m897.runCallCount == 1)
    }
    @Test func test_898() async throws {
        let m898 = BenchmarkMock_898()
        m898.runReturn = "ok"
        let r898 = try await m898.run(value: 898)
        #expect(r898 == "ok")
        #expect(m898.runCallCount == 1)
    }
    @Test func test_899() async throws {
        let m899 = BenchmarkMock_899()
        m899.runReturn = "ok"
        let r899 = try await m899.run(value: 899)
        #expect(r899 == "ok")
        #expect(m899.runCallCount == 1)
    }
    @Test func test_900() async throws {
        let m900 = BenchmarkMock_900()
        m900.runReturn = "ok"
        let r900 = try await m900.run(value: 900)
        #expect(r900 == "ok")
        #expect(m900.runCallCount == 1)
    }
    @Test func test_901() async throws {
        let m901 = BenchmarkMock_901()
        m901.runReturn = "ok"
        let r901 = try await m901.run(value: 901)
        #expect(r901 == "ok")
        #expect(m901.runCallCount == 1)
    }
    @Test func test_902() async throws {
        let m902 = BenchmarkMock_902()
        m902.runReturn = "ok"
        let r902 = try await m902.run(value: 902)
        #expect(r902 == "ok")
        #expect(m902.runCallCount == 1)
    }
    @Test func test_903() async throws {
        let m903 = BenchmarkMock_903()
        m903.runReturn = "ok"
        let r903 = try await m903.run(value: 903)
        #expect(r903 == "ok")
        #expect(m903.runCallCount == 1)
    }
    @Test func test_904() async throws {
        let m904 = BenchmarkMock_904()
        m904.runReturn = "ok"
        let r904 = try await m904.run(value: 904)
        #expect(r904 == "ok")
        #expect(m904.runCallCount == 1)
    }
    @Test func test_905() async throws {
        let m905 = BenchmarkMock_905()
        m905.runReturn = "ok"
        let r905 = try await m905.run(value: 905)
        #expect(r905 == "ok")
        #expect(m905.runCallCount == 1)
    }
    @Test func test_906() async throws {
        let m906 = BenchmarkMock_906()
        m906.runReturn = "ok"
        let r906 = try await m906.run(value: 906)
        #expect(r906 == "ok")
        #expect(m906.runCallCount == 1)
    }
    @Test func test_907() async throws {
        let m907 = BenchmarkMock_907()
        m907.runReturn = "ok"
        let r907 = try await m907.run(value: 907)
        #expect(r907 == "ok")
        #expect(m907.runCallCount == 1)
    }
    @Test func test_908() async throws {
        let m908 = BenchmarkMock_908()
        m908.runReturn = "ok"
        let r908 = try await m908.run(value: 908)
        #expect(r908 == "ok")
        #expect(m908.runCallCount == 1)
    }
    @Test func test_909() async throws {
        let m909 = BenchmarkMock_909()
        m909.runReturn = "ok"
        let r909 = try await m909.run(value: 909)
        #expect(r909 == "ok")
        #expect(m909.runCallCount == 1)
    }
    @Test func test_910() async throws {
        let m910 = BenchmarkMock_910()
        m910.runReturn = "ok"
        let r910 = try await m910.run(value: 910)
        #expect(r910 == "ok")
        #expect(m910.runCallCount == 1)
    }
    @Test func test_911() async throws {
        let m911 = BenchmarkMock_911()
        m911.runReturn = "ok"
        let r911 = try await m911.run(value: 911)
        #expect(r911 == "ok")
        #expect(m911.runCallCount == 1)
    }
    @Test func test_912() async throws {
        let m912 = BenchmarkMock_912()
        m912.runReturn = "ok"
        let r912 = try await m912.run(value: 912)
        #expect(r912 == "ok")
        #expect(m912.runCallCount == 1)
    }
    @Test func test_913() async throws {
        let m913 = BenchmarkMock_913()
        m913.runReturn = "ok"
        let r913 = try await m913.run(value: 913)
        #expect(r913 == "ok")
        #expect(m913.runCallCount == 1)
    }
    @Test func test_914() async throws {
        let m914 = BenchmarkMock_914()
        m914.runReturn = "ok"
        let r914 = try await m914.run(value: 914)
        #expect(r914 == "ok")
        #expect(m914.runCallCount == 1)
    }
    @Test func test_915() async throws {
        let m915 = BenchmarkMock_915()
        m915.runReturn = "ok"
        let r915 = try await m915.run(value: 915)
        #expect(r915 == "ok")
        #expect(m915.runCallCount == 1)
    }
    @Test func test_916() async throws {
        let m916 = BenchmarkMock_916()
        m916.runReturn = "ok"
        let r916 = try await m916.run(value: 916)
        #expect(r916 == "ok")
        #expect(m916.runCallCount == 1)
    }
    @Test func test_917() async throws {
        let m917 = BenchmarkMock_917()
        m917.runReturn = "ok"
        let r917 = try await m917.run(value: 917)
        #expect(r917 == "ok")
        #expect(m917.runCallCount == 1)
    }
    @Test func test_918() async throws {
        let m918 = BenchmarkMock_918()
        m918.runReturn = "ok"
        let r918 = try await m918.run(value: 918)
        #expect(r918 == "ok")
        #expect(m918.runCallCount == 1)
    }
    @Test func test_919() async throws {
        let m919 = BenchmarkMock_919()
        m919.runReturn = "ok"
        let r919 = try await m919.run(value: 919)
        #expect(r919 == "ok")
        #expect(m919.runCallCount == 1)
    }
    @Test func test_920() async throws {
        let m920 = BenchmarkMock_920()
        m920.runReturn = "ok"
        let r920 = try await m920.run(value: 920)
        #expect(r920 == "ok")
        #expect(m920.runCallCount == 1)
    }
    @Test func test_921() async throws {
        let m921 = BenchmarkMock_921()
        m921.runReturn = "ok"
        let r921 = try await m921.run(value: 921)
        #expect(r921 == "ok")
        #expect(m921.runCallCount == 1)
    }
    @Test func test_922() async throws {
        let m922 = BenchmarkMock_922()
        m922.runReturn = "ok"
        let r922 = try await m922.run(value: 922)
        #expect(r922 == "ok")
        #expect(m922.runCallCount == 1)
    }
    @Test func test_923() async throws {
        let m923 = BenchmarkMock_923()
        m923.runReturn = "ok"
        let r923 = try await m923.run(value: 923)
        #expect(r923 == "ok")
        #expect(m923.runCallCount == 1)
    }
    @Test func test_924() async throws {
        let m924 = BenchmarkMock_924()
        m924.runReturn = "ok"
        let r924 = try await m924.run(value: 924)
        #expect(r924 == "ok")
        #expect(m924.runCallCount == 1)
    }
    @Test func test_925() async throws {
        let m925 = BenchmarkMock_925()
        m925.runReturn = "ok"
        let r925 = try await m925.run(value: 925)
        #expect(r925 == "ok")
        #expect(m925.runCallCount == 1)
    }
    @Test func test_926() async throws {
        let m926 = BenchmarkMock_926()
        m926.runReturn = "ok"
        let r926 = try await m926.run(value: 926)
        #expect(r926 == "ok")
        #expect(m926.runCallCount == 1)
    }
    @Test func test_927() async throws {
        let m927 = BenchmarkMock_927()
        m927.runReturn = "ok"
        let r927 = try await m927.run(value: 927)
        #expect(r927 == "ok")
        #expect(m927.runCallCount == 1)
    }
    @Test func test_928() async throws {
        let m928 = BenchmarkMock_928()
        m928.runReturn = "ok"
        let r928 = try await m928.run(value: 928)
        #expect(r928 == "ok")
        #expect(m928.runCallCount == 1)
    }
    @Test func test_929() async throws {
        let m929 = BenchmarkMock_929()
        m929.runReturn = "ok"
        let r929 = try await m929.run(value: 929)
        #expect(r929 == "ok")
        #expect(m929.runCallCount == 1)
    }
    @Test func test_930() async throws {
        let m930 = BenchmarkMock_930()
        m930.runReturn = "ok"
        let r930 = try await m930.run(value: 930)
        #expect(r930 == "ok")
        #expect(m930.runCallCount == 1)
    }
    @Test func test_931() async throws {
        let m931 = BenchmarkMock_931()
        m931.runReturn = "ok"
        let r931 = try await m931.run(value: 931)
        #expect(r931 == "ok")
        #expect(m931.runCallCount == 1)
    }
    @Test func test_932() async throws {
        let m932 = BenchmarkMock_932()
        m932.runReturn = "ok"
        let r932 = try await m932.run(value: 932)
        #expect(r932 == "ok")
        #expect(m932.runCallCount == 1)
    }
    @Test func test_933() async throws {
        let m933 = BenchmarkMock_933()
        m933.runReturn = "ok"
        let r933 = try await m933.run(value: 933)
        #expect(r933 == "ok")
        #expect(m933.runCallCount == 1)
    }
    @Test func test_934() async throws {
        let m934 = BenchmarkMock_934()
        m934.runReturn = "ok"
        let r934 = try await m934.run(value: 934)
        #expect(r934 == "ok")
        #expect(m934.runCallCount == 1)
    }
    @Test func test_935() async throws {
        let m935 = BenchmarkMock_935()
        m935.runReturn = "ok"
        let r935 = try await m935.run(value: 935)
        #expect(r935 == "ok")
        #expect(m935.runCallCount == 1)
    }
    @Test func test_936() async throws {
        let m936 = BenchmarkMock_936()
        m936.runReturn = "ok"
        let r936 = try await m936.run(value: 936)
        #expect(r936 == "ok")
        #expect(m936.runCallCount == 1)
    }
    @Test func test_937() async throws {
        let m937 = BenchmarkMock_937()
        m937.runReturn = "ok"
        let r937 = try await m937.run(value: 937)
        #expect(r937 == "ok")
        #expect(m937.runCallCount == 1)
    }
    @Test func test_938() async throws {
        let m938 = BenchmarkMock_938()
        m938.runReturn = "ok"
        let r938 = try await m938.run(value: 938)
        #expect(r938 == "ok")
        #expect(m938.runCallCount == 1)
    }
    @Test func test_939() async throws {
        let m939 = BenchmarkMock_939()
        m939.runReturn = "ok"
        let r939 = try await m939.run(value: 939)
        #expect(r939 == "ok")
        #expect(m939.runCallCount == 1)
    }
    @Test func test_940() async throws {
        let m940 = BenchmarkMock_940()
        m940.runReturn = "ok"
        let r940 = try await m940.run(value: 940)
        #expect(r940 == "ok")
        #expect(m940.runCallCount == 1)
    }
    @Test func test_941() async throws {
        let m941 = BenchmarkMock_941()
        m941.runReturn = "ok"
        let r941 = try await m941.run(value: 941)
        #expect(r941 == "ok")
        #expect(m941.runCallCount == 1)
    }
    @Test func test_942() async throws {
        let m942 = BenchmarkMock_942()
        m942.runReturn = "ok"
        let r942 = try await m942.run(value: 942)
        #expect(r942 == "ok")
        #expect(m942.runCallCount == 1)
    }
    @Test func test_943() async throws {
        let m943 = BenchmarkMock_943()
        m943.runReturn = "ok"
        let r943 = try await m943.run(value: 943)
        #expect(r943 == "ok")
        #expect(m943.runCallCount == 1)
    }
    @Test func test_944() async throws {
        let m944 = BenchmarkMock_944()
        m944.runReturn = "ok"
        let r944 = try await m944.run(value: 944)
        #expect(r944 == "ok")
        #expect(m944.runCallCount == 1)
    }
    @Test func test_945() async throws {
        let m945 = BenchmarkMock_945()
        m945.runReturn = "ok"
        let r945 = try await m945.run(value: 945)
        #expect(r945 == "ok")
        #expect(m945.runCallCount == 1)
    }
    @Test func test_946() async throws {
        let m946 = BenchmarkMock_946()
        m946.runReturn = "ok"
        let r946 = try await m946.run(value: 946)
        #expect(r946 == "ok")
        #expect(m946.runCallCount == 1)
    }
    @Test func test_947() async throws {
        let m947 = BenchmarkMock_947()
        m947.runReturn = "ok"
        let r947 = try await m947.run(value: 947)
        #expect(r947 == "ok")
        #expect(m947.runCallCount == 1)
    }
    @Test func test_948() async throws {
        let m948 = BenchmarkMock_948()
        m948.runReturn = "ok"
        let r948 = try await m948.run(value: 948)
        #expect(r948 == "ok")
        #expect(m948.runCallCount == 1)
    }
    @Test func test_949() async throws {
        let m949 = BenchmarkMock_949()
        m949.runReturn = "ok"
        let r949 = try await m949.run(value: 949)
        #expect(r949 == "ok")
        #expect(m949.runCallCount == 1)
    }
    @Test func test_950() async throws {
        let m950 = BenchmarkMock_950()
        m950.runReturn = "ok"
        let r950 = try await m950.run(value: 950)
        #expect(r950 == "ok")
        #expect(m950.runCallCount == 1)
    }
    @Test func test_951() async throws {
        let m951 = BenchmarkMock_951()
        m951.runReturn = "ok"
        let r951 = try await m951.run(value: 951)
        #expect(r951 == "ok")
        #expect(m951.runCallCount == 1)
    }
    @Test func test_952() async throws {
        let m952 = BenchmarkMock_952()
        m952.runReturn = "ok"
        let r952 = try await m952.run(value: 952)
        #expect(r952 == "ok")
        #expect(m952.runCallCount == 1)
    }
    @Test func test_953() async throws {
        let m953 = BenchmarkMock_953()
        m953.runReturn = "ok"
        let r953 = try await m953.run(value: 953)
        #expect(r953 == "ok")
        #expect(m953.runCallCount == 1)
    }
    @Test func test_954() async throws {
        let m954 = BenchmarkMock_954()
        m954.runReturn = "ok"
        let r954 = try await m954.run(value: 954)
        #expect(r954 == "ok")
        #expect(m954.runCallCount == 1)
    }
    @Test func test_955() async throws {
        let m955 = BenchmarkMock_955()
        m955.runReturn = "ok"
        let r955 = try await m955.run(value: 955)
        #expect(r955 == "ok")
        #expect(m955.runCallCount == 1)
    }
    @Test func test_956() async throws {
        let m956 = BenchmarkMock_956()
        m956.runReturn = "ok"
        let r956 = try await m956.run(value: 956)
        #expect(r956 == "ok")
        #expect(m956.runCallCount == 1)
    }
    @Test func test_957() async throws {
        let m957 = BenchmarkMock_957()
        m957.runReturn = "ok"
        let r957 = try await m957.run(value: 957)
        #expect(r957 == "ok")
        #expect(m957.runCallCount == 1)
    }
    @Test func test_958() async throws {
        let m958 = BenchmarkMock_958()
        m958.runReturn = "ok"
        let r958 = try await m958.run(value: 958)
        #expect(r958 == "ok")
        #expect(m958.runCallCount == 1)
    }
    @Test func test_959() async throws {
        let m959 = BenchmarkMock_959()
        m959.runReturn = "ok"
        let r959 = try await m959.run(value: 959)
        #expect(r959 == "ok")
        #expect(m959.runCallCount == 1)
    }
    @Test func test_960() async throws {
        let m960 = BenchmarkMock_960()
        m960.runReturn = "ok"
        let r960 = try await m960.run(value: 960)
        #expect(r960 == "ok")
        #expect(m960.runCallCount == 1)
    }
    @Test func test_961() async throws {
        let m961 = BenchmarkMock_961()
        m961.runReturn = "ok"
        let r961 = try await m961.run(value: 961)
        #expect(r961 == "ok")
        #expect(m961.runCallCount == 1)
    }
    @Test func test_962() async throws {
        let m962 = BenchmarkMock_962()
        m962.runReturn = "ok"
        let r962 = try await m962.run(value: 962)
        #expect(r962 == "ok")
        #expect(m962.runCallCount == 1)
    }
    @Test func test_963() async throws {
        let m963 = BenchmarkMock_963()
        m963.runReturn = "ok"
        let r963 = try await m963.run(value: 963)
        #expect(r963 == "ok")
        #expect(m963.runCallCount == 1)
    }
    @Test func test_964() async throws {
        let m964 = BenchmarkMock_964()
        m964.runReturn = "ok"
        let r964 = try await m964.run(value: 964)
        #expect(r964 == "ok")
        #expect(m964.runCallCount == 1)
    }
    @Test func test_965() async throws {
        let m965 = BenchmarkMock_965()
        m965.runReturn = "ok"
        let r965 = try await m965.run(value: 965)
        #expect(r965 == "ok")
        #expect(m965.runCallCount == 1)
    }
    @Test func test_966() async throws {
        let m966 = BenchmarkMock_966()
        m966.runReturn = "ok"
        let r966 = try await m966.run(value: 966)
        #expect(r966 == "ok")
        #expect(m966.runCallCount == 1)
    }
    @Test func test_967() async throws {
        let m967 = BenchmarkMock_967()
        m967.runReturn = "ok"
        let r967 = try await m967.run(value: 967)
        #expect(r967 == "ok")
        #expect(m967.runCallCount == 1)
    }
    @Test func test_968() async throws {
        let m968 = BenchmarkMock_968()
        m968.runReturn = "ok"
        let r968 = try await m968.run(value: 968)
        #expect(r968 == "ok")
        #expect(m968.runCallCount == 1)
    }
    @Test func test_969() async throws {
        let m969 = BenchmarkMock_969()
        m969.runReturn = "ok"
        let r969 = try await m969.run(value: 969)
        #expect(r969 == "ok")
        #expect(m969.runCallCount == 1)
    }
    @Test func test_970() async throws {
        let m970 = BenchmarkMock_970()
        m970.runReturn = "ok"
        let r970 = try await m970.run(value: 970)
        #expect(r970 == "ok")
        #expect(m970.runCallCount == 1)
    }
    @Test func test_971() async throws {
        let m971 = BenchmarkMock_971()
        m971.runReturn = "ok"
        let r971 = try await m971.run(value: 971)
        #expect(r971 == "ok")
        #expect(m971.runCallCount == 1)
    }
    @Test func test_972() async throws {
        let m972 = BenchmarkMock_972()
        m972.runReturn = "ok"
        let r972 = try await m972.run(value: 972)
        #expect(r972 == "ok")
        #expect(m972.runCallCount == 1)
    }
    @Test func test_973() async throws {
        let m973 = BenchmarkMock_973()
        m973.runReturn = "ok"
        let r973 = try await m973.run(value: 973)
        #expect(r973 == "ok")
        #expect(m973.runCallCount == 1)
    }
    @Test func test_974() async throws {
        let m974 = BenchmarkMock_974()
        m974.runReturn = "ok"
        let r974 = try await m974.run(value: 974)
        #expect(r974 == "ok")
        #expect(m974.runCallCount == 1)
    }
    @Test func test_975() async throws {
        let m975 = BenchmarkMock_975()
        m975.runReturn = "ok"
        let r975 = try await m975.run(value: 975)
        #expect(r975 == "ok")
        #expect(m975.runCallCount == 1)
    }
    @Test func test_976() async throws {
        let m976 = BenchmarkMock_976()
        m976.runReturn = "ok"
        let r976 = try await m976.run(value: 976)
        #expect(r976 == "ok")
        #expect(m976.runCallCount == 1)
    }
    @Test func test_977() async throws {
        let m977 = BenchmarkMock_977()
        m977.runReturn = "ok"
        let r977 = try await m977.run(value: 977)
        #expect(r977 == "ok")
        #expect(m977.runCallCount == 1)
    }
    @Test func test_978() async throws {
        let m978 = BenchmarkMock_978()
        m978.runReturn = "ok"
        let r978 = try await m978.run(value: 978)
        #expect(r978 == "ok")
        #expect(m978.runCallCount == 1)
    }
    @Test func test_979() async throws {
        let m979 = BenchmarkMock_979()
        m979.runReturn = "ok"
        let r979 = try await m979.run(value: 979)
        #expect(r979 == "ok")
        #expect(m979.runCallCount == 1)
    }
    @Test func test_980() async throws {
        let m980 = BenchmarkMock_980()
        m980.runReturn = "ok"
        let r980 = try await m980.run(value: 980)
        #expect(r980 == "ok")
        #expect(m980.runCallCount == 1)
    }
    @Test func test_981() async throws {
        let m981 = BenchmarkMock_981()
        m981.runReturn = "ok"
        let r981 = try await m981.run(value: 981)
        #expect(r981 == "ok")
        #expect(m981.runCallCount == 1)
    }
    @Test func test_982() async throws {
        let m982 = BenchmarkMock_982()
        m982.runReturn = "ok"
        let r982 = try await m982.run(value: 982)
        #expect(r982 == "ok")
        #expect(m982.runCallCount == 1)
    }
    @Test func test_983() async throws {
        let m983 = BenchmarkMock_983()
        m983.runReturn = "ok"
        let r983 = try await m983.run(value: 983)
        #expect(r983 == "ok")
        #expect(m983.runCallCount == 1)
    }
    @Test func test_984() async throws {
        let m984 = BenchmarkMock_984()
        m984.runReturn = "ok"
        let r984 = try await m984.run(value: 984)
        #expect(r984 == "ok")
        #expect(m984.runCallCount == 1)
    }
    @Test func test_985() async throws {
        let m985 = BenchmarkMock_985()
        m985.runReturn = "ok"
        let r985 = try await m985.run(value: 985)
        #expect(r985 == "ok")
        #expect(m985.runCallCount == 1)
    }
    @Test func test_986() async throws {
        let m986 = BenchmarkMock_986()
        m986.runReturn = "ok"
        let r986 = try await m986.run(value: 986)
        #expect(r986 == "ok")
        #expect(m986.runCallCount == 1)
    }
    @Test func test_987() async throws {
        let m987 = BenchmarkMock_987()
        m987.runReturn = "ok"
        let r987 = try await m987.run(value: 987)
        #expect(r987 == "ok")
        #expect(m987.runCallCount == 1)
    }
    @Test func test_988() async throws {
        let m988 = BenchmarkMock_988()
        m988.runReturn = "ok"
        let r988 = try await m988.run(value: 988)
        #expect(r988 == "ok")
        #expect(m988.runCallCount == 1)
    }
    @Test func test_989() async throws {
        let m989 = BenchmarkMock_989()
        m989.runReturn = "ok"
        let r989 = try await m989.run(value: 989)
        #expect(r989 == "ok")
        #expect(m989.runCallCount == 1)
    }
    @Test func test_990() async throws {
        let m990 = BenchmarkMock_990()
        m990.runReturn = "ok"
        let r990 = try await m990.run(value: 990)
        #expect(r990 == "ok")
        #expect(m990.runCallCount == 1)
    }
    @Test func test_991() async throws {
        let m991 = BenchmarkMock_991()
        m991.runReturn = "ok"
        let r991 = try await m991.run(value: 991)
        #expect(r991 == "ok")
        #expect(m991.runCallCount == 1)
    }
    @Test func test_992() async throws {
        let m992 = BenchmarkMock_992()
        m992.runReturn = "ok"
        let r992 = try await m992.run(value: 992)
        #expect(r992 == "ok")
        #expect(m992.runCallCount == 1)
    }
    @Test func test_993() async throws {
        let m993 = BenchmarkMock_993()
        m993.runReturn = "ok"
        let r993 = try await m993.run(value: 993)
        #expect(r993 == "ok")
        #expect(m993.runCallCount == 1)
    }
    @Test func test_994() async throws {
        let m994 = BenchmarkMock_994()
        m994.runReturn = "ok"
        let r994 = try await m994.run(value: 994)
        #expect(r994 == "ok")
        #expect(m994.runCallCount == 1)
    }
    @Test func test_995() async throws {
        let m995 = BenchmarkMock_995()
        m995.runReturn = "ok"
        let r995 = try await m995.run(value: 995)
        #expect(r995 == "ok")
        #expect(m995.runCallCount == 1)
    }
    @Test func test_996() async throws {
        let m996 = BenchmarkMock_996()
        m996.runReturn = "ok"
        let r996 = try await m996.run(value: 996)
        #expect(r996 == "ok")
        #expect(m996.runCallCount == 1)
    }
    @Test func test_997() async throws {
        let m997 = BenchmarkMock_997()
        m997.runReturn = "ok"
        let r997 = try await m997.run(value: 997)
        #expect(r997 == "ok")
        #expect(m997.runCallCount == 1)
    }
    @Test func test_998() async throws {
        let m998 = BenchmarkMock_998()
        m998.runReturn = "ok"
        let r998 = try await m998.run(value: 998)
        #expect(r998 == "ok")
        #expect(m998.runCallCount == 1)
    }
    @Test func test_999() async throws {
        let m999 = BenchmarkMock_999()
        m999.runReturn = "ok"
        let r999 = try await m999.run(value: 999)
        #expect(r999 == "ok")
        #expect(m999.runCallCount == 1)
    }
}
