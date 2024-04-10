; ModuleID = 'obj\Debug\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [240 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 64
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 5
	i64 210515253464952879, ; 2: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 54
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 86
	i64 295915112840604065, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 87
	i64 590536689428908136, ; 5: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x83201fd803ec868 => 21
	i64 634308326490598313, ; 6: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 73
	i64 687654259221141486, ; 7: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 105
	i64 702024105029695270, ; 8: System.Drawing.Common => 0x9be17343c0e7726 => 110
	i64 720058930071658100, ; 9: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 67
	i64 816102801403336439, ; 10: Xamarin.Android.Support.Collections => 0xb53612c89d8d6f7 => 24
	i64 846634227898301275, ; 11: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0xbbfd9583890bb5b => 18
	i64 872800313462103108, ; 12: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 63
	i64 940822596282819491, ; 13: System.Transactions => 0xd0e792aa81923a3 => 115
	i64 996343623809489702, ; 14: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 101
	i64 1000557547492888992, ; 15: Mono.Security.dll => 0xde2b1c9cba651a0 => 111
	i64 1120440138749646132, ; 16: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 103
	i64 1315114680217950157, ; 17: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 49
	i64 1342439039765371018, ; 18: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 33
	i64 1425944114962822056, ; 19: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 2
	i64 1490981186906623721, ; 20: Xamarin.Android.Support.VersionedParcelable => 0x14b1077d6c5c0ee9 => 42
	i64 1624659445732251991, ; 21: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 47
	i64 1628611045998245443, ; 22: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 75
	i64 1636321030536304333, ; 23: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 68
	i64 1795316252682057001, ; 24: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 48
	i64 1836611346387731153, ; 25: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 86
	i64 1875917498431009007, ; 26: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 45
	i64 1938067011858688285, ; 27: Xamarin.Android.Support.v4.dll => 0x1ae565add0bd691d => 41
	i64 1981742497975770890, ; 28: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 74
	i64 2136356949452311481, ; 29: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 79
	i64 2165725771938924357, ; 30: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 52
	i64 2262844636196693701, ; 31: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 63
	i64 2284400282711631002, ; 32: System.Web.Services => 0x1fb3d1f42fd4249a => 119
	i64 2329709569556905518, ; 33: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 71
	i64 2470498323731680442, ; 34: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 58
	i64 2479423007379663237, ; 35: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 91
	i64 2497223385847772520, ; 36: System.Runtime => 0x22a7eb7046413568 => 11
	i64 2547086958574651984, ; 37: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 44
	i64 2592350477072141967, ; 38: System.Xml.dll => 0x23f9e10627330e8f => 12
	i64 2624866290265602282, ; 39: mscorlib.dll => 0x246d65fbde2db8ea => 6
	i64 2694427813909235223, ; 40: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 83
	i64 2949706848458024531, ; 41: Xamarin.Android.Support.SlidingPaneLayout => 0x28ef76c01de0a653 => 39
	i64 2960931600190307745, ; 42: Xamarin.Forms.Core => 0x2917579a49927da1 => 97
	i64 2977248461349026546, ; 43: Xamarin.Android.Support.DrawerLayout => 0x29514fb392c97af2 => 32
	i64 3017704767998173186, ; 44: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 103
	i64 3022227708164871115, ; 45: Xamarin.Android.Support.Media.Compat.dll => 0x29f11c168f8293cb => 37
	i64 3289520064315143713, ; 46: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 70
	i64 3303437397778967116, ; 47: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 46
	i64 3311221304742556517, ; 48: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 10
	i64 3411255996856937470, ; 49: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 106
	i64 3493805808809882663, ; 50: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 89
	i64 3522470458906976663, ; 51: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 88
	i64 3531994851595924923, ; 52: System.Numerics => 0x31042a9aade235bb => 9
	i64 3571415421602489686, ; 53: System.Runtime.dll => 0x319037675df7e556 => 11
	i64 3716579019761409177, ; 54: netstandard.dll => 0x3393f0ed5c8c5c99 => 113
	i64 3727469159507183293, ; 55: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 85
	i64 3772598417116884899, ; 56: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 64
	i64 4247996603072512073, ; 57: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 108
	i64 4252163538099460320, ; 58: Xamarin.Android.Support.ViewPager.dll => 0x3b02b8357f4958e0 => 43
	i64 4349341163892612332, ; 59: Xamarin.Android.Support.DocumentFile => 0x3c5bf6bea8cd9cec => 31
	i64 4416987920449902723, ; 60: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0x3d4c4b1c879b9883 => 23
	i64 4525561845656915374, ; 61: System.ServiceModel.Internals => 0x3ece06856b710dae => 109
	i64 4636684751163556186, ; 62: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 93
	i64 4782108999019072045, ; 63: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 51
	i64 4794310189461587505, ; 64: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 44
	i64 4794860291282449084, ; 65: X13MapsGeoCoding => 0x428ac407d98432bc => 14
	i64 4795410492532947900, ; 66: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 88
	i64 4841234827713643511, ; 67: Xamarin.Android.Support.CoordinaterLayout => 0x432f856d041f03f7 => 26
	i64 4963205065368577818, ; 68: Xamarin.Android.Support.LocalBroadcastManager.dll => 0x44e0d8b5f4b6a71a => 36
	i64 5142919913060024034, ; 69: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 100
	i64 5178572682164047940, ; 70: Xamarin.Android.Support.Print.dll => 0x47ddfc6acbee1044 => 38
	i64 5203618020066742981, ; 71: Xamarin.Essentials => 0x4836f704f0e652c5 => 96
	i64 5205316157927637098, ; 72: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 77
	i64 5256995213548036366, ; 73: Xamarin.Forms.Maps.Android.dll => 0x48f4994b4175a10e => 98
	i64 5288341611614403055, ; 74: Xamarin.Android.Support.Interpolator.dll => 0x4963f6ad4b3179ef => 34
	i64 5348796042099802469, ; 75: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 78
	i64 5376510917114486089, ; 76: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 91
	i64 5408338804355907810, ; 77: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 90
	i64 5451019430259338467, ; 78: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 57
	i64 5507995362134886206, ; 79: System.Core.dll => 0x4c705499688c873e => 7
	i64 5692067934154308417, ; 80: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 95
	i64 5757522595884336624, ; 81: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 55
	i64 5767696078500135884, ; 82: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 22
	i64 5814345312393086621, ; 83: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 83
	i64 5896680224035167651, ; 84: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 72
	i64 6044705416426755068, ; 85: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0x53e31b8ccdff13fc => 40
	i64 6085203216496545422, ; 86: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 101
	i64 6086316965293125504, ; 87: FormsViewGroup.dll => 0x5476f10882baef80 => 3
	i64 6311200438583329442, ; 88: Xamarin.Android.Support.LocalBroadcastManager => 0x5795e35c580c82a2 => 36
	i64 6319713645133255417, ; 89: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 73
	i64 6401687960814735282, ; 90: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 71
	i64 6504860066809920875, ; 91: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 52
	i64 6548213210057960872, ; 92: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 61
	i64 6588599331800941662, ; 93: Xamarin.Android.Support.v4 => 0x5b6f682f335f045e => 41
	i64 6591024623626361694, ; 94: System.Web.Services.dll => 0x5b7805f9751a1b5e => 119
	i64 6659513131007730089, ; 95: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 67
	i64 6876862101832370452, ; 96: System.Xml.Linq => 0x5f6f85a57d108914 => 13
	i64 6894844156784520562, ; 97: System.Numerics.Vectors => 0x5faf683aead1ad72 => 10
	i64 7036436454368433159, ; 98: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 69
	i64 7103753931438454322, ; 99: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 66
	i64 7141281584637745974, ; 100: Xamarin.GooglePlayServices.Maps.dll => 0x631aedc3dd5f1b36 => 107
	i64 7194160955514091247, ; 101: Xamarin.Android.Support.CursorAdapter.dll => 0x63d6cb45d266f6ef => 29
	i64 7488575175965059935, ; 102: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 13
	i64 7635363394907363464, ; 103: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 97
	i64 7637365915383206639, ; 104: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 96
	i64 7654504624184590948, ; 105: System.Net.Http => 0x6a3a4366801b8264 => 1
	i64 7731541275601469064, ; 106: X13MapsGeoCoding.Android => 0x6b4bf3d3a27efe88 => 0
	i64 7820441508502274321, ; 107: System.Data => 0x6c87ca1e14ff8111 => 114
	i64 7821246742157274664, ; 108: Xamarin.Android.Support.AsyncLayoutInflater => 0x6c8aa67926f72e28 => 23
	i64 7836164640616011524, ; 109: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 47
	i64 8044118961405839122, ; 110: System.ComponentModel.Composition => 0x6fa2739369944712 => 112
	i64 8083354569033831015, ; 111: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 70
	i64 8101777744205214367, ; 112: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 22
	i64 8103644804370223335, ; 113: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 116
	i64 8167236081217502503, ; 114: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 4
	i64 8196541262927413903, ; 115: Xamarin.Android.Support.Interpolator => 0x71bff6d9fb9ec28f => 34
	i64 8385935383968044654, ; 116: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 20
	i64 8398329775253868912, ; 117: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 56
	i64 8400357532724379117, ; 118: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 82
	i64 8601935802264776013, ; 119: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 90
	i64 8626175481042262068, ; 120: Java.Interop => 0x77b654e585b55834 => 4
	i64 8639588376636138208, ; 121: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 81
	i64 8684531736582871431, ; 122: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 118
	i64 8808820144457481518, ; 123: Xamarin.Android.Support.Loader.dll => 0x7a3f374010b17d2e => 35
	i64 8917102979740339192, ; 124: Xamarin.Android.Support.DocumentFile.dll => 0x7bbfe9ea4d000bf8 => 31
	i64 9312692141327339315, ; 125: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 95
	i64 9324707631942237306, ; 126: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 48
	i64 9662334977499516867, ; 127: System.Numerics.dll => 0x8617827802b0cfc3 => 9
	i64 9678050649315576968, ; 128: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 58
	i64 9711637524876806384, ; 129: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 78
	i64 9808709177481450983, ; 130: Mono.Android.dll => 0x881f890734e555e7 => 5
	i64 9825649861376906464, ; 131: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 55
	i64 9834056768316610435, ; 132: System.Transactions.dll => 0x8879968718899783 => 115
	i64 9866412715007501892, ; 133: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 17
	i64 9875200773399460291, ; 134: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 105
	i64 9998632235833408227, ; 135: Mono.Security => 0x8ac2470b209ebae3 => 111
	i64 10038780035334861115, ; 136: System.Net.Http.dll => 0x8b50e941206af13b => 1
	i64 10229024438826829339, ; 137: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 61
	i64 10303855825347935641, ; 138: Xamarin.Android.Support.Loader => 0x8efea647eeb3fd99 => 35
	i64 10363495123250631811, ; 139: Xamarin.Android.Support.Collections.dll => 0x8fd287e80cd8d483 => 24
	i64 10376576884623852283, ; 140: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 89
	i64 10430153318873392755, ; 141: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 59
	i64 10635644668885628703, ; 142: Xamarin.Android.Support.DrawerLayout.dll => 0x93996679ee34771f => 32
	i64 10775409704848971057, ; 143: Xamarin.Forms.Maps => 0x9589f20936d1d531 => 99
	i64 10847732767863316357, ; 144: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 49
	i64 10850923258212604222, ; 145: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 20
	i64 11023048688141570732, ; 146: System.Core => 0x98f9bc61168392ac => 7
	i64 11037814507248023548, ; 147: System.Xml => 0x992e31d0412bf7fc => 12
	i64 11162124722117608902, ; 148: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 94
	i64 11340910727871153756, ; 149: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 60
	i64 11376461258732682436, ; 150: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 25
	i64 11392833485892708388, ; 151: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 84
	i64 11444370155346000636, ; 152: Xamarin.Forms.Maps.Android => 0x9ed292057b7afafc => 98
	i64 11529969570048099689, ; 153: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 94
	i64 11578238080964724296, ; 154: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 69
	i64 11580057168383206117, ; 155: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 45
	i64 11597940890313164233, ; 156: netstandard => 0xa0f429ca8d1805c9 => 113
	i64 11672361001936329215, ; 157: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 66
	i64 11834399401546345650, ; 158: Xamarin.Android.Support.SlidingPaneLayout.dll => 0xa43c3b8deb43ecb2 => 39
	i64 11865714326292153359, ; 159: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa4ab7c5000e8440f => 19
	i64 12137774235383566651, ; 160: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 92
	i64 12388767885335911387, ; 161: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0xabedbec0d236dbdb => 19
	i64 12414299427252656003, ; 162: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 25
	i64 12451044538927396471, ; 163: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 65
	i64 12466513435562512481, ; 164: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 76
	i64 12487638416075308985, ; 165: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 62
	i64 12538491095302438457, ; 166: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 53
	i64 12550732019250633519, ; 167: System.IO.Compression => 0xae2d28465e8e1b2f => 117
	i64 12700543734426720211, ; 168: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 54
	i64 12952608645614506925, ; 169: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 28
	i64 12963446364377008305, ; 170: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 110
	i64 13358059602087096138, ; 171: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 33
	i64 13370592475155966277, ; 172: System.Runtime.Serialization => 0xb98de304062ea945 => 2
	i64 13401370062847626945, ; 173: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 92
	i64 13404347523447273790, ; 174: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 56
	i64 13454009404024712428, ; 175: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 104
	i64 13491513212026656886, ; 176: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 50
	i64 13572454107664307259, ; 177: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 85
	i64 13647894001087880694, ; 178: System.Data.dll => 0xbd670f48cb071df6 => 114
	i64 13959074834287824816, ; 179: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 65
	i64 13967638549803255703, ; 180: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 100
	i64 14124974489674258913, ; 181: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 53
	i64 14172845254133543601, ; 182: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 79
	i64 14261073672896646636, ; 183: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 84
	i64 14400856865250966808, ; 184: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 27
	i64 14486659737292545672, ; 185: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 72
	i64 14644440854989303794, ; 186: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 77
	i64 14661790646341542033, ; 187: Xamarin.Android.Support.SwipeRefreshLayout => 0xcb7924e94e552091 => 40
	i64 14792063746108907174, ; 188: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 104
	i64 14852515768018889994, ; 189: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 60
	i64 14987728460634540364, ; 190: System.IO.Compression.dll => 0xcfff1ba06622494c => 117
	i64 14988210264188246988, ; 191: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 62
	i64 15188640517174936311, ; 192: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 15
	i64 15246441518555807158, ; 193: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 15
	i64 15326820765897713587, ; 194: Xamarin.Android.Arch.Core.Runtime.dll => 0xd4b3ce481769e7b3 => 16
	i64 15370334346939861994, ; 195: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 59
	i64 15457813392950723921, ; 196: Xamarin.Android.Support.Media.Compat => 0xd6852f61c31a8551 => 37
	i64 15568534730848034786, ; 197: Xamarin.Android.Support.VersionedParcelable.dll => 0xd80e8bda21875fe2 => 42
	i64 15582737692548360875, ; 198: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 75
	i64 15609085926864131306, ; 199: System.dll => 0xd89e9cf3334914ea => 8
	i64 15777549416145007739, ; 200: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 87
	i64 15810740023422282496, ; 201: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 102
	i64 15848904470344532877, ; 202: X13MapsGeoCoding.dll => 0xdbf29ea509fc838d => 14
	i64 15930129725311349754, ; 203: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 108
	i64 16154507427712707110, ; 204: System => 0xe03056ea4e39aa26 => 8
	i64 16242842420508142678, ; 205: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe16a2b1f8908ac56 => 26
	i64 16565028646146589191, ; 206: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 112
	i64 16621146507174665210, ; 207: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 57
	i64 16677317093839702854, ; 208: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 82
	i64 16767985610513713374, ; 209: Xamarin.Android.Arch.Core.Runtime => 0xe8b3da12798808de => 16
	i64 16822611501064131242, ; 210: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 116
	i64 16833383113903931215, ; 211: mscorlib => 0xe99c30c1484d7f4f => 6
	i64 16932527889823454152, ; 212: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 28
	i64 17024911836938395553, ; 213: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 46
	i64 17031351772568316411, ; 214: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 80
	i64 17037200463775726619, ; 215: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 68
	i64 17383232329670771222, ; 216: Xamarin.Android.Support.CustomView.dll => 0xf13da5b41a1cc216 => 30
	i64 17428701562824544279, ; 217: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 27
	i64 17483646997724851973, ; 218: Xamarin.Android.Support.ViewPager => 0xf2a2644fe5b6ef05 => 43
	i64 17524135665394030571, ; 219: Xamarin.Android.Support.Print => 0xf3323c8a739097eb => 38
	i64 17544493274320527064, ; 220: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 51
	i64 17666959971718154066, ; 221: Xamarin.Android.Support.CustomView => 0xf52da67d9f4e4752 => 30
	i64 17704177640604968747, ; 222: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 76
	i64 17710060891934109755, ; 223: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 74
	i64 17760961058993581169, ; 224: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 17
	i64 17816041456001989629, ; 225: Xamarin.Forms.Maps.dll => 0xf73f4b4f90a1bbfd => 99
	i64 17841643939744178149, ; 226: Xamarin.Android.Arch.Lifecycle.ViewModel => 0xf79a40a25573dfe5 => 21
	i64 17882897186074144999, ; 227: FormsViewGroup => 0xf82cd03e3ac830e7 => 3
	i64 17892495832318972303, ; 228: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 102
	i64 17928294245072900555, ; 229: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 118
	i64 17958105683855786126, ; 230: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xf93801f92d25c08e => 18
	i64 17969331831154222830, ; 231: Xamarin.GooglePlayServices.Maps => 0xf95fe418471126ee => 107
	i64 17986907704309214542, ; 232: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 106
	i64 18116111925905154859, ; 233: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 50
	i64 18121036031235206392, ; 234: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 80
	i64 18129453464017766560, ; 235: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 109
	i64 18301997741680159453, ; 236: Xamarin.Android.Support.CursorAdapter => 0xfdfdc1fa58d8eadd => 29
	i64 18305135509493619199, ; 237: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 81
	i64 18380184030268848184, ; 238: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 93
	i64 18439196546803280024 ; 239: X13MapsGeoCoding.Android.dll => 0xffe52f9073d1a898 => 0
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [240 x i32] [
	i32 64, i32 5, i32 54, i32 86, i32 87, i32 21, i32 73, i32 105, ; 0..7
	i32 110, i32 67, i32 24, i32 18, i32 63, i32 115, i32 101, i32 111, ; 8..15
	i32 103, i32 49, i32 33, i32 2, i32 42, i32 47, i32 75, i32 68, ; 16..23
	i32 48, i32 86, i32 45, i32 41, i32 74, i32 79, i32 52, i32 63, ; 24..31
	i32 119, i32 71, i32 58, i32 91, i32 11, i32 44, i32 12, i32 6, ; 32..39
	i32 83, i32 39, i32 97, i32 32, i32 103, i32 37, i32 70, i32 46, ; 40..47
	i32 10, i32 106, i32 89, i32 88, i32 9, i32 11, i32 113, i32 85, ; 48..55
	i32 64, i32 108, i32 43, i32 31, i32 23, i32 109, i32 93, i32 51, ; 56..63
	i32 44, i32 14, i32 88, i32 26, i32 36, i32 100, i32 38, i32 96, ; 64..71
	i32 77, i32 98, i32 34, i32 78, i32 91, i32 90, i32 57, i32 7, ; 72..79
	i32 95, i32 55, i32 22, i32 83, i32 72, i32 40, i32 101, i32 3, ; 80..87
	i32 36, i32 73, i32 71, i32 52, i32 61, i32 41, i32 119, i32 67, ; 88..95
	i32 13, i32 10, i32 69, i32 66, i32 107, i32 29, i32 13, i32 97, ; 96..103
	i32 96, i32 1, i32 0, i32 114, i32 23, i32 47, i32 112, i32 70, ; 104..111
	i32 22, i32 116, i32 4, i32 34, i32 20, i32 56, i32 82, i32 90, ; 112..119
	i32 4, i32 81, i32 118, i32 35, i32 31, i32 95, i32 48, i32 9, ; 120..127
	i32 58, i32 78, i32 5, i32 55, i32 115, i32 17, i32 105, i32 111, ; 128..135
	i32 1, i32 61, i32 35, i32 24, i32 89, i32 59, i32 32, i32 99, ; 136..143
	i32 49, i32 20, i32 7, i32 12, i32 94, i32 60, i32 25, i32 84, ; 144..151
	i32 98, i32 94, i32 69, i32 45, i32 113, i32 66, i32 39, i32 19, ; 152..159
	i32 92, i32 19, i32 25, i32 65, i32 76, i32 62, i32 53, i32 117, ; 160..167
	i32 54, i32 28, i32 110, i32 33, i32 2, i32 92, i32 56, i32 104, ; 168..175
	i32 50, i32 85, i32 114, i32 65, i32 100, i32 53, i32 79, i32 84, ; 176..183
	i32 27, i32 72, i32 77, i32 40, i32 104, i32 60, i32 117, i32 62, ; 184..191
	i32 15, i32 15, i32 16, i32 59, i32 37, i32 42, i32 75, i32 8, ; 192..199
	i32 87, i32 102, i32 14, i32 108, i32 8, i32 26, i32 112, i32 57, ; 200..207
	i32 82, i32 16, i32 116, i32 6, i32 28, i32 46, i32 80, i32 68, ; 208..215
	i32 30, i32 27, i32 43, i32 38, i32 51, i32 30, i32 76, i32 74, ; 216..223
	i32 17, i32 99, i32 21, i32 3, i32 102, i32 118, i32 18, i32 107, ; 224..231
	i32 106, i32 50, i32 80, i32 109, i32 29, i32 81, i32 93, i32 0 ; 240..239
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
