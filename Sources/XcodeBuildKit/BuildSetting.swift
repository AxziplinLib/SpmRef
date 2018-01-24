//
//  BuildSetting.swift
//  XcodeBuildKit
//
//  Created by devedbox on 2018/1/22.
//

import Foundation

// MARK: - BuildSetting.

extension XcodeBuild {
    /// A type represent the build setting fields value of the xcode project.
    public struct BuildSetting {
        /// The name of the build setting field.
        public let name: String
        /// The value of the build setting field.
        public let value: String
    }
}

// MARK: - Commandable Conforming.

extension XcodeBuild.BuildSetting: Commandable {
    public var arguments: [String] {
        return ["\(name)=\(value)"]
    }
    
    public var description: String {
        return """
        Set the build setting buildsetting to value.
        
        A detailed reference of Xcode build settings can be found at: <https://help.apple.com/xcode/mac/current/#/itcaec37c2a6>
        """
    }
}

// MARK: - BuildSetting Fields.

// Build setting references at: https://help.apple.com/xcode/mac/current/#/itcaec37c2a6
extension XcodeBuild.BuildSetting {
    /// A string identifying the build system action being performed.
    public static func action(_ value: XcodeBuild.Action) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ACTION", value: value.command)
    }
    /// The locations of any sparse SDKs that should be layered on top of the one specified by [Base SDK (SDKROOT)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=devabcaadbaf). If more than one SDK is listed, the first one has highest precedence. Every SDK specified in this setting should be a "sparse" SDK, for example, not an SDK for an entire macOS release.
    public static func additionalSdks(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ADDITIONAL_SDKS", value: value)
    }
    /// The group name or gid for the files listed under the [Alternate Permissions Files (ALTERNATE_PERMISSIONS_FILES)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev40b8becae) setting.
    public static func alternateGroup(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ALTERNATE_GROUP", value: value)
    }
    /// Permissions used for the files listed under the [Alternate Permissions Files (ALTERNATE_PERMISSIONS_FILES)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev40b8becae)setting.
    public static func alternateMode(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ALTERNATE_MODE", value: value)
    }
    /// The owner name or uid for the files listed under the [Alternate Permissions Files (ALTERNATE_PERMISSIONS_FILES)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev40b8becae) setting.
    public static func alternateOwner(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ALTERNATE_OWNER", value: value)
    }
    /// List of files to which the alternate owner, group and permissions are applied.
    public static func alternatePermissionsFiles(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ALTERNATE_PERMISSIONS_FILES", value: value)
    }
    /// This setting is deprecated as of Xcode 8.3 and may not be supported in future versions. It is recommended that you disable the setting.
    /// If enabled, both `#include <header.h>`-style and `#include "header.h"`-style directives search the paths in [User Header Search Paths (USER_HEADER_SEARCH_PATHS)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=deved642222b) before [Header Search Paths (HEADER_SEARCH_PATHS)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev3c9f85d97). As a consequence, user headers, such as your own `String.h` header, have precedence over system headers when using `#include <header.h>`. This is done using the `-iquote` flag for the paths provided in [User Header Search Paths (USER_HEADER_SEARCH_PATHS)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=deved642222b). If disabled and your compiler fully supports separate user paths, user headers are only accessible with `#include "header.h"`-style preprocessor directives.
    /// For backwards compatibility reasons, this setting is enabled by default. Disabling it is strongly recommended.
    public static func alwaysSearchUserPaths(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ALWAYS_SEARCH_USER_PATHS", value: value)
    }
    /// When enabled, this causes the compiler and linker to disallow use of APIs that are not available to app extensions and to disallow linking to frameworks that have not been built with this setting enabled.
    public static func applicationExtensionApiOnly(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "APPLICATION_EXTENSION_API_ONLY", value: value)
    }
    /// Files copied with a Copy Files build phase are unchanged by default. Setting this to `TRUE` causes property list files (`.plist`) and strings files to be converted as specified by [Property List Output Encoding (PLIST_FILE_OUTPUT_FORMAT)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev70f6976ed) and [Strings File Output Encoding (STRINGS_FILE_OUTPUT_ENCODING)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev8d71dff90).
    public static func applyRulesInCopyFiles(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "APPLY_RULES_IN_COPY_FILES", value: value)
    }
    /// A list of the architectures for which the product will be built. This is usually set to a predefined build setting provided by the platform. If more than one architecture is specified, a universal binary will be produced.
    public static func archs(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ARCHS", value: value)
    }
    /// Name of an asset catalog app icon set whose contents will be merged into the `Info.plist`.
    public static func assetcatalogCompilerAppiconName(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ASSETCATALOG_COMPILER_APPICON_NAME", value: value)
    }
    /// The name of a watch complication to use from the asset catalog.
    public static func assetcatalogCompilerComplicationName(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ASSETCATALOG_COMPILER_COMPLICATION_NAME", value: value)
    }
    /// Name of an asset catalog launch image set whose contents will be merged into the `Info.plist`.
    public static func assetcatalogCompilerLaunchimageName(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ASSETCATALOG_COMPILER_LAUNCHIMAGE_NAME", value: value)
    }
    /// Leaderboards in the asset catalog may optionally specify a Game Center identifier. If they do not, their name will be prefixed by this value to form an automatically generated identifier.
    public static func assetcatalogCompilerLeaderboardIdentifierPrefix(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ASSETCATALOG_COMPILER_LEADERBOARD_IDENTIFIER_PREFIX", value: value)
    }
    /// Leaderboard sets in the asset catalog may optionally specify a Game Center identifier. If they do not, their name will be prefixed by this value to form an automatically generated identifier.
    public static func assetcatalogCompilerLeaderboardSetIdentifierPrefix(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ASSETCATALOG_COMPILER_LEADERBOARD_SET_IDENTIFIER_PREFIX", value: value)
    }
    /// With no value, the compiler uses the default optimization. You can also specify `time` to optimize for speed of access or `space` to optimize for a smaller compiled asset catalogs.
    public static func assetcatalogCompilerOptimization(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ASSETCATALOG_COMPILER_OPTIMIZATION", value: value)
    }
    /// Sticker Packs in the asset catalog may optionally specify an identifier. If they do not, their name will be prefixed by this value to form an automatically generated identifier.
    public static func assetcatalogCompilerStickerPackIdentifierPrefix(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ASSETCATALOG_COMPILER_STICKER_PACK_IDENTIFIER_PREFIX", value: value)
    }
    /// Show notices encountered during the compilation of asset catalogs.
    public static func assetcatalogNotices(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ASSETCATALOG_NOTICES", value: value)
    }
    /// Pass additional flags through to the asset catalog compiler.
    public static func assetcatalogOtherFlags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ASSETCATALOG_OTHER_FLAGS", value: value)
    }
    /// Show warnings encountered during the compilation of asset catalogs.
    public static func assetcatalogWarnings(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ASSETCATALOG_WARNINGS", value: value)
    }
    /// If set to anything other than the empty string, every URL in the `AssetPackManifest.plist` file will consist of this string with the name of the asset pack appended. If not set, the URLs in the `AssetPackManifest.plist` will be formed as appropriate for the build location of the asset packs. The prefix string is not escaped or quoted in any way, so any necessary escaping must be part of the URL string. This setting affects only URLs in the `AssetPackManifest.plist` file — it does not affect where asset packs are built in the local file system.
    public static func assetPackManifestUrlPrefix(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ASSET_PACK_MANIFEST_URL_PREFIX", value: value)
    }
    /// A list of components being built during this action.
    public static func buildComponents(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "BUILD_COMPONENTS", value: value)
    }
    /// A list of the build variants of the linked binary that will be produced. By default, only the `normal` variant is produced. Other common values include `debug` and `profile`.
    public static func buildVariants(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "BUILD_VARIANTS", value: value)
    }
    /// Identifies the directory under which all the product’s files can be found. This directory contains either product files or symbolic links to them. Run Script build phases can use the value of this build setting as a convenient way to refer to the product files built by one or more targets even when these files are scattered throughout a directory hierarchy (for example, when [Deployment Location (DEPLOYMENT_LOCATION)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=deve688be98f) is set to `YES`.
    public static func builtProductsDir(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "BUILT_PRODUCTS_DIR", value: value)
    }
    /// Specifies the executable that will load the bundle output file being linked. Undefined symbols from the bundle are checked against the specified executable as if it is one of the dynamic libraries the bundle was linked with.
    public static func bundleLoader(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "BUNDLE_LOADER", value: value)
    }
    /// Check for C++ container overflow when Address Sanitizer is enabled. This check requires the entire application to be built with Address Sanitizer. If not, it may report false positives.
    public static func clangAddressSanitizerContainerOverflow(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ADDRESS_SANITIZER_CONTAINER_OVERFLOW", value: value)
    }
    /// Enabling this setting allows non-modular includes to be used from within framework modules. This is inherently unsafe, as such headers might cause duplicate definitions when used by any client that imports both the framework and the non-modular includes.
    public static func clangAllowNonModularIncludesInFrameworkModules(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES", value: value)
    }
    /// Check for values stored to variables and never read again.
    public static func clangAnalyzerDeadcodeDeadstores(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_DEADCODE_DEADSTORES", value: value)
    }
    /// Check for misuses of the Grand Central Dispatch API.
    public static func clangAnalyzerGcd(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_GCD", value: value)
    }
    /// Warn when a call to an `NSLocalizedString()` macro is missing a context comment for the localizer.
    public static func clangAnalyzerLocalizabilityEmptyContext(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_LOCALIZABILITY_EMPTY_CONTEXT", value: value)
    }
    /// Warn when a nonlocalized string is passed to a user interface method expecting a localized string.
    public static func clangAnalyzerLocalizabilityNonlocalized(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_LOCALIZABILITY_NONLOCALIZED", value: value)
    }
    /// Warn about memory leaks, use-after-free, and other API misuses.
    public static func clangAnalyzerMemoryManagement(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_MEMORY_MANAGEMENT", value: value)
    }
    /// Check for misuses of `nonnull` parameter and return types.
    public static func clangAnalyzerNonnull(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_NONNULL", value: value)
    }
    /// Warn when a number object, such as an instance of `NSNumber`, `CFNumberRef`, `OSNumber`, or `OSBoolean` is compared or converted to a primitive value instead of another object.
    public static func clangAnalyzerNumberObjectConversion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_NUMBER_OBJECT_CONVERSION", value: value)
    }
    /// Warn on `nil` pointers used as mutexes for `@synchronized`.
    public static func clangAnalyzerObjcAtsync(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_OBJC_ATSYNC", value: value)
    }
    /// Warn if `CF` collections are created with non-pointer-size values. Check if `NS` collections are initialized with non-Objective-C type elements.
    public static func clangAnalyzerObjcCollections(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_OBJC_COLLECTIONS", value: value)
    }
    /// Warn when an instance is improperly cleaned up in `-dealloc`.
    public static func clangAnalyzerObjcDealloc(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_OBJC_DEALLOC", value: value)
    }
    /// Warn if a specialized generic type is converted to an incompatible type.
    public static func clangAnalyzerObjcGenerics(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_OBJC_GENERICS", value: value)
    }
    /// Warn about Objective-C method signatures with type incompatibilities.
    public static func clangAnalyzerObjcIncompMethodTypes(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_OBJC_INCOMP_METHOD_TYPES", value: value)
    }
    /// Warn if functions accepting `CFErrorRef` or `NSError` cannot indicate that an error occurred.
    public static func clangAnalyzerObjcNscferror(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_OBJC_NSCFERROR", value: value)
    }
    /// Warn on leaks and improper reference count management.
    public static func clangAnalyzerObjcRetainCount(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_OBJC_RETAIN_COUNT", value: value)
    }
    /// Check that `super init` is properly called within an Objective-C initialization method.
    public static func clangAnalyzerObjcSelfInit(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_OBJC_SELF_INIT", value: value)
    }
    /// Warn about private ivars that are never used.
    public static func clangAnalyzerObjcUnusedIvars(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_OBJC_UNUSED_IVARS", value: value)
    }
    /// Check for potential buffer overflows.
    public static func clangAnalyzerSecurityBufferOverflowExperimental(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_SECURITY_BUFFER_OVERFLOW_EXPERIMENTAL", value: value)
    }
    /// Warn on using a floating point value as a loop counter (CERT: FLP30-C, FLP30-CPP).
    public static func clangAnalyzerSecurityFloatloopcounter(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_SECURITY_FLOATLOOPCOUNTER", value: value)
    }
    /// Warn on uses of `getpw` and `gets`. The functions are dangerous as they may trigger a buffer overflow.
    public static func clangAnalyzerSecurityInsecureapiGetpwGets(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_SECURITY_INSECUREAPI_GETPW_GETS", value: value)
    }
    /// Warn on uses of `mktemp`, which produces predictable temporary files. It is obsoleted by `mktemps`. Warn when `mkstemp` is passed fewer than 6 `X`'s in the format string.
    public static func clangAnalyzerSecurityInsecureapiMkstemp(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_SECURITY_INSECUREAPI_MKSTEMP", value: value)
    }
    /// Warn on uses of `rand`, `random`, and related functions, which produce predictable random number sequences. Use `arc4random` instead.
    public static func clangAnalyzerSecurityInsecureapiRand(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_SECURITY_INSECUREAPI_RAND", value: value)
    }
    /// Warn on uses of the `strcpy` and `strcat` functions, which can result in buffer overflows. Use `strlcpy` or `strlcat`instead.
    public static func clangAnalyzerSecurityInsecureapiStrcpy(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_SECURITY_INSECUREAPI_STRCPY", value: value)
    }
    /// Warn on uses of sensitive functions whose return values must be always checked.
    public static func clangAnalyzerSecurityInsecureapiUncheckedreturn(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_SECURITY_INSECUREAPI_UNCHECKEDRETURN", value: value)
    }
    /// Warn on uses of the `vfork` function, which is inherently insecure. Use the safer `posix_spawn` function instead.
    public static func clangAnalyzerSecurityInsecureapiVfork(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_SECURITY_INSECUREAPI_VFORK", value: value)
    }
    /// Check for misuse of the Keychain Services API.
    public static func clangAnalyzerSecurityKeychainApi(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ANALYZER_SECURITY_KEYCHAIN_API", value: value)
    }
    /// Choose a standard or non-standard C++ language dialect. Options include:
    /// - *C++98:* Accept ISO C++ 1998 with amendments, but not GNU extensions. `-std=c++98`
    /// - *GNU++98:* Accept ISO C++ 1998 with amendments and GNU extensions. `-std=gnu++98`
    /// - *C++11:* Accept the ISO C++ 2011 standard with amendments, but not GNU extensions. `-std=c++11`
    /// - *GNU++11:* Accept the ISO C++ 2011 standard with amendments and GNU extensions. `-std=gnu++11`
    /// - *C++14:* Accept the ISO C++ 2014 standard with amendments, but not GNU extensions. `-std=c++14`
    /// - *GNU++14:* Accept the ISO C++ 2014 standard with amendments and GNU extensions. `-std=gnu++14`
    /// - *C++17:* Accept the ISO C++ 2017 standard with amendments, but not GNU extensions. `-std=c++17`
    /// - *GNU++17:* Accept the ISO C++ 2017 standard with amendments and GNU extensions. `-std=gnu++17`
    /// - *Compiler Default:* Tells the compiler to use its default C++ language dialect. This is normally the best choice unless you have specific needs. (Currently equivalent to GNU++98.)
    public static func clangCxxLanguageStandard(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_CXX_LANGUAGE_STANDARD", value: value)
    }
    /// Choose a version of the C++ standard library to use.
    /// - *libstdc++:* A traditional C++ standard library that works with GCC and the LLVM Compiler (default).
    /// - *libc++:* A highly optimized C++ standard library that works only with the LLVM Compiler, and is designed to support new C++11 features.
    public static func clangCxxLibrary(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_CXX_LIBRARY", value: value)
    }
    /// Toggles the amount of debug information emitted when debug symbols are enabled. This can impact the size of the generated debug information, which may matter in some cases for large projects, such as when using LTO.
    public static func clangDebugInformationLevel(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_DEBUG_INFORMATION_LEVEL", value: value)
    }
    /// Enables building with code coverage instrumentation. This is only used when the build has code coverage enabled, which is typically done via the Xcode scheme settings.
    public static func clangEnableCodeCoverage(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ENABLE_CODE_COVERAGE", value: value)
    }
    /// Enables the use of modules for system APIs. System headers are imported as semantic modules instead of raw headers. This can result in faster builds and project indexing.
    public static func clangEnableModules(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ENABLE_MODULES", value: value)
    }
    /// When this setting is enabled, `clang` will use the shared debug info available in `clang` modules and precompiled headers. This results in smaller build artifacts, faster compile times, and more complete debug info. This setting should only be disabled when building static libraries with debug info for distribution.
    public static func clangEnableModuleDebugging(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ENABLE_MODULE_DEBUGGING", value: value)
    }
    /// Compiles reference-counted Objective-C code (when garbage collection is not enabled) to use Automatic Reference Counting. Code compiled using automated reference counting is compatible with other code (such as frameworks) compiled using either manual reference counting (for example, traditional `retain` and `release`messages) or automated reference counting. Using this mode is currently incompatible with compiling code to use Objective-C Garbage Collection.
    public static func clangEnableObjcArc(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ENABLE_OBJC_ARC", value: value)
    }
    /// Compiles Objective-C code to enable weak references for code compiled with manual retain release (MRR) semantics.
    public static func clangEnableObjcWeak(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_ENABLE_OBJC_WEAK", value: value)
    }
    /// When linking a target using Objective-C code, implicitly link in Foundation (and if deploying back to an older OS) a backwards compatibility library to allow newer language features to run on an OS where the runtime support is not natively available. Most targets that use Objective-C should use this, although there are rare cases where a target should opt out of this behavior.
    public static func clangLinkObjcRuntime(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_LINK_OBJC_RUNTIME", value: value)
    }
    /// Add attribute annotations to properties and methods.
    public static func clangMigratorAnnotations(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_MIGRATOR_ANNOTATIONS", value: value)
    }
    /// Infer `instancetype` for method result type instead of `id`.
    public static func clangMigratorInstanceType(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_MIGRATOR_INSTANCE_TYPE", value: value)
    }
    /// Use `NS_ENUM`/`NS_OPTIONS` macros for enumerators.
    public static func clangMigratorNsenumMacros(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_MIGRATOR_NSENUM_MACROS", value: value)
    }
    /// Infer `NS_DESIGNATED_INITIALIZER` for designated initializer methods.
    public static func clangMigratorObjcDesignatedInit(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_MIGRATOR_OBJC_DESIGNATED_INIT", value: value)
    }
    /// Enable migration to modern ObjC literals syntax.
    public static func clangMigratorObjcLiterals(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_MIGRATOR_OBJC_LITERALS", value: value)
    }
    /// Enable migration to modern ObjC subscripting syntax.
    public static func clangMigratorObjcSubscripting(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_MIGRATOR_OBJC_SUBSCRIPTING", value: value)
    }
    /// Choose the atomicity of the inferred properties.
    public static func clangMigratorPropertyAtomicity(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_MIGRATOR_PROPERTY_ATOMICITY", value: value)
    }
    /// Enable migration of setter/getter messages to property-dot syntax.
    public static func clangMigratorPropertyDotSyntax(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_MIGRATOR_PROPERTY_DOT_SYNTAX", value: value)
    }
    /// Infer protocol conformance from the interface methods.
    public static func clangMigratorProtocolConformance(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_MIGRATOR_PROTOCOL_CONFORMANCE", value: value)
    }
    /// Only modify public headers of a target.
    public static func clangMigratorPublicHeadersOnly(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_MIGRATOR_PUBLIC_HEADERS_ONLY", value: value)
    }
    /// Infer readonly properties from getter methods.
    public static func clangMigratorReadonlyProperty(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_MIGRATOR_READONLY_PROPERTY", value: value)
    }
    /// Infer readwrite properties from a getter and setter method.
    public static func clangMigratorReadwriteProperty(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_MIGRATOR_READWRITE_PROPERTY", value: value)
    }
    /// Automatically link SDK frameworks that are referenced using `#import` or `#include`. This feature requires also enabling support for modules.
    public static func clangModulesAutolink(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_MODULES_AUTOLINK", value: value)
    }
    /// The path to the file of the profile data to use when [Use Optimization Profile (CLANG_USE_OPTIMIZATION_PROFILE)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=devb3d935f24) is enabled.
    public static func clangOptimizationProfileFile(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_OPTIMIZATION_PROFILE_FILE", value: value)
    }
    /// The depth the static analyzer uses during the Build action. Use `Deep` to exercise the full power of the analyzer. Use `Shallow` for faster analysis.
    public static func clangStaticAnalyzerMode(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_STATIC_ANALYZER_MODE", value: value)
    }
    /// The depth the static analyzer uses during the Analyze action. Use `Deep` to exercise the full power of the analyzer. Use `Shallow` for faster analysis.
    public static func clangStaticAnalyzerModeOnAnalyzeAction(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_STATIC_ANALYZER_MODE_ON_ANALYZE_ACTION", value: value)
    }
    /// Check for unsigned integer overflow, in addition to checks for signed integer overflow.
    public static func clangUndefinedBehaviorSanitizerInteger(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_UNDEFINED_BEHAVIOR_SANITIZER_INTEGER", value: value)
    }
    /// Check for violations of nullability annotations in function calls, return statements, and assignments.
    public static func clangUndefinedBehaviorSanitizerNullability(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_UNDEFINED_BEHAVIOR_SANITIZER_NULLABILITY", value: value)
    }
    /// When this setting is enabled, `clang` will use the optimization profile collected for a target when building it.
    public static func clangUseOptimizationProfile(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_USE_OPTIMIZATION_PROFILE", value: value)
    }
    /// Warn about assigning integer constants to enum values that are out of the range of the enumerated type.
    public static func clangWarnAssignEnum(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_ASSIGN_ENUM", value: value)
    }
    /// Warn about block captures of implicitly autoreleasing parameters.
    public static func clangWarnBlockCaptureAutoreleasing(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_BLOCK_CAPTURE_AUTORELEASING", value: value)
    }
    /// Warn about implicit conversions to boolean values that are suspicious. For example, writing `if (foo)` where `foo`is the name a function will trigger a warning.
    public static func clangWarnBoolConversion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_BOOL_CONVERSION", value: value)
    }
    /// Warn about suspicious uses of the comma operator.
    public static func clangWarnComma(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_COMMA", value: value)
    }
    /// Warn about implicit conversions of constant values that cause the constant value to change, either through a loss of precision, or entirely in its meaning.
    public static func clangWarnConstantConversion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_CONSTANT_CONVERSION", value: value)
    }
    /// When compiling C++ code using a language standard older than C++11, warn about the use of C++11 extensions.
    public static func clangWarnCxx0xExtensions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_CXX0X_EXTENSIONS", value: value)
    }
    /// Warn if an Objective-C class either subclasses a deprecated class or overrides a method that has been marked deprecated.
    public static func clangWarnDeprecatedObjcImplementations(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_DEPRECATED_OBJC_IMPLEMENTATIONS", value: value)
    }
    /// Warn about direct accesses to the Objective-C `isa` pointer instead of using a runtime API.
    public static func clangWarnDirectObjcIsaUsage(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_DIRECT_OBJC_ISA_USAGE", value: value)
    }
    /// Warns about issues in documentation comments (`doxygen`-style) such as missing or incorrect documentation tags.
    public static func clangWarnDocumentationComments(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_DOCUMENTATION_COMMENTS", value: value)
    }
    /// Warn about loop bodies that are suspiciously empty.
    public static func clangWarnEmptyBody(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_EMPTY_BODY", value: value)
    }
    /// Warn about implicit conversions between different kinds of enum values. For example, this can catch issues when using the wrong enum flag as an argument to a function or method.
    public static func clangWarnEnumConversion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_ENUM_CONVERSION", value: value)
    }
    /// Warn about implicit conversions that turn floating-point numbers into integers.
    public static func clangWarnFloatConversion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_FLOAT_CONVERSION", value: value)
    }
    /// Warn about implicit integer conversions that change the signedness of an integer value.
    public static func clangWarnImplicitSignConversion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_IMPLICIT_SIGN_CONVERSION", value: value)
    }
    /// Warn if all paths through a function call itself.
    public static func clangWarnInfiniteRecursion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_INFINITE_RECURSION", value: value)
    }
    /// Warn about implicit conversions between pointers and integers. For example, this can catch issues when one incorrectly intermixes using `NSNumber*`'s and raw integers.
    public static func clangWarnIntConversion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_INT_CONVERSION", value: value)
    }
    /// Warn about non-literal expressions that evaluate to zero being treated as a null pointer.
    public static func clangWarnNonLiteralNullConversion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_NON_LITERAL_NULL_CONVERSION", value: value)
    }
    /// Warns when a nullable expression is used somewhere it’s not allowed, such as when passed as a `_Nonnull`parameter.
    public static func clangWarnNullableToNonnullConversion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_NULLABLE_TO_NONNULL_CONVERSION", value: value)
    }
    /// Warn about implicit ownership types on Objective-C object references as out parameters. For example, declaring a parameter with type `NSObject**` will produce a warning because the compiler will assume that the out parameter's ownership type is `__autoreleasing`.
    public static func clangWarnObjcExplicitOwnershipType(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_OBJC_EXPLICIT_OWNERSHIP_TYPE", value: value)
    }
    /// Warn about `@property` declarations that are implicitly atomic.
    public static func clangWarnObjcImplicitAtomicProperties(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_OBJC_IMPLICIT_ATOMIC_PROPERTIES", value: value)
    }
    /// Warn about implicit retains of `self` within blocks, which can create a retain-cycle.
    public static func clangWarnObjcImplicitRetainSelf(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF", value: value)
    }
    /// Warn about implicit conversions from Objective-C literals to values of incompatible type.
    public static func clangWarnObjcLiteralConversion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_OBJC_LITERAL_CONVERSION", value: value)
    }
    /// Starting in Xcode 4.4, the Apple LLVM Compiler will implicitly synthesize properties that are not explicitly synthesized using `@synthesize`. This setting warns about such implicit behavior, even though the property is still synthesized. This is essentially a backwards compatibility warning, or for those who wish to continue to explicitly use `@synthesize`.
    public static func clangWarnObjcMissingPropertySynthesis(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_OBJC_MISSING_PROPERTY_SYNTHESIS", value: value)
    }
    /// Warn about repeatedly using a weak reference without assigning the weak reference to a strong reference. This is often symptomatic of a race condition where the weak reference can become `nil` between accesses, resulting in unexpected behavior. Assigning to temporary strong reference ensures the object stays alive during the related accesses.
    public static func clangWarnObjcRepeatedUseOfWeak(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_OBJC_REPEATED_USE_OF_WEAK", value: value)
    }
    /// Warn about classes that unintentionally do not subclass a root class, such as `NSObject`.
    public static func clangWarnObjcRootClass(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_OBJC_ROOT_CLASS", value: value)
    }
    /// Warn about ranged-based for loops.
    public static func clangWarnRangeLoopAnalysis(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_RANGE_LOOP_ANALYSIS", value: value)
    }
    /// Warn about non-prototype declarations.
    public static func clangWarnStrictPrototypes(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_STRICT_PROTOTYPES", value: value)
    }
    /// Warn about various implicit conversions that can lose information or are otherwise suspicious.
    public static func clangWarnSuspiciousImplicitConversion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_SUSPICIOUS_IMPLICIT_CONVERSION", value: value)
    }
    /// Warn about suspicious uses of `std::move`.
    public static func clangWarnSuspiciousMove(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_SUSPICIOUS_MOVE", value: value)
    }
    /// Warn if an API that is newer than the deployment target is used without "if (@available(...))" guards.
    public static func clangWarnUnguardedAvailability(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_UNGUARDED_AVAILABILITY", value: value)
    }
    /// Warns about potentially unreachable code.
    public static func clangWarnUnreachableCode(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN_UNREACHABLE_CODE", value: value)
    }
    /// Warn about using `__bridge` casts when not using ARC, where they have no effect.
    public static func clangWarnArcBridgeCastNonarc(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN__ARC_BRIDGE_CAST_NONARC", value: value)
    }
    /// Warn about declaring the same method more than once within the same `@interface`.
    public static func clangWarnDuplicateMethodMatch(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN__DUPLICATE_METHOD_MATCH", value: value)
    }
    /// Warn about destructors for C++ objects that are called when an application is terminating.
    public static func clangWarnExitTimeDestructors(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_WARN__EXIT_TIME_DESTRUCTORS", value: value)
    }
    /// Enables the use of extended vector instructions. Only used when targeting Intel architectures.
    public static func clangX86VectorInstructions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CLANG_X86_VECTOR_INSTRUCTIONS", value: value)
    }
    /// The path to a file specifying code-signing entitlements.
    public static func codeSignEntitlements(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CODE_SIGN_ENTITLEMENTS", value: value)
    }
    /// The name, also known as the *common name*, of a valid code-signing certificate in a keychain within your keychain path. A missing or invalid certificate will cause a build error.
    public static func codeSignIdentity(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CODE_SIGN_IDENTITY", value: value)
    }
    /// This setting specifies the method used to acquire and locate signing assets. Choose `Automatic` to let Xcode automatically create and update profiles, app IDs, and certificates. Choose `Manual` to create and update these yourself on the developer website.
    public static func codeSignStyle(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CODE_SIGN_STYLE", value: value)
    }
    /// Combines image files at different resolutions into one multi-page TIFF file that is HiDPI compliant for macOS 10.7 and later. Only image files in the same directory and with the same base name and extension are combined. The file names must conform to the naming convention used in HiDPI.
    public static func combineHidpiImages(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "COMBINE_HIDPI_IMAGES", value: value)
    }
    /// Control whether the compiler should emit index data while building.
    public static func compilerIndexStoreEnable(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "COMPILER_INDEX_STORE_ENABLE", value: value)
    }
    /// If enabled, PNG resource files are compressed as they are copied.
    public static func compressPngFiles(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "COMPRESS_PNG_FILES", value: value)
    }
    /// Identifies the build configuration, such as `Debug` or `Release`, that the target uses to generate the product.
    public static func configuration(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CONFIGURATION", value: value)
    }
    /// The base path where build products will be placed during a build for a given configuration. By default, this is set to `$(BUILD_DIR)/$(CONFIGURATION)`.
    public static func configurationBuildDir(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CONFIGURATION_BUILD_DIR", value: value)
    }
    /// The base path where intermediates will be placed during a build for a given configuration. By default, this is set to `$(PROJECT_TEMP_DIR)/$(CONFIGURATION)`.
    public static func configurationTempDir(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CONFIGURATION_TEMP_DIR", value: value)
    }
    /// Specifies the directory inside the generated bundle that contains the product’s files.
    public static func contentsFolderPath(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CONTENTS_FOLDER_PATH", value: value)
    }
    /// Causes the copying of resources to preserve resource forks and Finder info.
    public static func copyingPreservesHfsData(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "COPYING_PRESERVES_HFS_DATA", value: value)
    }
    /// If enabled, headers are run through the `unifdef(1)` tool when copied to the product.
    public static func copyHeadersRunUnifdef(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "COPY_HEADERS_RUN_UNIFDEF", value: value)
    }
    /// Specifies the flags to pass to `unifdef(1)` when invoking that tool to copy headers. This setting has no effect unless [Run unifdef on Product Headers (COPY_HEADERS_RUN_UNIFDEF)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=devc2606cc19) is enabled.
    public static func copyHeadersUnifdefFlags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "COPY_HEADERS_UNIFDEF_FLAGS", value: value)
    }
    /// Specifies whether binary files that are copied during the build, such as in a Copy Bundle Resources or Copy Files build phase, should be stripped of debugging symbols. It does not cause the linked product of a target to be stripped—use [Strip Linked Product (STRIP_INSTALLED_PRODUCT)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev5c0105d2a) for that.
    public static func copyPhaseStrip(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "COPY_PHASE_STRIP", value: value)
    }
    /// The Source-code language to use for generated CoreML model class. By default "Automatic" will analyze your project to determine the correct language. Adjust this setting to explicitly select "Swift" or "Objective-C", or select "None" to disable model class generation.
    public static func coremlCodegenLanguage(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "COREML_CODEGEN_LANGUAGE", value: value)
    }
    /// Generate Swift model classes that are marked with @objc and are descendants of NSObject, in order to be accessible and usable in Objective-C. This setting has no effect if "CoreML Model Class Generation Language" is set to "Objective-C".
    public static func coremlCodegenSwiftGlobalModule(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "COREML_CODEGEN_SWIFT_GLOBAL_MODULE", value: value)
    }
    /// Other flags to pass to the C preprocessor when using the standalone C Preprocessor rule.
    public static func cppOtherPreprocessorFlags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CPP_OTHER_PREPROCESSOR_FLAGS", value: value)
    }
    /// Implicitly include the given file when preprocessing using the standalone C Preprocessor rule. The path given should either be a project relative path or an absolute path.
    public static func cppPrefixHeader(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CPP_PREFIX_HEADER", value: value)
    }
    /// Space-separated list of preprocessor macros of the form `foo` or `foo=bar`. These macros are used when preprocessing using the standalone C Preprocessor rule.
    public static func cppPreprocessorDefinitions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CPP_PREPROCESSOR_DEFINITIONS", value: value)
    }
    /// Enabling this setting will create a section in the product's linked binary containing the processed `Info.plist` file for the target. This setting only applies to command-line tool targets.
    public static func createInfoplistSectionInBinary(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CREATE_INFOPLIST_SECTION_IN_BINARY", value: value)
    }
    /// The name of the active architecture being processed.
    public static func currentArch(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CURRENT_ARCH", value: value)
    }
    /// This setting defines the current version of the project. The value must be a integer or floating point number, such as `57` or `365.8`.
    public static func currentProjectVersion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CURRENT_PROJECT_VERSION", value: value)
    }
    /// The name of the active variant being processed.
    public static func currentVariant(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "CURRENT_VARIANT", value: value)
    }
    /// Activating this setting causes the `-dead_strip` flag to be passed to `ld(1)` via `cc(1)` to turn on dead code stripping.
    public static func deadCodeStripping(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "DEAD_CODE_STRIPPING", value: value)
    }
    /// The type of debug information to produce.
    /// - *DWARF:* Object files and linked products will use DWARF as the debug information format. `dwarf`
    /// - *DWARF with dSYM File:* Object files and linked products will use DWARF as the debug information format, and Xcode will also produce a dSYM file containing the debug information from the individual object files (except that a dSYM file is not needed and will not be created for static library or object file products). `dwarf-with-dsym`
    public static func debugInformationFormat(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "DEBUG_INFORMATION_FORMAT", value: value)
    }
    /// If enabled, the product will be treated as defining its own module. This enables automatic production of LLVM module map files when appropriate, and allows the product to be imported as a module.
    public static func definesModule(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "DEFINES_MODULE", value: value)
    }
    /// If enabled, built products are placed in their installed locations in addition to the built products folder.
    public static func deploymentLocation(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "DEPLOYMENT_LOCATION", value: value)
    }
    /// If enabled, indicates that binaries should be stripped and file mode, owner, and group information should be set to standard values.
    public static func deploymentPostprocessing(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "DEPLOYMENT_POSTPROCESSING", value: value)
    }
    /// Identifies the directory into which derived source files, such as those generated by `lex` and `yacc`, are placed.
    public static func derivedFileDir(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "DERIVED_FILE_DIR", value: value)
    }
    /// The team ID of a development team to use for signing certificates and provisioning profiles.
    public static func developmentTeam(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "DEVELOPMENT_TEAM", value: value)
    }
    /// This option controls the output of the `distill` tool.
    public static func distillLoglevel(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "DISTILL_LOGLEVEL", value: value)
    }
    /// This option controls the mode under which the `distill` tool is run—either it can regenerate its output entirely or it can incrementally edit the existing output.
    public static func distillMode(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "DISTILL_MODE", value: value)
    }
    /// Identifies the directory that contains the bundle’s documentation files.
    public static func documentationFolderPath(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "DOCUMENTATION_FOLDER_PATH", value: value)
    }
    /// The path at which all products will be rooted when performing an install build. For instance, to install your products on the system proper, set this path to `/`. Defaults to `/tmp/$(PROJECT_NAME).dst` to prevent a *test*install build from accidentally overwriting valid and needed data in the ultimate install path.
    /// Typically this path is not set per target, but is provided as an option on the command line when performing an `xcodebuild install`. It may also be set in a build configuration in special circumstances.
    public static func dstroot(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "DSTROOT", value: value)
    }
    /// Space-separated list of additional flags to pass to the `dtrace` compiler. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular `dtrace` flag.
    public static func dtraceOtherFlags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "DTRACE_OTHER_FLAGS", value: value)
    }
    /// Determines the compatibility version of the resulting library, bundle, or framework binary. See [Dynamic Library Design Guidelines](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/DynamicLibraries/100-Articles/DynamicLibraryDesignGuidelines.html#//apple_ref/doc/uid/TP40002013-SW19) in [Dynamic Library Programming Topics](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/DynamicLibraries/000-Introduction/Introduction.html) for details on assigning version numbers of dynamic libraries.
    public static func dylibCompatibilityVersion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "DYLIB_COMPATIBILITY_VERSION", value: value)
    }
    /// This setting defines the current version of any framework built by the project. As with [Current Project Version (CURRENT_PROJECT_VERSION)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=devd516a860b), the value must be an integer or floating point number, such as `57` or `365.8`. By default, it is set to `$(CURRENT_PROJECT_VERSION)`. See [Dynamic Library Design Guidelines](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/DynamicLibraries/100-Articles/DynamicLibraryDesignGuidelines.html#//apple_ref/doc/uid/TP40002013-SW19) in [Dynamic Library Programming Topics](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/DynamicLibraries/000-Introduction/Introduction.html) for details on assigning version numbers of dynamic libraries.
    public static func dylibCurrentVersion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "DYLIB_CURRENT_VERSION", value: value)
    }
    /// Sets the base value for the internal `install path` (`LC_ID_DYLIB`) in a dynamic library. This will be combined with the [EXECUTABLE_PATH](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev5a0a1bb80) to form the full install path. Setting [Dynamic Library Install Name (LD_DYLIB_INSTALL_NAME)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=devbb966571b) directly will override this setting. This setting defaults to the target's [Installation Directory (INSTALL_PATH)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=devabd541cd5). It is ignored when building any product other than a dynamic library.
    public static func dylibInstallNameBase(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "DYLIB_INSTALL_NAME_BASE", value: value)
    }
    /// Embed all the built asset packs inside the product bundle. Since this negates the performance benefits of the On Demand Resources feature, it is only useful for testing purposes when it isn't practical to use an asset pack server.
    public static func embedAssetPacksInProductBundle(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "EMBED_ASSET_PACKS_IN_PRODUCT_BUNDLE", value: value)
    }
    /// Activating this setting indicates that the target or project should generate bitcode during compilation for platforms and architectures that support it. For Archive builds, bitcode will be generated in the linked binary for submission to the App Store. For other builds, the compiler and linker will check whether the code complies with the requirements for bitcode generation, but will not generate actual bitcode.
    public static func enableBitcode(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ENABLE_BITCODE", value: value)
    }
    /// Specifies whether to automatically track dependencies on included header files.
    public static func enableHeaderDependencies(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ENABLE_HEADER_DEPENDENCIES", value: value)
    }
    /// Enabled the incremental `distill` option in the asset catalog compiler. This feature is experimental and should only be enabled with caution.
    public static func enableIncrementalDistill(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ENABLE_INCREMENTAL_DISTILL", value: value)
    }
    /// Controls whether assertion logic provided by `NSAssert` is included in the preprocessed source code or is elided during preprocessing. Disabling assertions can improve code performance.
    public static func enableNsAssertions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ENABLE_NS_ASSERTIONS", value: value)
    }
    /// Omit inapplicable resources when building for a single device. For example, when building for a device with a Retina display, exclude 1x resources.
    public static func enableOnlyActiveResources(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ENABLE_ONLY_ACTIVE_RESOURCES", value: value)
    }
    /// If enabled, tagged assets—files and asset catalog entries—are built into asset packs based on their combination of tags. Untagged resources are treated normally.
    public static func enableOnDemandResources(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ENABLE_ON_DEMAND_RESOURCES", value: value)
    }
    /// Controls whether `objc_msgSend` calls must be cast to the appropriate function pointer type before being called.
    public static func enableStrictObjcMsgsend(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ENABLE_STRICT_OBJC_MSGSEND", value: value)
    }
    /// When this setting is activated, the product will be built with options appropriate for running automated tests, such as making private interfaces accessible to the tests. This may result in tests running slower than they would without testability enabled.
    public static func enableTestability(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ENABLE_TESTABILITY", value: value)
    }
    /// This is a list of `fnmatch()`-style patterns of file or directory names to exclude when performing a recursive search. By default, this is set to `*.nib *.lproj *.framework *.gch *.xcode (*) .DS_Store CVS .svn .git .hg`. Normally, if you override this value you should include the default values via the `$(inherited)` macro.
    public static func excludedRecursiveSearchPathSubdirectories(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "EXCLUDED_RECURSIVE_SEARCH_PATH_SUBDIRECTORIES", value: value)
    }
    /// A list of patterns (as defined by `fnmatch(3)`) specifying the names of source files to explicitly *exclude* when processing the sources build phase (see also `INCLUDED_SOURCE_FILE_NAMES`). This setting can be used to define complex filters for which files from the phase should be built in response to other build settings; for example, a value of `*.$(CURRENT_ARCH).c` could serve to exclude particular files based on the architecture being built.
    public static func excludedSourceFileNames(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "EXCLUDED_SOURCE_FILE_NAMES", value: value)
    }
    /// Identifies the directory that contains additional binary files.
    public static func executablesFolderPath(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "EXECUTABLES_FOLDER_PATH", value: value)
    }
    /// This is the extension used for the executable product generated by the target, which has a default value based on the product type.
    public static func executableExtension(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "EXECUTABLE_EXTENSION", value: value)
    }
    /// Identifies the directory that contains the binary the target builds.
    public static func executableFolderPath(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "EXECUTABLE_FOLDER_PATH", value: value)
    }
    /// Specifies the name of the binary the target produces.
    public static func executableName(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "EXECUTABLE_NAME", value: value)
    }
    /// Specifies the path to the binary the target produces within its bundle.
    public static func executablePath(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "EXECUTABLE_PATH", value: value)
    }
    /// The prefix used for the executable product generated by the target, which has a default value based on the product type.
    public static func executablePrefix(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "EXECUTABLE_PREFIX", value: value)
    }
    /// Specifies the suffix of the binary filename, including the character that separates the extension from the rest of the bundle name.
    public static func executableSuffix(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "EXECUTABLE_SUFFIX", value: value)
    }
    /// This is a project-relative path to a file that lists the symbols to export. See `ld -exported_symbols_list` for details on exporting symbols.
    public static func exportedSymbolsFile(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "EXPORTED_SYMBOLS_FILE", value: value)
    }
    /// Specifies the directory that contains the product’s embedded frameworks.
    public static func frameworksFolderPath(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "FRAMEWORKS_FOLDER_PATH", value: value)
    }
    /// This is a list of paths to folders containing frameworks to be searched by the compiler for both included or imported header files when compiling C, Objective-C, C++, or Objective-C++, and by the linker for frameworks used by the product. Paths are delimited by whitespace, so any paths with spaces in them must be properly quoted.
    public static func frameworkSearchPaths(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "FRAMEWORK_SEARCH_PATHS", value: value)
    }
    /// Framework bundles are versioned by having contents in subfolders of a version folder that has links to the current version and its contents.
    public static func frameworkVersion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "FRAMEWORK_VERSION", value: value)
    }
    /// Enabling this setting causes `char` to be unsigned by default, disabling it causes `char` to be signed by default.
    public static func gccCharIsUnsignedChar(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_CHAR_IS_UNSIGNED_CHAR", value: value)
    }
    /// Enable the CodeWarrior/Microsoft syntax for inline assembly code in addition to the standard GCC syntax.
    public static func gccCwAsmSyntax(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_CW_ASM_SYNTAX", value: value)
    }
    /// Choose a standard or non-standard C language dialect.
    /// - *ANSI C:* Accept ISO C90 and ISO C++, turning off GNU extensions that are incompatible. `-ansi` Incompatible GNU extensions include the `asm`, `inline`, and `typeof` keywords (but not the equivalent `__asm__`, `__inline__`, and `__typeof__` forms), and the `//` syntax for comments. This setting also enables trigraphs.
    /// - *C89:* Accept ISO C90 (1990), but not GNU extensions. `-std=c89`
    /// - *GNU89:* Accept ISO C90 and GNU extensions. `-std=gnu89`
    /// - *C99:* Accept ISO C99 (1999), but not GNU extensions. `-std=c99`
    /// - *GNU99:* Accept ISO C99 and GNU extensions. `-std=gnu99`
    /// - *C11:* Accept ISO C11 (2011), but not GNU extensions. `-std=c11`
    /// - *GNU11:* Accept ISO C11 and GNU extensions. `-std=gnu11`
    /// - *Compiler Default:* Tells the compiler to use its default C language dialect. This is normally the best choice unless you have specific needs. (Currently equivalent to GNU99.)
    public static func gccCLanguageStandard(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_C_LANGUAGE_STANDARD", value: value)
    }
    /// Faster function calls for applications. Not appropriate for shared libraries, which need to be position-independent.
    public static func gccDynamicNoPic(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_DYNAMIC_NO_PIC", value: value)
    }
    /// Controls whether `asm`, `inline`, and `typeof` are treated as keywords or whether they can be used as identifiers.
    public static func gccEnableAsmKeyword(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_ENABLE_ASM_KEYWORD", value: value)
    }
    /// Controls whether builtin functions that do not begin with `__builtin_` as prefix are recognized.
    /// GCC normally generates special code to handle certain builtin functions more efficiently; for instance, calls to `alloca` may become single instructions that adjust the stack directly, and calls to `memcpy` may become inline copy loops. The resulting code is often both smaller and faster, but since the function calls no longer appear as such, you cannot set a breakpoint on those calls, nor can you change the behavior of the functions by linking with a different library. In addition, when a function is recognized as a builtin function, GCC may use information about that function to warn about problems with calls to that function, or to generate more efficient code, even if the resulting code still contains calls to that function. For example, warnings are given with `-Wformat` for bad calls to `printf`, when `printf` is built in, and `strlen` is known not to modify global memory.
    public static func gccEnableBuiltinFunctions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_ENABLE_BUILTIN_FUNCTIONS", value: value)
    }
    /// Enable C++ exception handling. Generates extra code needed to propagate exceptions. For some targets, this implies GCC will generate frame unwind information for all functions, which can produce significant data size overhead, although it does not affect execution. If you do not specify this option, GCC will enable it by default for languages like C++ that normally require exception handling, and disable it for languages like C that do not normally require it. However, you may need to enable this option when compiling C code that needs to interoperate properly with exception handlers written in C++.
    public static func gccEnableCppExceptions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_ENABLE_CPP_EXCEPTIONS", value: value)
    }
    /// Enable generation of information about every class with virtual functions for use by the C++ runtime type identification features (`dynamic_cast` and `typeid`). If you don't use those parts of the language, you can save some space by using this flag. Note that exception handling uses the same information, but it will generate it as needed.
    public static func gccEnableCppRtti(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_ENABLE_CPP_RTTI", value: value)
    }
    /// Enable exception handling. Generates extra code needed to propagate exceptions. For some targets, this implies GCC will generate frame unwind information for all functions, which can produce significant data size overhead, although it does not affect execution. If you do not specify this option, GCC will enable it by default for languages like C++ and Objective-C that normally require exception handling, and disable it for languages like C that do not normally require it. However, you may need to enable this option when compiling C code that needs to interoperate properly with exception handlers written in other languages. You may also wish to disable this option if you are compiling older programs that don't use exception handling.
    public static func gccEnableExceptions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_ENABLE_EXCEPTIONS", value: value)
    }
    /// Generate output containing library calls for floating point.
    public static func gccEnableFloatingPointLibraryCalls(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_ENABLE_FLOATING_POINT_LIBRARY_CALLS", value: value)
    }
    /// Activating this setting enables kernel development mode.
    public static func gccEnableKernelDevelopment(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_ENABLE_KERNEL_DEVELOPMENT", value: value)
    }
    /// This setting enables `@try`/`@catch`/`@throw` syntax for handling exceptions in Objective-C code. Only applies to Objective-C.
    public static func gccEnableObjcExceptions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_ENABLE_OBJC_EXCEPTIONS", value: value)
    }
    /// Recognize and construct Pascal-style string literals. Its use in new code is discouraged.
    /// Pascal string literals take the form `"\pstring"` . The special escape sequence `\p` denotes the Pascal length byte for the string, and will be replaced at compile time with the number of characters that follow. The `\p` may only appear at the beginning of a string literal, and may not appear in wide string literals or as an integral constant.
    public static func gccEnablePascalStrings(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_ENABLE_PASCAL_STRINGS", value: value)
    }
    /// Specifies whether the binary uses the builtin functions that provide access to the SSE3 extensions to the IA-32 architecture.
    public static func gccEnableSse3Extensions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_ENABLE_SSE3_EXTENSIONS", value: value)
    }
    /// Specifies whether the binary uses the builtin functions that provide access to the SSE4.1 extensions to the IA-32 architecture.
    public static func gccEnableSse41Extensions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_ENABLE_SSE41_EXTENSIONS", value: value)
    }
    /// Specifies whether the binary uses the builtin functions that provide access to the SSE4.2 extensions to the IA-32 architecture.
    public static func gccEnableSse42Extensions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_ENABLE_SSE42_EXTENSIONS", value: value)
    }
    /// Controls whether or not trigraphs are permitted in the source code.
    public static func gccEnableTrigraphs(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_ENABLE_TRIGRAPHS", value: value)
    }
    /// Enables some floating point optimizations that are not IEEE754-compliant, but which usually work. Programs that require strict IEEE compliance may not work with this option.
    public static func gccFastMath(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_FAST_MATH", value: value)
    }
    /// Enables or disables generation of debug symbols. When debug symbols are enabled, the level of detail can be controlled by the [Debug Information Format (DEBUG_INFORMATION_FORMAT)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev881878d77) setting.
    public static func gccGenerateDebuggingSymbols(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_GENERATE_DEBUGGING_SYMBOLS", value: value)
    }
    /// Activating this setting causes a `notes` file to be produced that the `gcov` code-coverage utility can use to show program coverage.
    public static func gccGenerateTestCoverageFiles(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_GENERATE_TEST_COVERAGE_FILES", value: value)
    }
    /// Enabling this option will enable increased sharing of precompiled headers among targets that share the same prefix header and precompiled header directory.
    /// Xcode distinguishes between precompiled header (PCH) files by generating a hash value based on the command-line options to the compiler used to create the PCH. Enabling this option will exclude certain compiler options from that hash. Presently this option will exclude search path options (`-I`, `-iquote`, `-isystem`, `-F`, `-L`) from the hash.
    /// Enabling increased sharing of PCH files carries some risk—if two targets use the same prefix header but have different include paths that cause the prefix header to include different files when they are precompiled, then subtle problems may result because one target will use a PCH that was built using files included by the other target. In this case, this option must be turned off in order to enforce correctness.
    public static func gccIncreasePrecompiledHeaderSharing(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_INCREASE_PRECOMPILED_HEADER_SHARING", value: value)
    }
    /// When enabled, out-of-line copies of inline methods are declared `private extern`.
    public static func gccInlinesArePrivateExtern(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_INLINES_ARE_PRIVATE_EXTERN", value: value)
    }
    /// Specifies whether to compile each source file according to its file type, or whether to treat all source files in the target as if they are of a specific language.
    public static func gccInputFiletype(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_INPUT_FILETYPE", value: value)
    }
    /// Activating this setting indicates that code should be added so program flow arcs are instrumented.
    public static func gccInstrumentProgramFlowArcs(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_INSTRUMENT_PROGRAM_FLOW_ARCS", value: value)
    }
    /// Enabling this option allows linking with the shared libraries. This is the default for most product types.
    public static func gccLinkWithDynamicLibraries(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_LINK_WITH_DYNAMIC_LIBRARIES", value: value)
    }
    /// In C, allocate even uninitialized global variables in the data section of the object file, rather than generating them as common blocks. This has the effect that if the same variable is declared (without `extern`) in two different compilations, you will get an error when you link them.
    public static func gccNoCommonBlocks(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_NO_COMMON_BLOCKS", value: value)
    }
    /// Specifies the degree to which the generated code is optimized for speed and binary size.
    /// - *None:* Do not optimize. `-O0`
    /// With this setting, the compiler's goal is to reduce the cost of compilation and to make debugging produce the expected results. Statements are independent—if you stop the program with a breakpoint between statements, you can then assign a new value to any variable or change the program counter to any other statement in the function and get exactly the results you would expect from the source code.
    /// - *Fast:* Optimizing compilation takes somewhat more time, and a lot more memory for a large function. `-O1`
    /// With this setting, the compiler tries to reduce code size and execution time, without performing any optimizations that take a great deal of compilation time. In Apple's compiler, strict aliasing, block reordering, and inter-block scheduling are disabled by default when optimizing.
    /// - *Faster:* The compiler performs nearly all supported optimizations that do not involve a space-speed tradeoff. `-O2`
    /// With this setting, the compiler does not perform loop unrolling or function inlining, or register renaming. As compared to the `Fast` setting, this setting increases both compilation time and the performance of the generated code.
    /// - *Fastest:* Turns on all optimizations specified by the `Faster` setting and also turns on function inlining and register renaming options. This setting may result in a larger binary. `-O3`
    /// - *Fastest, Smallest:* Optimize for size. This setting enables all `Faster` optimizations that do not typically increase code size. It also performs further optimizations designed to reduce code size. `-Os`
    /// - *Fastest, Aggressive Optimizations:* This setting enables `Fastest` but also enables aggressive optimizations that may break strict standards compliance but should work well on well-behaved code. `-Ofast`
    public static func gccOptimizationLevel(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_OPTIMIZATION_LEVEL", value: value)
    }
    /// Generates a precompiled header for the prefix header, which should reduce overall build times.
    /// Precompiling the prefix header will be most effective if the contents of the prefix header or any file it includes change rarely. If the contents of the prefix header or any file it includes change frequently, there may be a negative impact to overall build time.
    public static func gccPrecompilePrefixHeader(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_PRECOMPILE_PREFIX_HEADER", value: value)
    }
    /// Implicitly include the named header. The path given should either be a project relative path or an absolute path.
    public static func gccPrefixHeader(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_PREFIX_HEADER", value: value)
    }
    /// Space-separated list of preprocessor macros of the form `foo` or `foo=bar`.
    public static func gccPreprocessorDefinitions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_PREPROCESSOR_DEFINITIONS", value: value)
    }
    /// Space-separated list of preprocessor macros of the form `foo` or `foo=bar`. These macros are not used when precompiling a prefix header file.
    public static func gccPreprocessorDefinitionsNotUsedInPrecomps(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_PREPROCESSOR_DEFINITIONS_NOT_USED_IN_PRECOMPS", value: value)
    }
    /// Reuse string literals.
    public static func gccReuseStrings(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_REUSE_STRINGS", value: value)
    }
    /// Make enums only as large as needed for the range of possible values.
    /// This setting generates code that may not binary compatible with code generated without this setting or with macOS frameworks.
    public static func gccShortEnums(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_SHORT_ENUMS", value: value)
    }
    /// Optimize code by making more aggressive assumptions about whether pointers can point to the same objects as other pointers. Programs that use pointers a lot may benefit from this, but programs that don't strictly follow the ISO C rules about the type with which an object may be accessed may behave unexpectedly.
    public static func gccStrictAliasing(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_STRICT_ALIASING", value: value)
    }
    /// When enabled, all symbols are declared `private extern` unless explicitly marked to be exported using `__attribute__((visibility("default")))` in code. If not enabled, all symbols are exported unless explicitly marked as `private extern`. See [Controlling Symbol Visibility](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/CppRuntimeEnv/Articles/SymbolVisibility.html#//apple_ref/doc/uid/TP40001670-CJBGBHEJ) in [C++ Runtime Environment Programming Guide](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/CppRuntimeEnv/CPPRuntimeEnv.html).
    public static func gccSymbolsPrivateExtern(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_SYMBOLS_PRIVATE_EXTERN", value: value)
    }
    /// Emits extra code to use the routines specified in the C++ ABI for thread-safe initialization of local statics. You can disable this option to reduce code size slightly in code that doesn't need to be thread-safe.
    public static func gccThreadsafeStatics(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_THREADSAFE_STATICS", value: value)
    }
    /// Causes warnings about missing function prototypes to be treated as errors. Only applies to C and Objective-C.
    public static func gccTreatImplicitFunctionDeclarationsAsErrors(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_TREAT_IMPLICIT_FUNCTION_DECLARATIONS_AS_ERRORS", value: value)
    }
    /// Enabling this option causes warnings about incompatible pointer types to be treated as errors.
    public static func gccTreatIncompatiblePointerTypeWarningsAsErrors(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_TREAT_INCOMPATIBLE_POINTER_TYPE_WARNINGS_AS_ERRORS", value: value)
    }
    /// Enabling this option causes all warnings to be treated as errors.
    public static func gccTreatWarningsAsErrors(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_TREAT_WARNINGS_AS_ERRORS", value: value)
    }
    /// Unrolls loops. Unrolling makes the code larger, but may make it faster by reducing the number of branches executed.
    public static func gccUnrollLoops(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_UNROLL_LOOPS", value: value)
    }
    /// Controls whether the standard system directories are searched for header files. When disabled, only the directories you have specified with `-I` options (and the directory of the current file, if appropriate) are searched.
    public static func gccUseStandardIncludeSearching(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_USE_STANDARD_INCLUDE_SEARCHING", value: value)
    }
    /// The compiler to use for C, C++, and Objective-C.
    public static func gccVersion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_VERSION", value: value)
    }
    /// Warn if a value is implicitly converted from a 64-bit type to a 32-bit type. This is a subset of the warnings provided by -Wconversion.
    public static func gccWarn64To32BitConversion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_64_TO_32_BIT_CONVERSION", value: value)
    }
    /// Warn about the use of deprecated functions, variables, and types (as indicated by the `deprecated` attribute).
    public static func gccWarnAboutDeprecatedFunctions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS", value: value)
    }
    /// Unchecking this setting will suppress warnings from applying the `offsetof` macro to a non-POD type. According to the 1998 ISO C++ standard, applying `offsetof` to a non-POD type is undefined. In existing C++ implementations, however, `offsetof` typically gives meaningful results even when applied to certain kinds of non-POD types, such as a simple struct that fails to be a POD type only by virtue of having a constructor. This flag is for users who are aware that they are writing nonportable code and who have deliberately chosen to ignore the warning about it.
    /// The restrictions on `offsetof` may be relaxed in a future version of the C++ standard.
    public static func gccWarnAboutInvalidOffsetofMacro(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_ABOUT_INVALID_OFFSETOF_MACRO", value: value)
    }
    /// Warn if a structure's initializer has some fields missing. For example, the following code would cause such a warning because `x.h` is implicitly zero:
    /// `struct s { int f, g, h; };``struct s x = { 3, 4 };`
    /// This option does not warn about designated initializers, so the following modification would not trigger a warning:
    /// `struct s { int f, g, h; };``struct s x = { .f = 3, .g = 4 };`
    public static func gccWarnAboutMissingFieldInitializers(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_ABOUT_MISSING_FIELD_INITIALIZERS", value: value)
    }
    /// Warn when a source file does not end with a newline.
    public static func gccWarnAboutMissingNewline(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_ABOUT_MISSING_NEWLINE", value: value)
    }
    /// Causes warnings to be emitted about missing prototypes.
    public static func gccWarnAboutMissingPrototypes(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_ABOUT_MISSING_PROTOTYPES", value: value)
    }
    /// Warn when pointers passed via arguments or assigned to a variable differ in sign.
    public static func gccWarnAboutPointerSignedness(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_ABOUT_POINTER_SIGNEDNESS", value: value)
    }
    /// Causes warnings to be emitted when a function with a defined return type (not `void`) contains a return statement without a return-value. Also emits a warning when a function is defined without specifying a return type.
    public static func gccWarnAboutReturnType(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_ABOUT_RETURN_TYPE", value: value)
    }
    /// Warn if methods required by a protocol are not implemented in the class adopting it. Only applies to Objective-C.
    public static func gccWarnAllowIncompleteProtocol(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_ALLOW_INCOMPLETE_PROTOCOL", value: value)
    }
    /// Warn whenever a switch statement has an index of enumeral type and lacks a case for one or more of the named codes of that enumeration. The presence of a default label prevents this warning. Case labels outside the enumeration range also provoke warnings when this option is used.
    public static func gccWarnCheckSwitchStatements(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_CHECK_SWITCH_STATEMENTS", value: value)
    }
    /// Warn about four-char literals (for example, macOS-style `OSTypes`: `'APPL'`).
    public static func gccWarnFourCharacterConstants(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_FOUR_CHARACTER_CONSTANTS", value: value)
    }
    /// Warn when a function declaration hides virtual functions from a base class.
    /// For example, in the following example, the `A` class version of `f()` is hidden in `B`.
    /// `struct A {``  virtual void f();``};``struct B: public A {``  void f(int);``};`
    /// As a result, the following code will fail to compile.
    /// `B* b;``b-&gt;f();`
    /// This setting only applies to C++ and Objective-C++ sources.
    public static func gccWarnHiddenVirtualFunctions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_HIDDEN_VIRTUAL_FUNCTIONS", value: value)
    }
    /// Inhibit all warning messages.
    public static func gccWarnInhibitAllWarnings(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_INHIBIT_ALL_WARNINGS", value: value)
    }
    /// Warn if an aggregate or union initializer is not fully bracketed. In the following example, the initializer for `a` is not fully bracketed, but the initializer for `b` is fully bracketed.
    /// `int a`2``2` = { 0, 1, 2, 3 };``int b`2``2` = { { 0, 1 }, { 2, 3 } };`
    public static func gccWarnInitializerNotFullyBracketed(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_INITIALIZER_NOT_FULLY_BRACKETED", value: value)
    }
    /// Warn if parentheses are omitted in certain contexts, such as when there is an assignment in a context where a truth value is expected, or when operators are nested whose precedence causes confusion. Also, warn about constructions where there may be confusion as to which `if` statement an `else` branch belongs. For example:
    /// `{``  if (a)``    if (b)``      foo ();``  else``    bar ();``}`
    /// In C, every `else` branch belongs to the innermost possible `if` statement, which in the example above is `if (b)`. This is often not what the programmer expects, as illustrated by indentation used in the example above. This build setting causes GCC to issue a warning when there is the potential for this confusion. To eliminate the warning, add explicit braces around the innermost `if` statement so there is no way the `else` could belong to the enclosing `if`. For example:
    /// `{``  if (a)``    {``      if (b)``        foo ();``      else``        bar ();``    }``}`
    public static func gccWarnMissingParentheses(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_MISSING_PARENTHESES", value: value)
    }
    /// Warn when a class declares an nonvirtual destructor that should probably be virtual, because it looks like the class will be used polymorphically. This is only active for C++ or Objective-C++ sources.
    public static func gccWarnNonVirtualDestructor(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_NON_VIRTUAL_DESTRUCTOR", value: value)
    }
    /// Issue all the warnings demanded by strict ISO C and ISO C++; reject all programs that use forbidden extensions, and some other programs that do not follow ISO C and ISO C++. For ISO C, follows the version of the ISO C standard specified by any `-std` option used.
    public static func gccWarnPedantic(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_PEDANTIC", value: value)
    }
    /// Warn whenever a local variable shadows another local variable, parameter or global variable or whenever a builtin function is shadowed.
    public static func gccWarnShadow(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_SHADOW", value: value)
    }
    /// Warn when a comparison between signed and unsigned values could produce an incorrect result when the signed value is converted to unsigned.
    public static func gccWarnSignCompare(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_SIGN_COMPARE", value: value)
    }
    /// Warn if multiple methods with differing argument and/or return types are found for a given selector when attempting to send a message using this selector to a receiver of type `id` or `Class`. When this setting is disabled, the compiler will omit such warnings if any differences found are confined to types that share the same size and alignment.
    public static func gccWarnStrictSelectorMatch(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_STRICT_SELECTOR_MATCH", value: value)
    }
    /// Check calls to `printf` and `scanf` to make sure that the arguments supplied have types appropriate to the format string specified, and that the conversions specified in the format string make sense.
    public static func gccWarnTypecheckCallsToPrintf(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_TYPECHECK_CALLS_TO_PRINTF", value: value)
    }
    /// Warn if a `@selector(...)` expression referring to an undeclared selector is found. A selector is considered undeclared if no method with that name has been declared before the `@selector(...)` expression, either explicitly in an `@interface` or `@protocol` declaration, or implicitly in an `@implementation` section. This option always performs its checks as soon as a `@selector(...)` expression is found, while `-Wselector` only performs its checks in the final stage of compilation. This also enforces the coding style convention that methods and selectors must be declared before being used.
    public static func gccWarnUndeclaredSelector(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_UNDECLARED_SELECTOR", value: value)
    }
    /// Warn if a variable might be clobbered by a `setjmp` call or if an automatic variable is used without prior initialization.
    /// The compiler may not detect all cases where an automatic variable is initialized or all usage patterns that may lead to use prior to initialization. You can toggle between the normal uninitialized value checking or the more aggressive (conservative) checking, which finds more issues but the checking is much stricter.
    public static func gccWarnUninitializedAutos(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_UNINITIALIZED_AUTOS", value: value)
    }
    /// Warn when a `#pragma` directive is encountered that is not understood by GCC. If this command line option is used, warnings will even be issued for unknown pragmas in system header files. This is not the case if the warnings were only enabled by the `-Wall` command-line option.
    public static func gccWarnUnknownPragmas(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_UNKNOWN_PRAGMAS", value: value)
    }
    /// Warn whenever a static function is declared but not defined or a noninline static function is unused.
    public static func gccWarnUnusedFunction(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_UNUSED_FUNCTION", value: value)
    }
    /// Warn whenever a label is declared but not used.
    public static func gccWarnUnusedLabel(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_UNUSED_LABEL", value: value)
    }
    /// Warn whenever a function parameter is unused aside from its declaration.
    public static func gccWarnUnusedParameter(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_UNUSED_PARAMETER", value: value)
    }
    /// Warn whenever a statement computes a result that is explicitly not used.
    public static func gccWarnUnusedValue(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_UNUSED_VALUE", value: value)
    }
    /// Warn whenever a local variable or nonconstant static variable is unused aside from its declaration.
    public static func gccWarnUnusedVariable(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GCC_WARN_UNUSED_VARIABLE", value: value)
    }
    /// Activating this setting will cause the object files built by a target to be prelinked using `ld -r` into a single object file, and that object file will then be linked into the final product. This is useful to force the linker to resolve symbols and link the object files into a single module before building a static library. Also, a separate set of link flags can be applied to the prelink allowing additional control over, for instance, exported symbols.
    public static func generateMasterObjectFile(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GENERATE_MASTER_OBJECT_FILE", value: value)
    }
    /// Forces the `PkgInfo` file to be written to wrapped products even if this file is not expected.
    public static func generatePkginfoFile(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GENERATE_PKGINFO_FILE", value: value)
    }
    /// Activating this setting will cause the compiler and linker to generate profiling code. For example, GCC will generate code suitable for use with `gprof(1)`.
    public static func generateProfilingCode(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GENERATE_PROFILING_CODE", value: value)
    }
    /// Enables the generation of Text-Based stubs for dynamic libraries and frameworks.
    public static func generateTextBasedStubs(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "GENERATE_TEXT_BASED_STUBS", value: value)
    }
    /// Specifies whether the header map contains a name/path entry for every header in the target being built.
    public static func headermapIncludesFlatEntriesForTargetBeingBuilt(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "HEADERMAP_INCLUDES_FLAT_ENTRIES_FOR_TARGET_BEING_BUILT", value: value)
    }
    /// Specifies whether the header map contains a framework-name/path entry for every header in the target being built, including targets that do not build frameworks.
    public static func headermapIncludesFrameworkEntriesForAllProductTypes(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "HEADERMAP_INCLUDES_FRAMEWORK_ENTRIES_FOR_ALL_PRODUCT_TYPES", value: value)
    }
    /// Specifies whether the header map contains a name/path entry for every header in the project, regardless of the headers’ target membership.
    public static func headermapIncludesProjectHeaders(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "HEADERMAP_INCLUDES_PROJECT_HEADERS", value: value)
    }
    /// This is a list of paths to folders to be searched by the compiler for included or imported header files when compiling C, Objective-C, C++, or Objective-C++. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted.
    public static func headerSearchPaths(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "HEADER_SEARCH_PATHS", value: value)
    }
    /// Instructs the XIB compiler to add custom fonts to the application's `Info.plist`, which will cause the fonts to activate upon application launch.
    public static func ibcCompilerAutoActivateCustomFonts(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "IBC_COMPILER_AUTO_ACTIVATE_CUSTOM_FONTS", value: value)
    }
    /// Show errors encountered during the compilation of XIB files.
    public static func ibcErrors(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "IBC_ERRORS", value: value)
    }
    /// If enabled, compile XIB files into flattened (non-wrapper) NIB files. After flattening, the resulting NIB is more compact but no longer editable by Interface Builder. When this option is disabled, the resulting NIB file remains editable in Interface Builder.
    public static func ibcFlattenNibs(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "IBC_FLATTEN_NIBS", value: value)
    }
    /// Defines the module name for Swift classes referenced without a specific module name.
    public static func ibcModule(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "IBC_MODULE", value: value)
    }
    /// Show notices encountered during the compilation of XIB files.
    public static func ibcNotices(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "IBC_NOTICES", value: value)
    }
    /// A list of additional flags to pass to the Interface Builder Compiler. Use this setting if Xcode does not already provide UI for a particular Interface Builder Compiler flag.
    public static func ibcOtherFlags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "IBC_OTHER_FLAGS", value: value)
    }
    /// Instructs Interface Builder to load frameworks and Interface Builder plugins from the specified directory. Setting this value to `$(BUILD_DIR)/$(CONFIGURATION)$(EFFECTIVE_PLATFORM_NAME)` will ensure that Interface Builder will load frameworks and plug-ins from the built products directory of the current build configuration.
    public static func ibcOverridingPluginsAndFrameworksDir(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "IBC_OVERRIDING_PLUGINS_AND_FRAMEWORKS_DIR", value: value)
    }
    /// A list of paths to Interface Builder plugins to load when compiling XIB files.
    public static func ibcPlugins(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "IBC_PLUGINS", value: value)
    }
    /// A list of paths to be searched for Interface Builder plug-ins to load when compiling XIB files.
    public static func ibcPluginSearchPaths(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "IBC_PLUGIN_SEARCH_PATHS", value: value)
    }
    /// Strips an Interface Builder NIB to reduce its size for deployment. The resulting NIB is more compact but no longer editable by Interface Builder. When this option is disabled, the resulting NIB file remains editable by Interface Builder.
    public static func ibcStripNibs(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "IBC_STRIP_NIBS", value: value)
    }
    /// Show warnings encountered during the compilation of XIB files.
    public static func ibcWarnings(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "IBC_WARNINGS", value: value)
    }
    /// Instructs the Storyboard compiler to add custom fonts to the application's `Info.plist` that will cause the fonts to activate upon application launch.
    public static func ibscCompilerAutoActivateCustomFonts(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "IBSC_COMPILER_AUTO_ACTIVATE_CUSTOM_FONTS", value: value)
    }
    /// Show errors encountered during the compilation of Storyboard files.
    public static func ibscErrors(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "IBSC_ERRORS", value: value)
    }
    /// Compiles a Storyboard file into flattened (non-wrapper) Storyboard file. After flattening, the resulting Storyboard is more compact but no longer editable by Interface Builder. When this option is disabled, the resulting Storyboard file remains editable in Interface Builder.
    public static func ibscFlattenNibs(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "IBSC_FLATTEN_NIBS", value: value)
    }
    /// Defines the module name for Swift classes referenced without a specific module name.
    public static func ibscModule(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "IBSC_MODULE", value: value)
    }
    /// Show notices encountered during the compilation of Storyboard files.
    public static func ibscNotices(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "IBSC_NOTICES", value: value)
    }
    /// A list of additional flags to pass to the Interface Builder Compiler. Use this setting if Xcode does not already provide UI for a particular Interface Builder Compiler flag.
    public static func ibscOtherFlags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "IBSC_OTHER_FLAGS", value: value)
    }
    /// Strips an editable Interface Builder storyboardc file to reduce its size for deployment. The resulting storyboardc is more compact but no longer editable by Interface Builder. When this option is disabled, the resulting storyboardc file remains editable by Interface Builder.
    public static func ibscStripNibs(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "IBSC_STRIP_NIBS", value: value)
    }
    /// Show warnings encountered during the compilation of Storyboard files.
    public static func ibscWarnings(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "IBSC_WARNINGS", value: value)
    }
    /// This is a list of `fnmatch()`-style patterns of file or directory names to include when performing a recursive search. By default, this is empty and is only customized when you want to provide exceptions to the list of filename patterns provided in [Sub-Directories to Exclude in Recursive Searches (EXCLUDED_RECURSIVE_SEARCH_PATH_SUBDIRECTORIES)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev454fb3164).
    public static func includedRecursiveSearchPathSubdirectories(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INCLUDED_RECURSIVE_SEARCH_PATH_SUBDIRECTORIES", value: value)
    }
    /// A list of patterns (as defined by `fnmatch(3)`) specifying the names of source files to explicitly *include* when processing the sources build phase. This setting is only useful when combined with `EXCLUDED_SOURCE_FILE_NAMES`, and can be used to define complex filters for which files from the phase should be built in response to other build settings.
    public static func includedSourceFileNames(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INCLUDED_SOURCE_FILE_NAMES", value: value)
    }
    /// Expand build settings in the `Info.plist` file.
    public static func infoplistExpandBuildSettings(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INFOPLIST_EXPAND_BUILD_SETTINGS", value: value)
    }
    /// The project-relative path to the property list file that contains the `Info.plist` information used by bundles. For details on information property list files, see [Information Property List Files](https://developer.apple.com/library/content/documentation/MacOSX/Conceptual/BPRuntimeConfig/Articles/ConfigFiles.html#//apple_ref/doc/uid/20002091-CJBJIEDH) in [Runtime Configuration Guidelines](https://developer.apple.com/library/content/documentation/MacOSX/Conceptual/BPRuntimeConfig/000-Introduction/introduction.html).
    public static func infoplistFile(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INFOPLIST_FILE", value: value)
    }
    /// Other flags to pass to the C preprocessor when preprocessing the `Info.plist` file.
    public static func infoplistOtherPreprocessorFlags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INFOPLIST_OTHER_PREPROCESSOR_FLAGS", value: value)
    }
    /// Specifies the output encoding for the output `Info.plist`. The output encodings can be `binary` or `XML`. By default, the output encoding will be unchanged from the input.
    public static func infoplistOutputFormat(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INFOPLIST_OUTPUT_FORMAT", value: value)
    }
    /// Specifies the path to the bundle’s information property list file.
    public static func infoplistPath(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INFOPLIST_PATH", value: value)
    }
    /// Implicitly include the given file when preprocessing the `Info.plist` file. The path given should either be a project relative path or an absolute path.
    public static func infoplistPrefixHeader(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INFOPLIST_PREFIX_HEADER", value: value)
    }
    /// Preprocess the `Info.plist` file using the C Preprocessor.
    public static func infoplistPreprocess(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INFOPLIST_PREPROCESS", value: value)
    }
    /// Space-separated list of preprocessor macros of the form `foo` or `foo=bar`. These macros are used when preprocessing the `Info.plist` file.
    public static func infoplistPreprocessorDefinitions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INFOPLIST_PREPROCESSOR_DEFINITIONS", value: value)
    }
    /// Specifies the file that contains the bundle’s localized strings file.
    public static func infostringsPath(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INFOSTRINGS_PATH", value: value)
    }
    /// This is the name of the routine to use for initialization.
    public static func initRoutine(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INIT_ROUTINE", value: value)
    }
    /// Enables private framework inlining for Text-Based Stubs.
    public static func inlinePrivateFrameworks(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INLINE_PRIVATE_FRAMEWORKS", value: value)
    }
    /// Specifies whether the target’s Copy Files build phases are executed in `installhdr` builds.
    public static func installhdrsCopyPhase(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INSTALLHDRS_COPY_PHASE", value: value)
    }
    /// Specifies whether the target’s Run Script build phases are executed in `installhdr` builds. See [Active Build Action (ACTION)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev9697f81df) for details on `installhdr` builds.
    public static func installhdrsScriptPhase(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INSTALLHDRS_SCRIPT_PHASE", value: value)
    }
    /// Identifies the directory in the developer’s filesystem into which the *installed* product is placed.
    public static func installDir(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INSTALL_DIR", value: value)
    }
    /// The group name or `gid` for installed products.
    public static func installGroup(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INSTALL_GROUP", value: value)
    }
    /// Permissions used for installed product files.
    public static func installModeFlag(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INSTALL_MODE_FLAG", value: value)
    }
    /// The owner name or `uid` for installed products.
    public static func installOwner(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INSTALL_OWNER", value: value)
    }
    /// The directory in which to install the build products. This path is prepended by the [Installation Build Products Location (DSTROOT)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev438d356c2).
    public static func installPath(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "INSTALL_PATH", value: value)
    }
    /// Activating this setting will preserve private external symbols, rather than turning them into static symbols. This setting is also respected when performing a single-object prelink.
    public static func keepPrivateExterns(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "KEEP_PRIVATE_EXTERNS", value: value)
    }
    /// This setting defines the path to which the linker should emit information about what files it used as inputs and generated. Xcode uses this information for its dependency tracking. Setting the value of this setting to empty will disable passing this option to the linker.
    public static func ldDependencyInfoFile(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "LD_DEPENDENCY_INFO_FILE", value: value)
    }
    /// Sets an internal `install path` (`LC_ID_DYLIB`) in a dynamic library. Any clients linked against the library will record that path as the way `dyld` should locate this library. If this option is not specified, then the `-o` path will be used. This setting is ignored when building any product other than a dynamic library. See [Dynamic Library Programming Topics](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/DynamicLibraries/000-Introduction/Introduction.html).
    public static func ldDylibInstallName(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "LD_DYLIB_INSTALL_NAME", value: value)
    }
    /// Activating this setting will cause the linker to write a map file to disk, which details all symbols and their addresses in the output image. The path to the map file is defined by the [Path to Link Map File (LD_MAP_FILE_PATH)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev0f5aa9fe1) setting.
    public static func ldGenerateMapFile(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "LD_GENERATE_MAP_FILE", value: value)
    }
    /// This setting defines the path to the map file written by the linker when the [Write Link Map File (LD_GENERATE_MAP_FILE)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=devc1145996b) setting is activated. By default, a separate file will be written for each architecture and build variant, and these will be generated in the Intermediates directory for the target whose product is being linked.
    public static func ldMapFilePath(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "LD_MAP_FILE_PATH", value: value)
    }
    /// Activating this setting will prevent Xcode from building a main executable that is position independent (PIE). When targeting macOS 10.7 or later, PIE is the default for main executables, so activating this setting will change that behavior. When targeting OS X 10.6 or earlier, or when building for i386, PIE is not the default, so activating this setting does nothing.
    /// You cannot create a PIE from `.o` files compiled with `-mdynamic-no-pic`. Using PIE means the codegen is less optimal, but the address randomization adds some security.
    public static func ldNoPie(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "LD_NO_PIE", value: value)
    }
    /// This setting controls whether arguments to the linker should be quoted using `-Xlinker`. By default, Xcode invokes the linker by invoking the driver of the compiler used to build the source files in the target, and passing `-Xlinker` to quote arguments will cause the compiler driver to pass them through to the linker (rather than trying to evaluate them within the driver). By default, this setting is enabled. Disabling it will cause Xcode to not use `-Xlinker` to pass arguments to the linker. Disabling this setting is useful if the target has instructed Xcode to use an alternate linker (for example, by setting the `LD` setting to the path to another linker) and that alternate linker does not recognize `-Xlinker`.
    public static func ldQuoteLinkerArgumentsForCompilerDriver(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "LD_QUOTE_LINKER_ARGUMENTS_FOR_COMPILER_DRIVER", value: value)
    }
    /// This is a list of paths to be added to the `runpath` search path list for the image being created. At runtime, `dyld`uses the `runpath` when searching for dylibs whose load path begins with `@rpath/`. See [Dynamic Library Programming Topics](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/DynamicLibraries/000-Introduction/Introduction.html).
    public static func ldRunpathSearchPaths(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "LD_RUNPATH_SEARCH_PATHS", value: value)
    }
    /// Space-separated list of additional flags to pass to `lex`. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a `lex` flag.
    public static func lexflags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "LEXFLAGS", value: value)
    }
    /// Enabling this option causes `lex` to generate a case-insensitive scanner. The case of letters given in the `lex` input patterns will be ignored, and tokens in the input will be matched regardless of case. The matched text given in `yytext` will have the preserved case (for example, it will not be folded).
    public static func lexCaseInsensitiveScanner(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "LEX_CASE_INSENSITIVE_SCANNER", value: value)
    }
    /// Enabling this option instructs `lex` to insert `#line` directives so error messages in the actions will be correctly located with respect to either the original `lex` input file (if the errors are due to code in the input file), or `lex.yy.c` (if the errors are `lex`'s fault). This option is enabled by default; disabling it passes a flag to `lex` to not insert `#line` directives.
    public static func lexInsertLineDirectives(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "LEX_INSERT_LINE_DIRECTIVES", value: value)
    }
    /// Enabling this option causes the default rule (that unmatched scanner input is echoed to `stdout`) to be suppressed. If the scanner encounters input that does not match any of its rules, it aborts with an error. This option is useful for finding holes in a scanner's rule set.
    public static func lexSuppressDefaultRule(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "LEX_SUPPRESS_DEFAULT_RULE", value: value)
    }
    /// Enabling this option causes `lex` to suppress its warning messages.
    public static func lexSuppressWarnings(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "LEX_SUPPRESS_WARNINGS", value: value)
    }
    /// This is a list of paths to folders to be searched by the linker for libraries used by the product. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted.
    public static func librarySearchPaths(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "LIBRARY_SEARCH_PATHS", value: value)
    }
    /// Activating this setting causes the linker to display mangled names for C++ symbols. Normally, this is not recommended, but turning it on can help to diagnose and solve C++ link errors.
    public static func linkerDisplaysMangledNames(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "LINKER_DISPLAYS_MANGLED_NAMES", value: value)
    }
    /// When this setting is enabled, the compiler driver will automatically pass its standard libraries to the linker to use during linking. If desired, this flag can be used to disable linking with the standard libraries, and then individual libraries can be passed as [Other Linker Flags (OTHER_LDFLAGS)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev4fc8ef90a).
    public static func linkWithStandardLibraries(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "LINK_WITH_STANDARD_LIBRARIES", value: value)
    }
    /// Enabling this setting allows optimization across file boundaries during linking.
    /// - *No:* Disabled. Do not use link-time optimization.
    /// - *Monolithic Link-Time Optimization:* This mode performs monolithic link-time optimization of binaries, combining all executable code into a single unit and running aggressive compiler optimizations.
    /// - *Incremental Link-Time Optimization:* This mode performs partitioned link-time optimization of binaries, inlining between compilation units and running aggressive compiler optimizations on each unit in parallel. This enables fast incremental builds and uses less memory than Monolithic LTO.
    public static func llvmLto(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "LLVM_LTO", value: value)
    }
    /// This setting determines the format of the produced binary and how it can be linked when building other binaries. For information on binary types, see [Building Mach-O Files](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/MachOTopics/1-Articles/building_files.html#//apple_ref/doc/uid/TP40001828-SW1) in [Mach-O Programming Topics](https://developer.apple.com/library/content/documentation/DeveloperTools/Conceptual/MachOTopics/0-Introduction/introduction.html).
    /// - *Executable:* Executables and standalone binaries and cannot be linked. `mh_execute`
    /// - *Dynamic Library:* Dynamic libraries are linked at build time and loaded automatically when needed. `mh_dylib`
    /// - *Bundle:* Bundle libraries are loaded explicitly at run time. `mh_bundle`
    /// - *Static Library:* Static libraries are linked at build time and loaded at execution time. `staticlib`
    /// - *Relocatable Object File:* Object files are single-module files that are linked at build time. `mh_object`
    public static func machOType(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MACH_O_TYPE", value: value)
    }
    /// Code will load on this and later versions of macOS. Framework APIs that are unavailable in earlier versions will be weak-linked; your code should check for `null` function pointers or specific system versions before calling newer APIs.
    public static func macosxDeploymentTarget(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MACOSX_DEPLOYMENT_TARGET", value: value)
    }
    /// Compile `.xcmappingmodel` files into `.cdm` without reporting warnings.
    public static func mapcNoWarnings(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MAPC_NO_WARNINGS", value: value)
    }
    /// This is the project-relative path to the LLVM module map file that defines the module structure for the compiler. If empty, it will be automatically generated for appropriate products when [Defines Module (DEFINES_MODULE)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev82471c743) is enabled.
    public static func modulemapFile(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MODULEMAP_FILE", value: value)
    }
    /// This is the project-relative path to the LLVM module map file that defines the module structure for private headers.
    public static func modulemapPrivateFile(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MODULEMAP_PRIVATE_FILE", value: value)
    }
    /// Absolute path of folder in which compiler stores its cached modules—this cache is a performance improvement.
    public static func moduleCacheDir(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MODULE_CACHE_DIR", value: value)
    }
    /// This is the identifier of the kernel module listed in the generated stub. This is only used when building kernel extensions.
    public static func moduleName(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MODULE_NAME", value: value)
    }
    /// This defines the name of the kernel module start routine. This is only used when building kernel extensions.
    public static func moduleStart(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MODULE_START", value: value)
    }
    /// This defines the name of the kernel module stop routine. This is only used when building kernel extensions.
    public static func moduleStop(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MODULE_STOP", value: value)
    }
    /// This is the version of the kernel module listed in the generated stub. This is only used when building kernel extensions.
    public static func moduleVersion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MODULE_VERSION", value: value)
    }
    /// Suppress managed object model compiler (`momc`) warnings for delete rules during the compilation of `.xcdatamodel(d)` files.
    public static func momcNoDeleteRuleWarnings(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MOMC_NO_DELETE_RULE_WARNINGS", value: value)
    }
    /// Suppress managed object model compiler (`momc`) warnings from output on missing inverse relationships during the compilation of `.xcdatamodel(d)` files
    public static func momcNoInverseRelationshipWarnings(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MOMC_NO_INVERSE_RELATIONSHIP_WARNINGS", value: value)
    }
    /// Suppress managed object model compiler (`momc`) warnings from output on entities with more than 100 properties during the compilation of `.xcdatamodel(d)` files.
    public static func momcNoMaxPropertyCountWarnings(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MOMC_NO_MAX_PROPERTY_COUNT_WARNINGS", value: value)
    }
    /// Suppress managed object model compiler (`momc`) warnings from output during the compilation of `.xcdatamodel(d)` files
    public static func momcNoWarnings(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MOMC_NO_WARNINGS", value: value)
    }
    /// Suppress managed object model compiler (`momc`) warnings from output on transient inverse relationships during the compilation of `.xcdatamodel(d)` files. This is only intended to be used on 10.4.x created models that compiled properly in 10.4.x before the error was introduced in 10.5
    public static func momcSuppressInverseTransientError(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MOMC_SUPPRESS_INVERSE_TRANSIENT_ERROR", value: value)
    }
    /// Space-separated list of metal linker flags
    public static func mtllinkerFlags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MTLLINKER_FLAGS", value: value)
    }
    /// Space-separated list of compiler flags
    public static func mtlCompilerFlags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MTL_COMPILER_FLAGS", value: value)
    }
    /// Produce debugging information. This information is required for shader profiling.
    public static func mtlEnableDebugInfo(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MTL_ENABLE_DEBUG_INFO", value: value)
    }
    /// Enable optimizations for floating-point arithmetic that may violate the IEEE 754 standard and disable the high precision variant of math functions for single and half precision floating-point.
    public static func mtlFastMath(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MTL_FAST_MATH", value: value)
    }
    /// This is a list of paths to folders to be searched by the compiler for included or imported header files when compiling Metal. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted. `MTL_HEADER_SEARCH_PATHS, -I`
    public static func mtlHeaderSearchPaths(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MTL_HEADER_SEARCH_PATHS", value: value)
    }
    /// Enabling this option causes all warnings to be ignored.  `MTL_IGNORE_WARNINGS, -W`
    public static func mtlIgnoreWarnings(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MTL_IGNORE_WARNINGS", value: value)
    }
    /// Determine the language revision to use. A value for this option must be provided.
    public static func mtlLanguageRevision(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MTL_LANGUAGE_REVISION", value: value)
    }
    /// Optimization Level.
    public static func mtlOptimizationLevel(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MTL_OPTIMIZATION_LEVEL", value: value)
    }
    /// Space-separated list of preprocessor macros of the form "foo" or "foo=bar".
    public static func mtlPreprocessorDefinitions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MTL_PREPROCESSOR_DEFINITIONS", value: value)
    }
    /// Enabling this option causes all warnings to be treated as errors.  `MTL_TREAT_WARNINGS_AS_ERRORS, -Werror`
    public static func mtlTreatWarningsAsErrors(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "MTL_TREAT_WARNINGS_AS_ERRORS", value: value)
    }
    /// Space-separated list of additional flags to pass to the `nasm` assembler. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular `nasm` flag.
    public static func nasmOtherFlags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "NASM_OTHER_FLAGS", value: value)
    }
    /// Specifies a file to be preincluded, before the main source file starts to be processed.
    public static func nasmPreincludeFile(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "NASM_PREINCLUDE_FILE", value: value)
    }
    /// Identifies the architecture on which the build is being performed.
    public static func nativeArch(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "NATIVE_ARCH", value: value)
    }
    /// Partially identifies the directory into which variant object files are placed. The complete specification is computed using the variants of this build setting.
    public static func objectFileDir(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OBJECT_FILE_DIR", value: value)
    }
    /// The path where intermediate files will be placed during a build. Intermediate files include generated sources, object files, etc. Shell script build phases can place and access files here, as well. Typically this path is not set per target, but is set per project or per user. By default, this is set to `$(PROJECT_DIR)/build`.
    public static func objroot(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OBJROOT", value: value)
    }
    /// If enabled, only the active architecture is built.
    public static func onlyActiveArch(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ONLY_ACTIVE_ARCH", value: value)
    }
    /// Defined a set of initial On Demand Resources tags to be downloaded and installed with your application.
    public static func onDemandResourcesInitialInstallTags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ON_DEMAND_RESOURCES_INITIAL_INSTALL_TAGS", value: value)
    }
    /// Once your app is installed, this defined a set of On Demand Resources tags that should be downloaded. These tags are downloaded after the initial installation of your application, and will be downloaded in the order the tags provided in the list from first to last.
    public static func onDemandResourcesPrefetchOrder(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ON_DEMAND_RESOURCES_PREFETCH_ORDER", value: value)
    }
    /// A list of the architectures for which the product will be built. This is usually set to a predefined build setting provided by the platform.
    public static func openclArchs(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OPENCL_ARCHS", value: value)
    }
    /// Auto-vectorizes the `OpenCL` kernels for the CPU. This setting takes effect only for the CPU. This makes it possible to write a single kernel that is portable and performant across CPUs and GPUs.
    public static func openclAutoVectorizeEnable(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OPENCL_AUTO_VECTORIZE_ENABLE", value: value)
    }
    /// The `OpenCL` C compiler version supported by the platform.
    public static func openclCompilerVersion(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OPENCL_COMPILER_VERSION", value: value)
    }
    /// This option controls how single precision and double precision denormalized numbers are handled. If specified as a build option, the single precision denormalized numbers may be flushed to zero; double precision denormalized numbers may also be flushed to zero if the optional extension for double precision is supported. This is intended to be a performance hint and the `OpenCL` compiler can choose not to flush denorms to zero if the device supports single precision (or double precision) denormalized numbers.
    /// This option is ignored for single precision numbers if the device does not support single precision denormalized numbers, for example, `CL_FP_DENORM` bit is not set in `CL_DEVICE_SINGLE_FP_CONFIG`.
    /// This option is ignored for double precision numbers if the device does not support double precision or if it does support double precision but not double precision denormalized numbers, for example, `CL_FP_DENORM` bit is not set in `CL_DEVICE_DOUBLE_FP_CONFIG`.
    /// This flag only applies for scalar and vector single precision floating-point variables and computations on these floating-point variables inside a program. It does not apply to reading from or writing to image objects.
    public static func openclDenormsAreZero(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OPENCL_DENORMS_ARE_ZERO", value: value)
    }
    /// Treat double precision floating-point expression as a single precision floating-point expression. This option is available for GPUs only.
    public static func openclDoubleAsSingle(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OPENCL_DOUBLE_AS_SINGLE", value: value)
    }
    /// This allows optimizations for floating-point arithmetic that may violate the IEEE 754 standard and the `OpenCL`numerical compliance requirements defined in in section 7.4 for single-precision floating-point, section 9.3.9 for double-precision floating-point, and edge case behavior in section 7.5 of the `OpenCL` 1.1 specification.
    /// This is intended to be a performance optimization.
    /// This option causes the preprocessor macro `__FAST_RELAXED_MATH__` to be defined in the `OpenCL` program.
    public static func openclFastRelaxedMath(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OPENCL_FAST_RELAXED_MATH", value: value)
    }
    /// Allow `a * b + c` to be replaced by a `mad` instruction. The `mad` computes `a * b + c` with reduced accuracy. For example, some `OpenCL` devices implement `mad` as truncate the result of `a * b` before adding it to `c`.
    /// This is intended to be a performance optimization.
    public static func openclMadEnable(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OPENCL_MAD_ENABLE", value: value)
    }
    /// - *None:* Do not optimize. `-O0`
    /// With this setting, the compiler's goal is to reduce the cost of compilation and to make debugging produce the expected results. Statements are independent: if you stop the program with a breakpoint between statements, you can then assign a new value to any variable or change the program counter to any other statement in the function and get exactly the results you would expect from the source code.
    /// - *Fast:* Optimizing compilation takes somewhat more time, and a lot more memory for a large function. `-O, -O1`
    /// With this setting, the compiler tries to reduce code size and execution time, without performing any optimizations that take a great deal of compilation time. In Apple's compiler, strict aliasing, block reordering, and inter-block scheduling are disabled by default when optimizing.
    /// - *Faster:* The compiler performs nearly all supported optimizations that do not involve a space-speed tradeoff. `-O2`
    /// With this setting, the compiler does not perform loop unrolling or function inlining, or register renaming. As compared to the `Fast` setting, this setting increases both compilation time and the performance of the generated code.
    /// - *Fastest:* Turns on all optimizations specified by the `Faster` setting and also turns on function inlining and register renaming options. This setting may result in a larger binary. `-O3`
    /// - *Fastest, smallest:* Optimize for size. This setting enables all `Faster` optimizations that do not typically increase code size. It also performs further optimizations designed to reduce code size. `-Os`
    public static func openclOptimizationLevel(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OPENCL_OPTIMIZATION_LEVEL", value: value)
    }
    /// Space-separated list of additional flags to pass to the compiler. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular compiler flag.
    public static func openclOtherBcFlags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OPENCL_OTHER_BC_FLAGS", value: value)
    }
    /// Space-separated list of preprocessor macros of the form `foo` or `foo=bar`.
    public static func openclPreprocessorDefinitions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OPENCL_PREPROCESSOR_DEFINITIONS", value: value)
    }
    /// The path to a file that alters the order in which functions and data are laid out.
    /// For each section in the output file, any symbol in that section that are specified in the order file is moved to the start of its section and laid out in the same order as in the order file. Order files are text files with one symbol name per line. Lines starting with a `#` are comments. A symbol name may be optionally preceded with its object file leafname and a colon (for example, `foo.o:_foo`). This is useful for static functions/data that occur in multiple files. A symbol name may also be optionally preceded with the architecture (for example, `ppc:_foo` or `ppc:foo.o:_foo`). This enables you to have one order file that works for multiple architectures. Literal C-strings may be ordered by quoting the string in the order file (for example, `"Hello, world\n"`).
    /// Generally you should not specify an order file in Debug or Development configurations, as this will make the linked binary less readable to the debugger. Use them only in Release or Deployment configurations.
    public static func orderFile(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "ORDER_FILE", value: value)
    }
    /// Saves the output script in execute-only form; the script can be run, but cannot be opened in Script Editor or Xcode. With this option turned off, a user may see the original script source by opening the script.
    public static func osacompileExecuteOnly(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OSACOMPILE_EXECUTE_ONLY", value: value)
    }
    /// Space-separated list of additional flags to pass to the compiler for C and Objective-C files. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular C or Objective-C compiler flag.
    public static func otherCflags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OTHER_CFLAGS", value: value)
    }
    /// A list of additional options to pass to `codesign(1)`.
    public static func otherCodeSignFlags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OTHER_CODE_SIGN_FLAGS", value: value)
    }
    /// Space-separated list of additional flags to pass to the compiler for C++ and Objective-C++ files. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a C++ or Objective-C++ compiler flag.
    public static func otherCplusplusflags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OTHER_CPLUSPLUSFLAGS", value: value)
    }
    /// Options defined in this setting are passed to invocations of the linker.
    public static func otherLdflags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OTHER_LDFLAGS", value: value)
    }
    /// Options defined in this setting are passed to all invocations of the archive librarian, which is used to generate static libraries.
    public static func otherLibtoolflags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OTHER_LIBTOOLFLAGS", value: value)
    }
    /// Space-separated list of additional flags to pass to `mig`. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a `mig` flag.
    public static func otherMigflags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OTHER_MIGFLAGS", value: value)
    }
    /// Space-separated list of additional flags to pass to `osacompile`. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular `osacompile` flag.
    public static func otherOsacompileflags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OTHER_OSACOMPILEFLAGS", value: value)
    }
    /// Space-separated list of additional flags to pass to the `Rez` compiler. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a particular `Rez` flag.
    public static func otherRezflags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OTHER_REZFLAGS", value: value)
    }
    /// A list of additional flags to pass to the Swift compiler.
    public static func otherSwiftFlags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OTHER_SWIFT_FLAGS", value: value)
    }
    /// Options defined in this setting are passed to invocations of the `Text-Based InstallAPI` tool.
    public static func otherTapiFlags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "OTHER_TAPI_FLAGS", value: value)
    }
    /// Uniform type identifier. Identifies the type of the product the target builds. Some products may be made up of a single binary or archive. Others may comprise several files, which are grouped under a single directory. These container directories are known as *bundles*.
    public static func packageType(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "PACKAGE_TYPE", value: value)
    }
    /// Specifies the output encoding for property list files (`.plist`). The output encodings can be `binary` or `XML`. By default, the output encoding will be unchanged from the input.
    public static func plistFileOutputFormat(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "PLIST_FILE_OUTPUT_FORMAT", value: value)
    }
    /// Specifies the directory that contains the product’s plugins.
    public static func pluginsFolderPath(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "PLUGINS_FOLDER_PATH", value: value)
    }
    /// This setting allows for better control of sharing precompiled prefix header files between projects. By default, Xcode assumes that the prefix header file may include header files from the build directory if the build directory is outside of the project directory. Xcode cannot determine this ahead of time since other projects may not have been built into the shared build directory at the time the information is needed.
    /// If your prefix file never includes files from the build directory you may set this to `NO` to improve sharing of precompiled headers. If the prefix does use files from a build directory that is inside your project directory, you may set this to `YES` to avoid unintended sharing that may result in build failures.
    public static func precompsIncludeHeadersFromBuiltProductsDir(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "PRECOMPS_INCLUDE_HEADERS_FROM_BUILT_PRODUCTS_DIR", value: value)
    }
    /// Additional flags to pass when performing a single-object prelink.
    public static func prelinkFlags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "PRELINK_FLAGS", value: value)
    }
    /// Additional libraries to pass when performing a single-object prelink.
    public static func prelinkLibs(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "PRELINK_LIBS", value: value)
    }
    /// Activating this setting, in combination with the [Dead Code Stripping (DEAD_CODE_STRIPPING)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev9ed8cb7ad) (`-dead_strip`) option, causes the `-no_dead_strip_inits_and_terms` flag to be passed to `ld(1)` via `cc(1)` to disable dead code stripping for initialization and termination routines. This option should not be used without the aforementioned [Dead Code Stripping (DEAD_CODE_STRIPPING)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev9ed8cb7ad) option.
    public static func preserveDeadCodeInitsAndTerms(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "PRESERVE_DEAD_CODE_INITS_AND_TERMS", value: value)
    }
    /// The location to copy the private headers to during building, relative to the built products folder.
    public static func privateHeadersFolderPath(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "PRIVATE_HEADERS_FOLDER_PATH", value: value)
    }
    /// A string that uniquely identifies the bundle. The string should be in reverse DNS format using only alphanumeric characters (`A-Z`, `a-z`, `0-9`), the dot (`.`), and the hyphen (`-`). This value is used as the `CFBundleIdentifier` in the `Info.plist` of the built bundle.
    public static func productBundleIdentifier(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "PRODUCT_BUNDLE_IDENTIFIER", value: value)
    }
    /// Path to a file specifying additional requirements for a product archive.
    public static func productDefinitionPlist(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "PRODUCT_DEFINITION_PLIST", value: value)
    }
    /// The name to use for the source code module constructed for this target, and which will be used to import the module in implementation source files. Must be a valid identifier.
    public static func productModuleName(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "PRODUCT_MODULE_NAME", value: value)
    }
    /// This is the basename of the product generated by the target.
    public static func productName(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "PRODUCT_NAME", value: value)
    }
    /// The name of the current project.
    public static func projectName(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "PROJECT_NAME", value: value)
    }
    /// Identifies the directory in which the project’s intermediate build files are placed. This directory is shared between all the targets defined by the project. Run Script build phases should generate intermediate build files in the directory identified by [DERIVED_FILE_DIR](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=devcdbd943f2), not the location this build setting specifies.
    public static func projectTempDir(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "PROJECT_TEMP_DIR", value: value)
    }
    /// The UUID of a valid provisioning profile. A missing or invalid profile will cause a build error.
    /// This build setting is deprecated. Use [Provisioning Profile (PROVISIONING_PROFILE_SPECIFIER)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=devb5b06a8dd) instead.
    public static func provisioningProfile(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "PROVISIONING_PROFILE", value: value)
    }
    /// Must contain a profile name (or UUID). A missing or invalid profile will cause a build error. Use in conjunction with [Development Team (DEVELOPMENT_TEAM)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev186481df2) to fully specify provisioning profile.
    public static func provisioningProfileSpecifier(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "PROVISIONING_PROFILE_SPECIFIER", value: value)
    }
    /// The location to copy the public headers to during building, relative to the built products folder.
    public static func publicHeadersFolderPath(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "PUBLIC_HEADERS_FOLDER_PATH", value: value)
    }
    /// List of framework names that should have their symbols be reexported from the built library.
    public static func reexportedFrameworkNames(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "REEXPORTED_FRAMEWORK_NAMES", value: value)
    }
    /// List of library names that should have their symbols be reexported from the built library.
    public static func reexportedLibraryNames(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "REEXPORTED_LIBRARY_NAMES", value: value)
    }
    /// List of library paths that should have their symbols be reexported from the built library.
    public static func reexportedLibraryPaths(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "REEXPORTED_LIBRARY_PATHS", value: value)
    }
    /// Specifies whether to remove `CVS` directories from bundle resources when they are copied.
    public static func removeCvsFromResources(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "REMOVE_CVS_FROM_RESOURCES", value: value)
    }
    /// Specifies whether to remove `.git` directories from bundle resources when they are copied.
    public static func removeGitFromResources(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "REMOVE_GIT_FROM_RESOURCES", value: value)
    }
    /// Specifies whether to remove `.hg` directories from bundle resources when they are copied.
    public static func removeHgFromResources(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "REMOVE_HG_FROM_RESOURCES", value: value)
    }
    /// Specifies whether to remove `SVN` directories from bundle resources when they are copied.
    public static func removeSvnFromResources(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "REMOVE_SVN_FROM_RESOURCES", value: value)
    }
    /// Determines whether `ResMerger` treats binary input files as data-fork hosted or resource-fork hosted, or whether it automatically examines each input file.
    public static func resmergerSourcesFork(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "RESMERGER_SOURCES_FORK", value: value)
    }
    /// Overrides [Targeted Device Family (TARGETED_DEVICE_FAMILY)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev2f2f7890b) when the resource copying needs to differ from the default targeted device.
    public static func resourcesTargetedDeviceFamily(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "RESOURCES_TARGETED_DEVICE_FAMILY", value: value)
    }
    /// Specifies whether to keep copies of unstripped binaries available.
    public static func retainRawBinaries(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "RETAIN_RAW_BINARIES", value: value)
    }
    /// Specifies the directory in which the collected Resource Manager resources generated by `ResMerger` are stored before they are added to the product.
    public static func rezCollectorDir(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "REZ_COLLECTOR_DIR", value: value)
    }
    /// Specifies the directory in which compiled Resource Manager resources generated by `Rez` are stored before they are collected using `ResMerger`.
    public static func rezObjectsDir(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "REZ_OBJECTS_DIR", value: value)
    }
    /// Implicitly include the named file on the command line for each `Rez` file compiled. The path given should either be a project relative path or an absolute path.
    public static func rezPrefixFile(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "REZ_PREFIX_FILE", value: value)
    }
    /// These strings will be defined when compiling resource manager resources.
    public static func rezPreprocessorDefinitions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "REZ_PREPROCESSOR_DEFINITIONS", value: value)
    }
    /// These strings will be undefined when compiling resource manager resources.
    public static func rezPreprocessorUndefinitions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "REZ_PREPROCESSOR_UNDEFINITIONS", value: value)
    }
    /// Enables aliases to be unresolved or conditionally resolved. The default is to resolve aliases always.
    public static func rezResolveAliases(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "REZ_RESOLVE_ALIASES", value: value)
    }
    /// Enabling this option causes the resource map output to be read-only.
    public static func rezResourceMapReadOnly(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "REZ_RESOURCE_MAP_READ_ONLY", value: value)
    }
    /// Enables the recognition of a specific 2-byte character script identifier to use when compiling resource manager resources. This allows for 2-byte characters in strings to be handled as indivisible entities. The default language is Roman, which specifies 1-byte character sets.
    public static func rezScriptType(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "REZ_SCRIPT_TYPE", value: value)
    }
    /// This is a list of paths to search for files with resource manager resources. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted.
    public static func rezSearchPaths(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "REZ_SEARCH_PATHS", value: value)
    }
    /// Enabling this option causes version and progress information to be written when compiling resource manager resources.
    public static func rezShowDebugOutput(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "REZ_SHOW_DEBUG_OUTPUT", value: value)
    }
    /// Enabling this option causes warnings about redeclared resource types to be suppressed.
    public static func rezSuppressRedeclaredResourceTypeWarnings(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "REZ_SUPPRESS_REDECLARED_RESOURCE_TYPE_WARNINGS", value: value)
    }
    /// Activating this setting will cause Xcode to run the `Clang` static analysis tool on qualifying source files during every build.
    public static func runClangStaticAnalyzer(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "RUN_CLANG_STATIC_ANALYZER", value: value)
    }
    /// Activating this setting will cause all source files to be scanned for includes (for example, of header files) when computing the dependency graph, in which case if an included file is changed then the including file will be rebuilt next time a target containing it is built. Normally only certain types of files, such as C-language source files, are scanned.
    /// This setting is useful if your project contains files of unusual types, which are compiled using a custom build rule.
    public static func scanAllSourceFilesForIncludes(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SCAN_ALL_SOURCE_FILES_FOR_INCLUDES", value: value)
    }
    /// Specifies the directory that contains the product’s scripts.
    public static func scriptsFolderPath(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SCRIPTS_FOLDER_PATH", value: value)
    }
    /// The name or path of the base SDK being used during the build. The product will be built against the headers and libraries located inside the indicated SDK. This path will be prepended to all search paths, and will be passed through the environment to the compiler and linker. Additional SDKs can be specified in the [Additional SDKs (ADDITIONAL_SDKS)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=deva1a5b1b82) setting.
    public static func sdkroot(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SDKROOT", value: value)
    }
    /// These flags are typically used to specify options for ordering symbols within segments, for example the `-sectorder` option to `ld`.
    /// Generally you should not specify symbol ordering options in Debug or Development configurations, as this will make the linked binary less readable to the debugger. Use them only in Release or Deployment configurations.
    public static func sectorderFlags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SECTORDER_FLAGS", value: value)
    }
    /// Activating this setting when the linked product's symbols are to be edited will cause editing to occur via a separate invocation of `nmedit(1)`. Otherwise editing will occur during linking, if possible.
    public static func separateSymbolEdit(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SEPARATE_SYMBOL_EDIT", value: value)
    }
    /// Specifies the directory that contains the product’s shared frameworks.
    public static func sharedFrameworksFolderPath(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SHARED_FRAMEWORKS_FOLDER_PATH", value: value)
    }
    /// The path where precompiled prefix header files are placed during a build. Defaults to `$(OBJROOT)/SharedPrecompiledHeaders`. Using a common location allows precompiled headers to be shared between multiple projects.
    public static func sharedPrecompsDir(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SHARED_PRECOMPS_DIR", value: value)
    }
    /// If enabled, don't install built products even if deployment locations are active.
    public static func skipInstall(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SKIP_INSTALL", value: value)
    }
    /// Identifies the directory containing the target’s source files.
    public static func srcroot(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SRCROOT", value: value)
    }
    /// Specify the encoding to be used for Strings files (by default, the output encoding will be 16-bit Unicode). The value can be either an `NSStringEncoding`, such as one of the numeric values recognized by `NSString`, or it can be an IANA character set name as understood by `CFString`. The operation will fail if the file cannot be converted to the specified encoding.
    public static func stringsFileOutputEncoding(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "STRINGS_FILE_OUTPUT_ENCODING", value: value)
    }
    /// Additional flags to be passed when stripping the linked product of the build.
    public static func stripflags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "STRIPFLAGS", value: value)
    }
    /// If enabled, the linked product of the build will be stripped of symbols when performing deployment postprocessing.
    public static func stripInstalledProduct(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "STRIP_INSTALLED_PRODUCT", value: value)
    }
    /// Metadata in the form of text chunks in PNG files will be removed to reduce their footprint on disk.
    public static func stripPngText(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "STRIP_PNG_TEXT", value: value)
    }
    /// The level of symbol stripping to be performed on the linked product of the build. The default value is defined by the target's product type.
    /// - *All Symbols:* Completely strips the binary, removing the symbol table and relocation information. `all, -s`
    /// - *Non-Global Symbols:* Strips non-global symbols, but saves external symbols. `non-global, -x`
    /// - *Debugging Symbols:* Strips debugging symbols, but saves local and global symbols. `debugging, -S`
    public static func stripStyle(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "STRIP_STYLE", value: value)
    }
    /// Adjust the level of symbol stripping specified by the STRIP_STYLE setting so that when the linked product of the build is stripped, all Swift symbols will be removed.
    public static func stripSwiftSymbols(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "STRIP_SWIFT_SYMBOLS", value: value)
    }
    /// The list of supported platforms from which a base SDK can be used. This setting is used if the product can be built for multiple platforms using different SDKs.
    public static func supportedPlatforms(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SUPPORTED_PLATFORMS", value: value)
    }
    /// Enable to indicate that the target supports `Text-Based InstallAPI`, which will enable its generation during `install` builds.
    public static func supportsTextBasedApi(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SUPPORTS_TEXT_BASED_API", value: value)
    }
    /// A list of compilation conditions to enable for conditional compilation expressions.
    public static func swiftActiveCompilationConditions(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SWIFT_ACTIVE_COMPILATION_CONDITIONS", value: value)
    }
    /// Disable runtime safety checks when optimizing.
    public static func swiftDisableSafetyChecks(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SWIFT_DISABLE_SAFETY_CHECKS", value: value)
    }
    /// Enforce exclusive access to memory
    public static func swiftEnforceExclusiveAccess(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SWIFT_ENFORCE_EXCLUSIVE_ACCESS", value: value)
    }
    /// A list of paths to be searched by the Swift compiler for additional Swift modules.
    public static func swiftIncludePaths(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SWIFT_INCLUDE_PATHS", value: value)
    }
    /// For frameworks, install the Objective-C compatibility header describing bridged Swift classes into the [Public Headers Folder Path (PUBLIC_HEADERS_FOLDER_PATH)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=devdbb795497) so they may be accessed from Objective-C code using the framework. Defaults to `YES`.
    public static func swiftInstallObjcHeader(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SWIFT_INSTALL_OBJC_HEADER", value: value)
    }
    /// Path to the header defining the Objective-C interfaces to be exposed in Swift.
    public static func swiftObjcBridgingHeader(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SWIFT_OBJC_BRIDGING_HEADER", value: value)
    }
    /// Name to use for the header that is generated by the Swift compiler for use in `#import` statements in Objective-C.
    public static func swiftObjcInterfaceHeaderName(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SWIFT_OBJC_INTERFACE_HEADER_NAME", value: value)
    }
    /// - *None:* Compile without any optimization. `-Onone`
    /// - *Fast, Single-File Optimization:* `-O`
    /// - *Fast, Whole Module Optimization:* `-O -whole-module-optimization`
    public static func swiftOptimizationLevel(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SWIFT_OPTIMIZATION_LEVEL", value: value)
    }
    /// Generate a precompiled header for the Objective-C bridging header, if used, in order to reduce overall build times.
    public static func swiftPrecompileBridgingHeader(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SWIFT_PRECOMPILE_BRIDGING_HEADER", value: value)
    }
    /// This setting controls the level of reflection metadata the Swift compiler emits.
    /// - *All:* Type information about stored properties of Swift structs and classes, Swift enum cases, and their names, are emitted into the binary for reflection and analysis in the Memory Graph Debugger.
    /// - *Without Names:* Only type information about stored properties and cases are emitted into the binary, with their names omitted. `-disable-reflection-names`
    /// - *None:* No reflection metadata is emitted into the binary. Accuracy of detecting memory issues involving Swift types in the Memory Graph Debugger will be degraded and reflection in Swift code may not be able to discover children of types, such as properties and enum cases. `-disable-reflection-metadata`
    public static func swiftReflectionMetadataLevel(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SWIFT_REFLECTION_METADATA_LEVEL", value: value)
    }
    /// Don't emit any warnings.
    public static func swiftSuppressWarnings(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SWIFT_SUPPRESS_WARNINGS", value: value)
    }
    /// Control how the Swift compiler infers @objc for declarations.
    public static func swiftSwift3ObjcInference(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SWIFT_SWIFT3_OBJC_INFERENCE", value: value)
    }
    /// Treat all warnings as errors.
    public static func swiftTreatWarningsAsErrors(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SWIFT_TREAT_WARNINGS_AS_ERRORS", value: value)
    }
    /// The path at which all products will be placed when performing a build. Typically this path is not set per target, but is set per-project or per-user. By default, this is set to `$(PROJECT_DIR)/build`.
    public static func symroot(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SYMROOT", value: value)
    }
    /// This is a list of paths to folders containing system frameworks to be searched by the compiler for both included or imported header files when compiling C, Objective-C, C++, or Objective-C++, and by the linker for frameworks used by the product. The order is from highest to lowest precedence. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted. This setting is very similar to "Framework Search Paths", except that the search paths are passed to the compiler in a way that suppresses most warnings for headers found in system search paths. If the compiler doesn't support the concept of system framework search paths, then the search paths are appended to any existing framework search paths defined in "Framework Search Paths".
    public static func systemFrameworkSearchPaths(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SYSTEM_FRAMEWORK_SEARCH_PATHS", value: value)
    }
    /// This is a list of paths to folders to be searched by the compiler for included or imported system header files when compiling C, Objective-C, C++, or Objective-C++. The order is from highest to lowest precedence. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted. This setting is very similar to "Header Search Paths", except that headers are passed to the compiler in a way that suppresses most warnings for headers found in system search paths. If the compiler doesn't support the concept of system header search paths, then the search paths are appended to any existing header search paths defined in "Header Search Paths".
    public static func systemHeaderSearchPaths(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "SYSTEM_HEADER_SEARCH_PATHS", value: value)
    }
    /// Selects the level of warnings and errors to report when building `Text-Based InstallAPI`.
    public static func tapiVerifyMode(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "TAPI_VERIFY_MODE", value: value)
    }
    /// The build system uses the selected device to set the correct value for the `UIDeviceFamily` key it adds to the target's `Info.plist` file.
    public static func targetedDeviceFamily(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "TARGETED_DEVICE_FAMILY", value: value)
    }
    /// Identifies the root of the directory hierarchy that contains the product’s files (no intermediate build files). Run Script build phases that operate on product files of the target that defines them should use the value of this build setting, but Run Script build phases that operate on product files of other targets should use [BUILT_PRODUCTS_DIR](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=devffde5700e) instead.
    public static func targetBuildDir(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "TARGET_BUILD_DIR", value: value)
    }
    /// The name of the current target.
    public static func targetName(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "TARGET_NAME", value: value)
    }
    /// Identifies the directory containing the target’s intermediate build files. Run Script build phases should place intermediate files at the location indicated by [DERIVED_FILE_DIR](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=devcdbd943f2), not the directory identified by this build setting.
    public static func targetTempDir(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "TARGET_TEMP_DIR", value: value)
    }
    /// Path to the executable into which a bundle of tests is injected. Only specify this setting if testing an application or other executable.
    public static func testHost(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "TEST_HOST", value: value)
    }
    /// If provided and `Text-Based InstallAPI` is enabled, the path to a file to use as the `Text-Based InstallAPI` for the product instead of generating the API from the installed header content.
    public static func textBasedApiFile(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "TEXT_BASED_API_FILE", value: value)
    }
    /// When running tests that measure performance via `XCTestCase`, report missing baselines as test failures.
    public static func treatMissingBaselinesAsTestFailures(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "TREAT_MISSING_BASELINES_AS_TEST_FAILURES", value: value)
    }
    /// A project-relative path to a file that lists the symbols not to export. See `ld -exported_symbols_list` for details on exporting symbols.
    public static func unexportedSymbolsFile(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "UNEXPORTED_SYMBOLS_FILE", value: value)
    }
    /// Specifies the directory that contains the product’s unlocalized resources.
    public static func unlocalizedResourcesFolderPath(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "UNLOCALIZED_RESOURCES_FOLDER_PATH", value: value)
    }
    /// This is a list of paths to folders to be searched by the compiler for included or imported user header files (those headers listed in quotes) when compiling C, Objective-C, C++, or Objective-C++. Paths are delimited by whitespace, so any paths with spaces in them need to be properly quoted. See [Always Search User Paths (Deprecated) (ALWAYS_SEARCH_USER_PATHS)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=devc34d7d3e9) for more details on how this setting is used. If the compiler doesn't support the concept of user headers, then the search paths are prepended to the any existing header search paths defined in [Header Search Paths (HEADER_SEARCH_PATHS)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=dev3c9f85d97).
    public static func userHeaderSearchPaths(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "USER_HEADER_SEARCH_PATHS", value: value)
    }
    /// Enable the use of *Header Maps*, which provide the compiler with a mapping from textual header names to their locations, bypassing the normal compiler header search path mechanisms. This allows source code to include headers from various locations in the file system without needing to update the header search path build settings.
    public static func useHeadermap(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "USE_HEADERMAP", value: value)
    }
    /// If enabled, perform validation checks on the product as part of the build process.
    public static func validateProduct(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "VALIDATE_PRODUCT", value: value)
    }
    /// A space-separated list of architectures for which the target should actually be built. For each target, this is intersected with the list specified in [Architectures (ARCHS)](https://help.apple.com/xcode/mac/current/#/itcaec37c2a6?sub=devf0a9d5aca), and the resulting set is built. This allows individual targets to opt out of building for particular architectures. If the resulting set of architectures is empty, no executable will be produced.
    public static func validArchs(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "VALID_ARCHS", value: value)
    }
    /// Specifies whether the target’s Copy Files build phases generate additional information when copying files.
    public static func verbosePbxcp(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "VERBOSE_PBXCP", value: value)
    }
    /// Selects the process used for version-stamping generated files.
    /// - *None:* Use no versioning system.
    /// - *Apple Generic:* Use the current project version setting. `apple-generic`
    public static func versioningSystem(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "VERSIONING_SYSTEM", value: value)
    }
    /// This defines a reference to the user performing a build to be included in the generated Apple Generic Versioning stub. Defaults to the value of the `USER` environment variable.
    public static func versionInfoBuilder(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "VERSION_INFO_BUILDER", value: value)
    }
    /// This defines a prefix string for the version info symbol declaration in the generated Apple Generic Versioning stub. This can be used, for example, to add an optional `export` keyword to the version symbol declaration. This should rarely be changed.
    public static func versionInfoExportDecl(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "VERSION_INFO_EXPORT_DECL", value: value)
    }
    /// Used to specify a name for the source file that will be generated by Apple Generic Versioning and compiled into your product. By default, this is set to `$(PRODUCT_NAME)_vers.c`.
    public static func versionInfoFile(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "VERSION_INFO_FILE", value: value)
    }
    /// Used as a prefix for the name of the version info symbol in the generated versioning source file. If you prefix your exported symbols you will probably want to set this to the same prefix.
    public static func versionInfoPrefix(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "VERSION_INFO_PREFIX", value: value)
    }
    /// Used as a suffix for the name of the version info symbol in the generated versioning source file. This is rarely used.
    public static func versionInfoSuffix(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "VERSION_INFO_SUFFIX", value: value)
    }
    /// Space-separated list of additional warning flags to pass to the compiler. Use this setting if Xcode does not already provide UI for a particular compiler warning flag.
    public static func warningCflags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "WARNING_CFLAGS", value: value)
    }
    /// These flags are passed with linker invocations, and by default give the `-no_arch_warnings` flag to the linker to avoid many warnings being generated during multi-architecture builds.
    public static func warningLdflags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "WARNING_LDFLAGS", value: value)
    }
    /// The extension used for product wrappers, which has a default value based on the product type.
    public static func wrapperExtension(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "WRAPPER_EXTENSION", value: value)
    }
    /// Specifies the filename, including the appropriate extension, of the product bundle.
    public static func wrapperName(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "WRAPPER_NAME", value: value)
    }
    /// Specifies the suffix of the product bundle name, including the character that separates the extension from the rest of the bundle name.
    public static func wrapperSuffix(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "WRAPPER_SUFFIX", value: value)
    }
    /// Append compiled plug-in data to existing plug-in data, instead of overwriting it.
    public static func xcodePlugincompilerAppend(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "XCODE_PLUGINCOMPILER_APPEND", value: value)
    }
    /// Copy original (uncompiled) plug-in data to output alongside compiled plug-in data.
    public static func xcodePlugincompilerCopyOriginal(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "XCODE_PLUGINCOMPILER_COPY_ORIGINAL", value: value)
    }
    /// Include extension XML data in the resulting xcplugindata files.
    public static func xcodePlugincompilerIncludeExtensionXml(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "XCODE_PLUGINCOMPILER_INCLUDE_EXTENSION_XML", value: value)
    }
    /// The property list format, binary or XML, to use for the resulting xcplugindata file.
    public static func xcodePlugincompilerOutputFormat(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "XCODE_PLUGINCOMPILER_OUTPUT_FORMAT", value: value)
    }
    /// Latest version of Developer Tools on which this plug-in will be used.
    public static func xcodePlugincompilerToolsVersionMax(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "XCODE_PLUGINCOMPILER_TOOLS_VERSION_MAX", value: value)
    }
    /// Earliest version of Developer Tools on which this plug-in will be used.
    public static func xcodePlugincompilerToolsVersionMin(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "XCODE_PLUGINCOMPILER_TOOLS_VERSION_MIN", value: value)
    }
    /// Space-separated list of additional flags to pass to `yacc`. Be sure to backslash-escape any arguments that contain spaces or special characters, such as path names that may contain spaces. Use this setting if Xcode does not already provide UI for a `yacc` flag.
    public static func yaccflags(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "YACCFLAGS", value: value)
    }
    /// The file stem to use for the files generated by `yacc`. The files will be named `<stem>.tab.c` and `<stem>.tab.h`based on the value of this setting. The Standard (`y`) option will cause all `yacc` source files in the same target to produce the same output file, and it is not recommended for targets containing multiple `yacc` source files.
    public static func yaccGeneratedFileStem(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "YACC_GENERATED_FILE_STEM", value: value)
    }
    /// Enabling this option changes the preprocessor directives generated by `yacc` so that debugging statements will be incorporated in the compiled code.
    public static func yaccGenerateDebuggingDirectives(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "YACC_GENERATE_DEBUGGING_DIRECTIVES", value: value)
    }
    /// Enabling this option causes `yacc` to insert the `#line` directives in the generated code. The `#line` directives let the C compiler relate errors in the generated code to the user's original code. If this option is disabled, `#line`directives specified by the user in the source file will still be retained.
    public static func yaccInsertLineDirectives(_ value: String) -> XcodeBuild.BuildSetting {
        return XcodeBuild.BuildSetting(name: "YACC_INSERT_LINE_DIRECTIVES", value: value)
    }
}

// MARK: - Generator.

extension XcodeBuild.BuildSetting {
    public static func generateSourceCode(from markdownFilePath: String) -> String {
        var buildSetting_ex: String = """
        
        // MARK: - BuildSetting Fields.
        
        // Build setting references at: https://help.apple.com/xcode/mac/current/#/itcaec37c2a6
        extension XcodeBuild.BuildSetting {
        """
        try? String(contentsOf: URL(fileURLWithPath: markdownFilePath))
            .components(separatedBy: "## ")
            .filter({ $0.lengthOfBytes(using: .utf8) > 0 })
            .forEach({ string in
                let comps =
                    string.split(maxSplits: 1,
                                 omittingEmptySubsequences: true,
                                 whereSeparator: { $0 == "\n" })
                
                if comps.count == 2 {
                    let str_no_white_s = comps[0]
                        .replacingOccurrences(of: " ",
                                              with: "")
                    let upper: ((Int, String.SubSequence) -> String.SubSequence) = { idx, element in
                        return idx == 0 ? element : (String(element.first!).uppercased() + element.dropFirst())
                    }
                    let field =
                        str_no_white_s
                        .components(separatedBy: CharacterSet(charactersIn: "()"))
                        .filter({ $0.lengthOfBytes(using: .utf8) > 0 })
                        .last!
                    let funcName =
                        field
                        .lowercased()
                        .split(separator: "_")
                        .enumerated()
                        .map(upper)
                        .joined(separator: "")

                    buildSetting_ex += """

                    \(comps[1]
                            .replacingOccurrences(of: "\n\n", with: "\n")
                            .replacingOccurrences(of: "\n", with: "\n\t/// ")
                            .split(separator: "\n")
                            .filter({ $0 != "\t/// " })
                            .joined(separator: "\n"))
                    \tpublic static func \(funcName)(_ value: String) -> XcodeBuild.BuildSetting {
                          \treturn XcodeBuild.BuildSetting(name: "\(field)", value: value)
                    \t}
                    """
                }
            })
        buildSetting_ex += """
        
        }
        """
        return buildSetting_ex
    }
}
