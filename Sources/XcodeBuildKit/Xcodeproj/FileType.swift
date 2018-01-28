//
//  FileType.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/27.
//

// MARK: - FileType.

/// A type represents the values of the PBXFileType.
public enum FileType {
    case sourceCode(SourceCode)
    case plist(PropertyList)
    case xcode(Xcode)
    case shellScript(ShellScript)
    case machO(MachO)
    case text(Text)
    case audio(Audio)
    case image(Image)
    case video(Video)
    case archive(Archive)
}

// MARK: - RawRepresentable Conforming.

extension FileType: RawRepresentable {
    public init?(rawValue: String) {
        fatalError("Using the predefined values of the FileType instead.")
    }
    
    public typealias RawValue = String
    
    public var rawValue: String {
        switch self {
        case .sourceCode(let sourceCode):
            return sourceCode.rawValue
        case .plist(let plist):
            return plist.rawValue
        case .xcode(let xcode):
            return xcode.rawValue
        case .shellScript(let shellScript):
            return shellScript.rawValue
        case .machO(let machO):
            return machO.rawValue
        case .text(let text):
            return text.rawValue
        case .audio(let audio):
            return audio.rawValue
        case .image(let image):
            return image.rawValue
        case .video(let video):
            return video.rawValue
        case .archive(let archive):
            return archive.rawValue
        }
    }
}

// MARK: - SourceCode

extension FileType {
    /// A type represents the file of source code type.
    public enum SourceCode: String {
        
        // MARK: Objective-C.
        
        /// Preprocessed Objective-C source code.
        case objcPreprocessed = "sourcecode.c.objc.preprocessed"
        /// Objective-C source code.
        case objc = "sourcecode.c.objc"
        /// Preprocessed Objective-C++ source code.
        case objcppPreprocessed = "sourcecode.cpp.objcpp.preprocessed"
        /// Objective-C++ source code.
        case objcpp = "sourcecode.cpp.objcpp"
        
        // MARK: C.
        
        /// C header source code.
        case cHeader = "sourcecode.c.h"
        /// Preprocessed C source code.
        case cPreprocessed = "sourcecode.c.c.preprocessed"
        /// C source code.
        case c = "sourcecode.c"
        
        // MARK: Cpp.
        
        /// C++ header source code.
        case cppHeader = "sourcecode.cpp.h"
        /// Preprocessed C++ source code.
        case cppPreprocessed = "sourcecode.cpp.cpp.preprocessed"
        /// C++ source code.
        case cpp = "sourcecode.cpp.cpp"
        
        // MARK: Swift.
        
        /// Swift source code.
        case swift = "sourcecode.swift"
        
        // MARK: Assembly.
        
        /// Assembly source code.
        case assembly = "sourcecode.asm"
        /// LLVM Assembly source code.
        case llvmAssembly = "sourcecode.asm.llvm"
        /// NSAM Assembly source code.
        case nasmAssembly = "sourcecode.nasm"
        /// PPC Assembly source code.
        case ppcAssembly = "sourcecode.asm.asm"
        
        // MARK: Scripts.
        
        /// Uncompiled apple script source code.
        case appleScriptUncompiled = "sourcecode.applescript"
        /// Java script source code.
        case javaScript = "sourcecode.javascript"
        /// PHP script source code.
        case php = "text.script.php"
        /// Perl script source code.
        case perl = "text.script.perl"
        /// Python script source code.
        case python = "text.script.python"
        /// Ruby script source code.
        case ruby = "text.script.ruby"
        
        // MARK: Various.
        
        /// Ada source code.
        case ada = "sourcecode.ada"
        /// CLIPS source code.
        case clips = "sourcecode.clips"
        /// DTrace source code.
        case dTrace = "sourcecode.dtrace"
        /// Fortran 77 source code.
        case fortran77 = "sourcecode.fortran.f77"
        /// Fortran 90 source code.
        case fortran90 = "sourcecode.fortran.f90"
        /// Fortran source code.
        case fortran = "sourcecode.fortran"
        /// JAM make file source code.
        case jamMakefile = "sourcecode.jam"
        /// JAVA source code.
        case java = "sourcecode.java"
        /// Lex source code.
        case lex = "sourcecode.lex"
        /// Metal Shader source code.
        case metalShader = "sourcecode.metal"
        /// MiG source code.
        case miG = "sourcecode.mig"
        /// Open CL source code.
        case openCL = "sourcecode.opencl"
        /// Open GL Shading Language source code.
        case openGLShadingLanguage = "sourcecode.glsl"
        /// Pascal source code.
        case pascal = "sourcecode.pascal"
        /// Rez source code.
        case rez = "sourcecode.rez"
        /// Yacc source code.
        case yacc = "sourcecode.yacc"
        
        // MARK: Exports.
        
        /// Exported sumbols.
        case exportedSymbols = "sourcecode.exports"
        
        // MARK: Module Map.
        
        /// LLVM module map.
        case moduleMap = "sourcecode.module-map"
        
        // MARK: Text-Based Dylib Definition.
        
        /// Text-Based dylib definition.
        case textBasedDylibDefinition = "sourcecode.text-based-dylib-definition"
        
        // MARK: Make.
        
        /// Makefile.
        case make = "sourcecode.make"
    }
}

// MARK: - PropertyList.

extension FileType {
    /// A type represents the file of Plist or XML.
    public enum PropertyList: String {
        /// Info plist XML.
        case infoPlist = "text.plist.info"
        /// Binary property list.
        case plistBinary = "file.bplist"
        /// Property list text.
        case plistText = "text.plist"
        /// Property list XML.
        case plistXML = "text.plist.xml"
        /// XML.
        case xml = "text.xml"
        /// Apple script suite definition.
        case appleScriptSuite = "text.plist.scriptSuite"
        /// Apple script terminoligy definition.
        case appleScriptTerminology = "text.plist.scriptTerminology"
    }
}

// MARK: - Xcode.

extension FileType {
    /// A type represents the file of Xcode.
    public enum Xcode: String {
        /// Xcode build configuration properties.
        case xcconfig = "text.xcconfig"
        /// Entitlements plist.
        case entitlements = "text.plist.entitlements"
        /// Localizable strings.
        case strings = "text.plist.strings"
        // FIXME: Localizable Strings Dictionary.
        /// Man page surce.
        case man = "text.man"
        /// Project builder specification plist.
        case pbfilespec = "text.plist.pbfilespec"
        /// Xcode build rules specification plist.
        case xcbuildrules = "text.plist.xcbuildrules"
        /// Xcode language specification plist.
        case xclangspec = "text.plist.xclangspec"
        // FIXME: Xcode Plug-In Data.
        // FIXME: Compiled Xcode Plug-In Data.
        /// Xcode project data.
        case pbxproj = "text.pbxproject"
        /// Xcode specification plist.
        case xcspec = "text.plist.xcspec"
        /// Xcode syntax specification plist.
        case xcsynspec = "text.plist.xcsynspec"
        /// Xcode text macro plist.
        case xctxtmacro = "text.plist.xctxtmacro"
    }
}

// MARK: - ShellScript.

extension FileType {
    /// A type represents the file of shell.
    public enum ShellScript: String {
        /// Bash shell script.
        case bash = "text.script.sh"
        /// Shell script.
        case shell = "text.script"
        /// Csh shell script.
        case csh = "text.script.csh"
        /// Worksheet script.
        case worksheet = "text.script.worksheet"
    }
}

// MARK: - MachO.

extension FileType {
    /// A type represents the file of Mach-O.
    public enum MachO: String {
        /// Mach-O core dump.
        case coreDump = "compiled.mach-o.corefile"
        /// Mach-O dynamic library.
        case dynamicLibrary = "compiled.mach-o.dylib"
        /// Mach-O FVM library.
        case fvmLibrary = "compiled.mach-o.fvmlib"
        /// Mach-O object code.
        case objectCode = "compiled.mach-o.objfile"
        /// Mach-O preload data.
        case preloadData = "compiled.mach-o.preload"
        /// Mach-O bundle.
        case bundle = "compiled.mach-o.bundle"
        /// Mach-O data.
        case data = "compiled"
        /// Mach-O object code.
        case `self` = "compiled.mach-o"
    }
}

// MARK: - Text.

extension FileType {
    /// A type represents the text file.
    public enum Text: String {
        /// Cascading Style Sheets.
        case css = "text.css"
        /// The HTML text.
        case html = "text.html"
        /// The JSON text.
        case json = "text.json"
        /// The Markdown text.
        case markdown = "net.daringfireball.markdown"
        /// Plain text.
        case plain = "text"
        /// Rich text format.
        case rich = "text.rtf"
    }
}

// MARK: - Audio.

extension FileType {
    /// A type represents the file of audio.
    public enum Audio: String {
        /// AIFF audio.
        case aiff = "audio.aiff"
        /// MIDI audio.
        case midi = "audio.midi"
        /// MP3 audio.
        case mp3 = "audio.mp3"
        /// WAV audio.
        case wav = "audio.wav"
        /// Au audio.
        case au = "audio.au"
    }
}

// MARK: - Image.
extension FileType {
    /// A type represents the file of image.
    public enum Image: String {
        /// Bit-Map image.
        case bmp = "image.bmp"
        /// Gif image.
        case gif = "image.gif"
        /// Icon file.
        case icns = "image.icns"
        /// JPEG image.
        case jpeg = "image.jpeg"
        /// Macrosoft icon file.
        case ico = "image.ico"
        /// PICT image.
        case pict = "image.pict"
        /// PNG image.
        case png = "image.png"
        /// Tiff image.
        case tiff = "image.tiff"
        /// PDF document.
        case pdf = "image.pdf"
    }
}

// MARK: - Video.

extension FileType {
    /// A type represents the file of video.
    public enum Video: String {
        /// AVI video.
        case avi = "video.avi"
        /// MPEG video.
        case mpeg = "video.mpeg"
        /// QuickTime video.
        case quicktime = "video.quicktime"
        /// Quartz composer composition.
        case quartzComposer = "video.quartz-composer"
    }
}

// MARK: - Archive.

extension FileType {
    /// A type represents the file of archived data.
    public enum Archive: String {
        /// Apple script dictionary archive.
        case asdictionary = "archive.asdictionary"
        /// Archived data.
        case ar = "archive.ar"
        /// BinHex archive.
        case binhex = "archive.binhex"
        /// J2EE enterprice archive.
        case ear = "archive.ear"
        /// Java archive.
        case jar = "archive.jar"
        /// Mac binary archive.
        case macbinary = "archive.macbinary"
        /// PPOB archive.
        case ppob = "archive.ppob"
        /// Resource archive.
        case rsrc = "archive.rsrc"
        /// Stiffit archive.
        case stuffit = "archive.stuffit"
        /// Web application archive.
        case war = "archive.war"
        /// Zip archive.
        case zip = "archive.zip"
        /// gzip archive.
        case gzip = "archive.gzip"
        /// tar archive.
        case tar = "archive.tar"
    }
}

// FIXME: Java Bundle.
// FIXME: Java Bytecode.
