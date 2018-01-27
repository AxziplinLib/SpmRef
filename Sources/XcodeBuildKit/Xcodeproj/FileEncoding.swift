//
//  FileEncoding.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/27.
//

/// The file text encoding enums corresponding to the "Text Encoding" dropdown in Xcode's File Inspector.
public enum FileEncoding: UInt {
    /// The default value.
    case noExplicit = 0
    
    case utf8 = 4
    case utf16 = 10
    case utf16be = 2415919360
    case utf16le = 2483028224
    
    case westernMacOSRoman = 30
    case japaneseMacOS = 2147483649
    case traditionalChineseMacOS = 2147483650
    case koreanMacOS = 2147483651
    case arabicMacOS = 2147483652
    case hebrewMacOS = 2147483653
    case greekMacOS = 2147483654
    case cyrillicMacOS = 2147483655
    case simplifiedChineseMacOS = 2147483673
    case centralEuropeanMacOS = 2147483677
    case turkishMacOS = 2147483683
    case icelandicMacOS = 2147483685
    
    case westernISOLatin1 = 5
    case centralEuropeanISOLatin2 = 9
    case westernISOLatin3 = 2147484163
    case centralEuropeanISOLatin4 = 2147484164
    case cyrillicISO8859_5 = 2147484165
    case arabicISO8859_6 = 2147484166
    case greekISO8859_7 = 2147484167
    case hebrewISO8859_8 = 2147484168
    case turkishISOLatin5 = 2147484169
    case nordicISOLatin6 = 2147484170
    case thaiISO8859_11 = 2147484171
    case balticISOLatin7 = 2147484173
    case celticISOLatin8 = 2147484174
    case westernISOLatin9 = 2147484175
    case romanianISOLatin10 = 2147484176
    
    case westernWindowsLatin1 = 12
    case centralEuropeanWindowsLatin2 = 15
    case cyrillicWindows = 11
    case greekWindows = 13
    case turkishWindowsLatin5 = 14
    case hebrewWindows = 2147484933
    case arabicWindows = 2147484934
    case balticWindows = 2147484935
    case vietnameseWindows = 2147484936
    
    case latin_US_DOS = 2147484672
    case japaneseWindows_DOS = 8
    case simplifiedChineseWindows_DOS = 2147484705
    case koreanWindows_DOS = 2147484706
    case traditionalChineseWindowsDOS = 2147484707
    
    case japaneseEUC = 3
    case simplifiedChineseGB2312 = 2147486000
    case traditionalChineseEUC = 2147486001
    case koreanEUC = 2147486016
    
    case japaneseISO2022_JP = 21
    case japaneseShiftJIS = 2147486209
    case westernNextStep = 2
    case non_lossyASCII = 7
}
