; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [240 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 73
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 104
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 97
	i32 57967248, ; 3: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 42
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 87
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 87
	i32 160529393, ; 6: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 15
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 54
	i32 166922606, ; 8: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 25
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 88
	i32 201930040, ; 10: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 16
	i32 209399409, ; 11: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 52
	i32 212497893, ; 12: Xamarin.Forms.Maps.Android => 0xcaa75e5 => 98
	i32 219130465, ; 13: Xamarin.Android.Support.v4 => 0xd0faa61 => 41
	i32 230216969, ; 14: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 68
	i32 232815796, ; 15: System.Web.Services => 0xde07cb4 => 119
	i32 261689757, ; 16: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 57
	i32 278686392, ; 17: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 72
	i32 280482487, ; 18: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 66
	i32 318968648, ; 19: Xamarin.AndroidX.Activity.dll => 0x13031348 => 44
	i32 319314094, ; 20: Xamarin.Forms.Maps => 0x130858ae => 99
	i32 321597661, ; 21: System.Numerics => 0x132b30dd => 9
	i32 325779511, ; 22: X13MapsGeoCoding.Android => 0x136b0037 => 0
	i32 342366114, ; 23: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 70
	i32 389971796, ; 24: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 27
	i32 441335492, ; 25: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 56
	i32 442521989, ; 26: Xamarin.Essentials => 0x1a605985 => 96
	i32 450948140, ; 27: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 65
	i32 465846621, ; 28: mscorlib => 0x1bc4415d => 6
	i32 469710990, ; 29: System.dll => 0x1bff388e => 8
	i32 476646585, ; 30: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 66
	i32 486930444, ; 31: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 77
	i32 514659665, ; 32: Xamarin.Android.Support.Compat => 0x1ead1551 => 25
	i32 524864063, ; 33: Xamarin.Android.Support.Print => 0x1f48ca3f => 38
	i32 526420162, ; 34: System.Transactions.dll => 0x1f6088c2 => 115
	i32 605376203, ; 35: System.IO.Compression.FileSystem => 0x24154ecb => 118
	i32 627609679, ; 36: Xamarin.AndroidX.CustomView => 0x2568904f => 61
	i32 663517072, ; 37: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 93
	i32 666292255, ; 38: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 49
	i32 690569205, ; 39: System.Xml.Linq.dll => 0x29293ff5 => 13
	i32 692692150, ; 40: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 22
	i32 775507847, ; 41: System.IO.Compression => 0x2e394f87 => 117
	i32 801787702, ; 42: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 34
	i32 809851609, ; 43: System.Drawing.Common.dll => 0x30455ad9 => 110
	i32 843511501, ; 44: Xamarin.AndroidX.Print => 0x3246f6cd => 84
	i32 882883187, ; 45: Xamarin.Android.Support.v4.dll => 0x349fba73 => 41
	i32 916714535, ; 46: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 38
	i32 928116545, ; 47: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 104
	i32 958213972, ; 48: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 37
	i32 967690846, ; 49: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 70
	i32 974778368, ; 50: FormsViewGroup.dll => 0x3a19f000 => 3
	i32 987342438, ; 51: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 19
	i32 1012816738, ; 52: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 86
	i32 1035644815, ; 53: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 48
	i32 1042160112, ; 54: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 101
	i32 1052210849, ; 55: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 74
	i32 1098167829, ; 56: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 21
	i32 1098259244, ; 57: System => 0x41761b2c => 8
	i32 1175144683, ; 58: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 91
	i32 1178241025, ; 59: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 81
	i32 1204270330, ; 60: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 49
	i32 1267360935, ; 61: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 92
	i32 1292763917, ; 62: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 29
	i32 1293217323, ; 63: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 63
	i32 1297413738, ; 64: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 18
	i32 1365406463, ; 65: System.ServiceModel.Internals.dll => 0x516272ff => 109
	i32 1376866003, ; 66: Xamarin.AndroidX.SavedState => 0x52114ed3 => 86
	i32 1395857551, ; 67: Xamarin.AndroidX.Media.dll => 0x5333188f => 78
	i32 1406073936, ; 68: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 58
	i32 1445445088, ; 69: Xamarin.Android.Support.Fragment => 0x5627bde0 => 33
	i32 1460219004, ; 70: Xamarin.Forms.Xaml => 0x57092c7c => 102
	i32 1462112819, ; 71: System.IO.Compression.dll => 0x57261233 => 117
	i32 1469204771, ; 72: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 47
	i32 1530663695, ; 73: Xamarin.Forms.Maps.dll => 0x5b3c130f => 99
	i32 1574652163, ; 74: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 28
	i32 1582372066, ; 75: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 62
	i32 1587447679, ; 76: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 15
	i32 1592978981, ; 77: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 78: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 76
	i32 1624863272, ; 79: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 95
	i32 1636350590, ; 80: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 60
	i32 1639515021, ; 81: System.Net.Http.dll => 0x61b9038d => 1
	i32 1657153582, ; 82: System.Runtime => 0x62c6282e => 11
	i32 1658241508, ; 83: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 89
	i32 1658251792, ; 84: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 103
	i32 1670060433, ; 85: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 57
	i32 1729485958, ; 86: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 53
	i32 1766324549, ; 87: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 88
	i32 1776026572, ; 88: System.Core.dll => 0x69dc03cc => 7
	i32 1788241197, ; 89: Xamarin.AndroidX.Fragment => 0x6a96652d => 65
	i32 1808609942, ; 90: Xamarin.AndroidX.Loader => 0x6bcd3296 => 76
	i32 1813201214, ; 91: Xamarin.Google.Android.Material => 0x6c13413e => 103
	i32 1818569960, ; 92: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 82
	i32 1866717392, ; 93: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 34
	i32 1867746548, ; 94: Xamarin.Essentials.dll => 0x6f538cf4 => 96
	i32 1878053835, ; 95: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 102
	i32 1881862856, ; 96: Xamarin.Forms.Maps.Android.dll => 0x702af2c8 => 98
	i32 1885316902, ; 97: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 50
	i32 1908813208, ; 98: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 106
	i32 1916660109, ; 99: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 21
	i32 1919157823, ; 100: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 79
	i32 2019465201, ; 101: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 74
	i32 2037417872, ; 102: Xamarin.Android.Support.ViewPager => 0x79708790 => 43
	i32 2044222327, ; 103: Xamarin.Android.Support.Loader => 0x79d85b77 => 35
	i32 2055257422, ; 104: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 71
	i32 2079903147, ; 105: System.Runtime.dll => 0x7bf8cdab => 11
	i32 2090596640, ; 106: System.Numerics.Vectors => 0x7c9bf920 => 10
	i32 2097448633, ; 107: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 67
	i32 2126786730, ; 108: Xamarin.Forms.Platform.Android => 0x7ec430aa => 100
	i32 2129483829, ; 109: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 105
	i32 2139458754, ; 110: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 32
	i32 2166116741, ; 111: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 28
	i32 2196165013, ; 112: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 42
	i32 2201231467, ; 113: System.Net.Http => 0x8334206b => 1
	i32 2217644978, ; 114: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 91
	i32 2244775296, ; 115: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 77
	i32 2256548716, ; 116: Xamarin.AndroidX.MultiDex => 0x8680336c => 79
	i32 2261435625, ; 117: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 69
	i32 2279755925, ; 118: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 85
	i32 2315684594, ; 119: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 45
	i32 2330457430, ; 120: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 27
	i32 2330986192, ; 121: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 39
	i32 2373288475, ; 122: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 33
	i32 2409053734, ; 123: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 83
	i32 2440966767, ; 124: Xamarin.Android.Support.Loader.dll => 0x917e326f => 35
	i32 2465532216, ; 125: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 56
	i32 2471841756, ; 126: netstandard.dll => 0x93554fdc => 113
	i32 2475788418, ; 127: Java.Interop.dll => 0x93918882 => 4
	i32 2487632829, ; 128: Xamarin.Android.Support.DocumentFile => 0x944643bd => 31
	i32 2501346920, ; 129: System.Data.DataSetExtensions => 0x95178668 => 116
	i32 2505896520, ; 130: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 73
	i32 2581819634, ; 131: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 92
	i32 2620871830, ; 132: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 60
	i32 2624644809, ; 133: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 64
	i32 2633051222, ; 134: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 72
	i32 2698266930, ; 135: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 19
	i32 2701096212, ; 136: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 89
	i32 2732626843, ; 137: Xamarin.AndroidX.Activity => 0xa2e0939b => 44
	i32 2737747696, ; 138: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 47
	i32 2751899777, ; 139: Xamarin.Android.Support.Collections => 0xa406a881 => 24
	i32 2766581644, ; 140: Xamarin.Forms.Core => 0xa4e6af8c => 97
	i32 2778768386, ; 141: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 94
	i32 2788639665, ; 142: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 36
	i32 2788775637, ; 143: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 40
	i32 2810250172, ; 144: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 58
	i32 2819470561, ; 145: System.Xml.dll => 0xa80db4e1 => 12
	i32 2847418871, ; 146: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 105
	i32 2853208004, ; 147: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 94
	i32 2855708567, ; 148: Xamarin.AndroidX.Transition => 0xaa36a797 => 90
	i32 2876493027, ; 149: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 40
	i32 2893257763, ; 150: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 16
	i32 2903344695, ; 151: System.ComponentModel.Composition => 0xad0d8637 => 112
	i32 2905242038, ; 152: mscorlib.dll => 0xad2a79b6 => 6
	i32 2916838712, ; 153: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 95
	i32 2919462931, ; 154: System.Numerics.Vectors.dll => 0xae037813 => 10
	i32 2921128767, ; 155: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 46
	i32 2921692953, ; 156: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 30
	i32 2978675010, ; 157: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 63
	i32 3017076677, ; 158: Xamarin.GooglePlayServices.Maps => 0xb3d4efc5 => 107
	i32 3024354802, ; 159: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 68
	i32 3044182254, ; 160: FormsViewGroup => 0xb57288ee => 3
	i32 3056250942, ; 161: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 23
	i32 3057625584, ; 162: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 80
	i32 3058099980, ; 163: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 108
	i32 3068715062, ; 164: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 17
	i32 3092211740, ; 165: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 37
	i32 3111772706, ; 166: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3204380047, ; 167: System.Data.dll => 0xbefef58f => 114
	i32 3204912593, ; 168: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 23
	i32 3211777861, ; 169: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 62
	i32 3230466174, ; 170: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 106
	i32 3233339011, ; 171: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 18
	i32 3247949154, ; 172: Mono.Security => 0xc197c562 => 111
	i32 3258312781, ; 173: Xamarin.AndroidX.CardView => 0xc235e84d => 53
	i32 3267021929, ; 174: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 51
	i32 3296380511, ; 175: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 24
	i32 3317135071, ; 176: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 61
	i32 3317144872, ; 177: System.Data => 0xc5b79d28 => 114
	i32 3321585405, ; 178: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 31
	i32 3340431453, ; 179: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 50
	i32 3344729027, ; 180: X13MapsGeoCoding.dll => 0xc75c83c3 => 14
	i32 3346324047, ; 181: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 81
	i32 3352662376, ; 182: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 26
	i32 3353484488, ; 183: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 67
	i32 3357663996, ; 184: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 29
	i32 3362522851, ; 185: Xamarin.AndroidX.Core => 0xc86c06e3 => 59
	i32 3366347497, ; 186: Java.Interop => 0xc8a662e9 => 4
	i32 3374999561, ; 187: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 85
	i32 3404865022, ; 188: System.ServiceModel.Internals => 0xcaf21dfe => 109
	i32 3429136800, ; 189: System.Xml => 0xcc6479a0 => 12
	i32 3430777524, ; 190: netstandard => 0xcc7d82b4 => 113
	i32 3436814227, ; 191: X13MapsGeoCoding => 0xccd99f93 => 14
	i32 3439690031, ; 192: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 22
	i32 3441283291, ; 193: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 64
	i32 3476120550, ; 194: Mono.Android => 0xcf3163e6 => 5
	i32 3486566296, ; 195: System.Transactions => 0xcfd0c798 => 115
	i32 3493954962, ; 196: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 55
	i32 3501239056, ; 197: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 51
	i32 3509114376, ; 198: System.Xml.Linq => 0xd128d608 => 13
	i32 3536029504, ; 199: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 100
	i32 3547625832, ; 200: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 39
	i32 3567349600, ; 201: System.ComponentModel.Composition.dll => 0xd4a16f60 => 112
	i32 3618140916, ; 202: Xamarin.AndroidX.Preference => 0xd7a872f4 => 83
	i32 3627220390, ; 203: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 84
	i32 3632359727, ; 204: Xamarin.Forms.Platform => 0xd881692f => 101
	i32 3633644679, ; 205: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 46
	i32 3641597786, ; 206: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 71
	i32 3664423555, ; 207: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 43
	i32 3672681054, ; 208: Mono.Android.dll => 0xdae8aa5e => 5
	i32 3676310014, ; 209: System.Web.Services.dll => 0xdb2009fe => 119
	i32 3681174138, ; 210: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 17
	i32 3682565725, ; 211: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 52
	i32 3684561358, ; 212: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 55
	i32 3689375977, ; 213: System.Drawing.Common => 0xdbe768e9 => 110
	i32 3714038699, ; 214: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 36
	i32 3718780102, ; 215: Xamarin.AndroidX.Annotation => 0xdda814c6 => 45
	i32 3724971120, ; 216: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 80
	i32 3758932259, ; 217: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 69
	i32 3776062606, ; 218: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 32
	i32 3786282454, ; 219: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 54
	i32 3822602673, ; 220: Xamarin.AndroidX.Media => 0xe3d849b1 => 78
	i32 3829621856, ; 221: System.Numerics.dll => 0xe4436460 => 9
	i32 3832731800, ; 222: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 26
	i32 3862817207, ; 223: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 20
	i32 3874897629, ; 224: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 20
	i32 3885922214, ; 225: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 90
	i32 3896760992, ; 226: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 59
	i32 3920810846, ; 227: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 118
	i32 3921031405, ; 228: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 93
	i32 3931092270, ; 229: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 82
	i32 3945713374, ; 230: System.Data.DataSetExtensions.dll => 0xeb2ecede => 116
	i32 3955647286, ; 231: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 48
	i32 3970018735, ; 232: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 108
	i32 4063435586, ; 233: Xamarin.Android.Support.CustomView => 0xf2331b42 => 30
	i32 4105002889, ; 234: Mono.Security.dll => 0xf4ad5f89 => 111
	i32 4151237749, ; 235: System.Core => 0xf76edc75 => 7
	i32 4182413190, ; 236: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 75
	i32 4257156695, ; 237: X13MapsGeoCoding.Android.dll => 0xfdbf0e57 => 0
	i32 4278134329, ; 238: Xamarin.GooglePlayServices.Maps.dll => 0xfeff2639 => 107
	i32 4292120959 ; 239: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 75
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [240 x i32] [
	i32 73, i32 104, i32 97, i32 42, i32 87, i32 87, i32 15, i32 54, ; 0..7
	i32 25, i32 88, i32 16, i32 52, i32 98, i32 41, i32 68, i32 119, ; 8..15
	i32 57, i32 72, i32 66, i32 44, i32 99, i32 9, i32 0, i32 70, ; 16..23
	i32 27, i32 56, i32 96, i32 65, i32 6, i32 8, i32 66, i32 77, ; 24..31
	i32 25, i32 38, i32 115, i32 118, i32 61, i32 93, i32 49, i32 13, ; 32..39
	i32 22, i32 117, i32 34, i32 110, i32 84, i32 41, i32 38, i32 104, ; 40..47
	i32 37, i32 70, i32 3, i32 19, i32 86, i32 48, i32 101, i32 74, ; 48..55
	i32 21, i32 8, i32 91, i32 81, i32 49, i32 92, i32 29, i32 63, ; 56..63
	i32 18, i32 109, i32 86, i32 78, i32 58, i32 33, i32 102, i32 117, ; 64..71
	i32 47, i32 99, i32 28, i32 62, i32 15, i32 2, i32 76, i32 95, ; 72..79
	i32 60, i32 1, i32 11, i32 89, i32 103, i32 57, i32 53, i32 88, ; 80..87
	i32 7, i32 65, i32 76, i32 103, i32 82, i32 34, i32 96, i32 102, ; 88..95
	i32 98, i32 50, i32 106, i32 21, i32 79, i32 74, i32 43, i32 35, ; 96..103
	i32 71, i32 11, i32 10, i32 67, i32 100, i32 105, i32 32, i32 28, ; 104..111
	i32 42, i32 1, i32 91, i32 77, i32 79, i32 69, i32 85, i32 45, ; 112..119
	i32 27, i32 39, i32 33, i32 83, i32 35, i32 56, i32 113, i32 4, ; 120..127
	i32 31, i32 116, i32 73, i32 92, i32 60, i32 64, i32 72, i32 19, ; 128..135
	i32 89, i32 44, i32 47, i32 24, i32 97, i32 94, i32 36, i32 40, ; 136..143
	i32 58, i32 12, i32 105, i32 94, i32 90, i32 40, i32 16, i32 112, ; 144..151
	i32 6, i32 95, i32 10, i32 46, i32 30, i32 63, i32 107, i32 68, ; 152..159
	i32 3, i32 23, i32 80, i32 108, i32 17, i32 37, i32 2, i32 114, ; 160..167
	i32 23, i32 62, i32 106, i32 18, i32 111, i32 53, i32 51, i32 24, ; 168..175
	i32 61, i32 114, i32 31, i32 50, i32 14, i32 81, i32 26, i32 67, ; 176..183
	i32 29, i32 59, i32 4, i32 85, i32 109, i32 12, i32 113, i32 14, ; 184..191
	i32 22, i32 64, i32 5, i32 115, i32 55, i32 51, i32 13, i32 100, ; 192..199
	i32 39, i32 112, i32 83, i32 84, i32 101, i32 46, i32 71, i32 43, ; 200..207
	i32 5, i32 119, i32 17, i32 52, i32 55, i32 110, i32 36, i32 45, ; 208..215
	i32 80, i32 69, i32 32, i32 54, i32 78, i32 9, i32 26, i32 20, ; 216..223
	i32 20, i32 90, i32 59, i32 118, i32 93, i32 82, i32 116, i32 48, ; 224..231
	i32 108, i32 30, i32 111, i32 7, i32 75, i32 0, i32 107, i32 75 ; 240..239
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
