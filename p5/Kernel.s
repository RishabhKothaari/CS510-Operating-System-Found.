! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.export	_P_Kernel_StartUserProcess
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_HoareCondition
	.export	_Method_P_Kernel_HoareCondition_1
	.export	_Method_P_Kernel_HoareCondition_2
	.export	_Method_P_Kernel_HoareCondition_3
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	92
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_208:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_207:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_206:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_205:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_204:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_203:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_202:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_201:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_200:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_199:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_198:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_197:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_196:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_195:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_194:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_193:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_192:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_191:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_190:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_189:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_188:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_187:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_186:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_185:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_184:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_183:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_182:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_181:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_180:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_179:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_178:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_177:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_176:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_175:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_174:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_173:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_172:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_171:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_170:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_169:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_168:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_167:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_166:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_165:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_164:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_163:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_162:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_161:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_160:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_159:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_158:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_157:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_156:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_155:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_154:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_153:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_152:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_151:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_150:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_149:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_148:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_147:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_146:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_145:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_144:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_143:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_142:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_141:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_140:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_139:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_138:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_137:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_136:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_135:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_134:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_133:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_132:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_131:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_130:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_129:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_128:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_127:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_126:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_125:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_124:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_123:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_122:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_121:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_120:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_119:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_118:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_117:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_116:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_115:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_114:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_113:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_112:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_111:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_110:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_109:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_108:
	.word	9			! length
	.ascii	"thread - "
	.align
_StringConst_107:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_106:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_105:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_104:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_103:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_102:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_101:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_100:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_99:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_98:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_97:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_96:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_95:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_94:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_93:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_92:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_91:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_90:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_89:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_88:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_87:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_86:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_85:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_84:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_83:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_82:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_81:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_80:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_79:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_78:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_77:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_76:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_75:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_74:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_73:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_72:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_71:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_70:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_69:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_68:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_67:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_66:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_65:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_64:
	.word	25			! length
	.ascii	"Handle_Sys_Close invoked!"
	.align
_StringConst_63:
	.word	15			! length
	.ascii	"newCurrentPos ="
	.align
_StringConst_62:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_61:
	.word	24			! length
	.ascii	"Handle_Sys_Seek invoked!"
	.align
_StringConst_60:
	.word	11			! length
	.ascii	"sizeInBytes"
	.align
_StringConst_59:
	.word	25			! length
	.ascii	"Virtual Address of buffer"
	.align
_StringConst_58:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_57:
	.word	25			! length
	.ascii	"Handle_Sys_Write invoked!"
	.align
_StringConst_56:
	.word	11			! length
	.ascii	"sizeInBytes"
	.align
_StringConst_55:
	.word	25			! length
	.ascii	"Virtual Address of buffer"
	.align
_StringConst_54:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_53:
	.word	24			! length
	.ascii	"Handle_Sys_Read invoked!"
	.align
_StringConst_52:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_51:
	.word	22			! length
	.ascii	"virt addr of filename "
	.align
_StringConst_50:
	.word	24			! length
	.ascii	"Handle_Sys_Open invoked!"
	.align
_StringConst_49:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_48:
	.word	21			! length
	.ascii	"virt addr of filename"
	.align
_StringConst_47:
	.word	26			! length
	.ascii	"Handle_Sys_Create invoked!"
	.align
_StringConst_46:
	.word	12			! length
	.ascii	"processID = "
	.align
_StringConst_45:
	.word	24			! length
	.ascii	"Handle_Sys_Join invoked!"
	.align
_StringConst_44:
	.word	24			! length
	.ascii	"Handle_Sys_Fork invoked!"
	.align
_StringConst_43:
	.word	25			! length
	.ascii	"Handle_Sys_Yield invoked!"
	.align
_StringConst_42:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_41:
	.word	15			! length
	.ascii	"returnStatus = "
	.align
_StringConst_40:
	.word	24			! length
	.ascii	"Handle_Sys_Exit invoked!"
	.align
_StringConst_39:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_38:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_37:
	.word	41			! length
	.ascii	"Unrecoverable error.kernel process failed"
	.align
_StringConst_36:
	.word	20			! length
	.ascii	"File not found error"
	.align
_StringConst_35:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_34:
	.word	11			! length
	.ascii	"UserProgram"
	.align
_StringConst_33:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_32:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_31:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_30:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_28:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_24:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x9c19342d,r4		! myHashVal = -1676069843
	cmp	r3,r4
	be	_Label_216
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_216:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_217
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_217
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_217
_Label_217:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_3006:
	push	r0
	sub	r1,1,r1
	bne	_Label_3006
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_218 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_218  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3007:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3007
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_222 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_223 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_222  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_224 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_225 = _temp_224 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_225 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3008:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3008
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_227 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_228 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_227  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_229 = _function_215_IdleFunction
	set	_function_215_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_230 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_229  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_231
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_232
	.word	-12
	.word	4
	.word	_Label_233
	.word	-16
	.word	4
	.word	_Label_234
	.word	-20
	.word	4
	.word	_Label_235
	.word	-24
	.word	4
	.word	_Label_236
	.word	-28
	.word	4
	.word	_Label_237
	.word	-32
	.word	4
	.word	_Label_238
	.word	-36
	.word	4
	.word	_Label_239
	.word	-40
	.word	4
	.word	_Label_240
	.word	-44
	.word	4
	.word	_Label_241
	.word	-48
	.word	4
	.word	_Label_242
	.word	-52
	.word	4
	.word	_Label_243
	.word	-56
	.word	4
	.word	_Label_244
	.word	-60
	.word	4
	.word	0
_Label_231:
	.ascii	"InitializeScheduler\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_215_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_215_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3009:
	push	r0
	sub	r1,1,r1
	bne	_Label_3009
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_245:
!	jmp	_Label_246
_Label_246:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_250 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_248 else goto _Label_249
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_249
	jmp	_Label_248
_Label_248:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_251
_Label_249:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_251:
! END WHILE...
	jmp	_Label_245
_Label_247:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_215_IdleFunction:
	.word	_sourceFileName
	.word	_Label_252
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_253
	.word	8
	.word	4
	.word	_Label_254
	.word	-12
	.word	4
	.word	_Label_255
	.word	-16
	.word	4
	.word	0
_Label_252:
	.ascii	"IdleFunction\0"
	.align
_Label_253:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_255:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_3010:
	push	r0
	sub	r1,1,r1
	bne	_Label_3010
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_258 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_258 ) then goto _Label_257		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_257
!	jmp	_Label_256
_Label_256:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_260 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_260 [0 ] into _temp_261
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_259 = _temp_261		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_259  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_257:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_262 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_262 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_263:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_267 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_266  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_266 then goto _Label_265 else goto _Label_264
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_264
	jmp	_Label_265
_Label_264:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_268 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_269 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_263
_Label_265:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_272 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_272 ) then goto _Label_271		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_271
!	jmp	_Label_270
_Label_270:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_274 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_274 [0 ] into _temp_275
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_273 = _temp_275		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_273  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_277 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_276 = *_temp_277  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_276) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_278 = _temp_276 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_271:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_279
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_280
	.word	8
	.word	4
	.word	_Label_281
	.word	-16
	.word	4
	.word	_Label_282
	.word	-20
	.word	4
	.word	_Label_283
	.word	-24
	.word	4
	.word	_Label_284
	.word	-28
	.word	4
	.word	_Label_285
	.word	-32
	.word	4
	.word	_Label_286
	.word	-36
	.word	4
	.word	_Label_287
	.word	-40
	.word	4
	.word	_Label_288
	.word	-44
	.word	4
	.word	_Label_289
	.word	-48
	.word	4
	.word	_Label_290
	.word	-52
	.word	4
	.word	_Label_291
	.word	-9
	.word	1
	.word	_Label_292
	.word	-56
	.word	4
	.word	_Label_293
	.word	-60
	.word	4
	.word	_Label_294
	.word	-64
	.word	4
	.word	_Label_295
	.word	-68
	.word	4
	.word	_Label_296
	.word	-72
	.word	4
	.word	_Label_297
	.word	-76
	.word	4
	.word	_Label_298
	.word	-80
	.word	4
	.word	0
_Label_279:
	.ascii	"Run\0"
	.align
_Label_280:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_291:
	.byte	'C'
	.ascii	"_temp_266\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_297:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_298:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_3011:
	push	r0
	sub	r1,1,r1
	bne	_Label_3011
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_299 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_300 = _function_214_ThreadPrintShort
	set	_function_214_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_301 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_300  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_302
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_303
	.word	-12
	.word	4
	.word	_Label_304
	.word	-16
	.word	4
	.word	_Label_305
	.word	-20
	.word	4
	.word	_Label_306
	.word	-24
	.word	4
	.word	0
_Label_302:
	.ascii	"PrintReadyList\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_306:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_3012:
	push	r0
	sub	r1,1,r1
	bne	_Label_3012
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_307 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_307  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_309 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_308 = *_temp_309  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_310 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_311
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_312
	.word	-12
	.word	4
	.word	_Label_313
	.word	-16
	.word	4
	.word	_Label_314
	.word	-20
	.word	4
	.word	_Label_315
	.word	-24
	.word	4
	.word	_Label_316
	.word	-28
	.word	4
	.word	_Label_317
	.word	-32
	.word	4
	.word	0
_Label_311:
	.ascii	"ThreadStartMain\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_316:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_317:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_3013:
	push	r0
	sub	r1,1,r1
	bne	_Label_3013
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_318 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_319 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_319  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_320
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_321
	.word	-12
	.word	4
	.word	_Label_322
	.word	-16
	.word	4
	.word	_Label_323
	.word	-20
	.word	4
	.word	0
_Label_320:
	.ascii	"ThreadFinish\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_323:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_3014:
	push	r0
	sub	r1,1,r1
	bne	_Label_3014
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_324 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_326		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_326
!	jmp	_Label_325
_Label_325:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_327 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_329 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_328 = *_temp_329  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_326:
! CALL STATEMENT...
!   _temp_330 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_330  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_331 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_332 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_333
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_334
	.word	8
	.word	4
	.word	_Label_335
	.word	-12
	.word	4
	.word	_Label_336
	.word	-16
	.word	4
	.word	_Label_337
	.word	-20
	.word	4
	.word	_Label_338
	.word	-24
	.word	4
	.word	_Label_339
	.word	-28
	.word	4
	.word	_Label_340
	.word	-32
	.word	4
	.word	_Label_341
	.word	-36
	.word	4
	.word	_Label_342
	.word	-40
	.word	4
	.word	0
_Label_333:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_334:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_342:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_3015:
	push	r0
	sub	r1,1,r1
	bne	_Label_3015
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_344		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_344
!	jmp	_Label_343
_Label_343:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_345
_Label_344:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_345:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_346
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_347
	.word	8
	.word	4
	.word	_Label_348
	.word	-12
	.word	4
	.word	0
_Label_346:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_347:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_348:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_214_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_214_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3016:
	push	r0
	sub	r1,1,r1
	bne	_Label_3016
	mov	696,r13		! source line 696
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	703,r13		! source line 703
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_352		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_352
!   _temp_351 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_353
_Label_352:
!   _temp_351 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_353:
!   if _temp_351 then goto _Label_350 else goto _Label_349
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_349
	jmp	_Label_350
_Label_349:
! THEN...
	mov	705,r13		! source line 705
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_354 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_350:
! CALL STATEMENT...
!   _temp_355 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	708,r13		! source line 708
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_357 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_356 = *_temp_357  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_358 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	710,r13		! source line 710
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	711,r13		! source line 711
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_367 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_366 = *_temp_367  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_361
	cmp	r1,2
	be	_Label_362
	cmp	r1,3
	be	_Label_363
	cmp	r1,4
	be	_Label_364
	cmp	r1,5
	be	_Label_365
	jmp	_Label_359
! CASE 1...
_Label_361:
! CALL STATEMENT...
!   _temp_368 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_368  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	713,r13		! source line 713
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	714,r13		! source line 714
	mov	"\0\0BR",r10
	jmp	_Label_360
! CASE 2...
_Label_362:
! CALL STATEMENT...
!   _temp_369 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	717,r13		! source line 717
	mov	"\0\0BR",r10
	jmp	_Label_360
! CASE 3...
_Label_363:
! CALL STATEMENT...
!   _temp_370 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_370  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	719,r13		! source line 719
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	720,r13		! source line 720
	mov	"\0\0BR",r10
	jmp	_Label_360
! CASE 4...
_Label_364:
! CALL STATEMENT...
!   _temp_371 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	722,r13		! source line 722
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	723,r13		! source line 723
	mov	"\0\0BR",r10
	jmp	_Label_360
! CASE 5...
_Label_365:
! CALL STATEMENT...
!   _temp_372 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0BR",r10
	jmp	_Label_360
! DEFAULT CASE...
_Label_359:
! CALL STATEMENT...
!   _temp_373 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	728,r13		! source line 728
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_360:
! CALL STATEMENT...
!   _temp_374 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_375 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_376 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	732,r13		! source line 732
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	735,r13		! source line 735
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	735,r13		! source line 735
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_214_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_377
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_378
	.word	8
	.word	4
	.word	_Label_379
	.word	-16
	.word	4
	.word	_Label_380
	.word	-20
	.word	4
	.word	_Label_381
	.word	-24
	.word	4
	.word	_Label_382
	.word	-28
	.word	4
	.word	_Label_383
	.word	-32
	.word	4
	.word	_Label_384
	.word	-36
	.word	4
	.word	_Label_385
	.word	-40
	.word	4
	.word	_Label_386
	.word	-44
	.word	4
	.word	_Label_387
	.word	-48
	.word	4
	.word	_Label_388
	.word	-52
	.word	4
	.word	_Label_389
	.word	-56
	.word	4
	.word	_Label_390
	.word	-60
	.word	4
	.word	_Label_391
	.word	-64
	.word	4
	.word	_Label_392
	.word	-68
	.word	4
	.word	_Label_393
	.word	-72
	.word	4
	.word	_Label_394
	.word	-76
	.word	4
	.word	_Label_395
	.word	-9
	.word	1
	.word	_Label_396
	.word	-80
	.word	4
	.word	0
_Label_377:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_378:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_395:
	.byte	'C'
	.ascii	"_temp_351\0"
	.align
_Label_396:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_213_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_213_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3017:
	push	r0
	sub	r1,1,r1
	bne	_Label_3017
	mov	1024,r13		! source line 1024
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_397 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1028,r13		! source line 1028
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1029,r13		! source line 1029
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_213_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_398
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_399
	.word	8
	.word	4
	.word	_Label_400
	.word	-12
	.word	4
	.word	0
_Label_398:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_399:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_3018:
	push	r0
	sub	r1,1,r1
	bne	_Label_3018
	mov	1034,r13		! source line 1034
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_401 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_401  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1040,r13		! source line 1040
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_402
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_403
	.word	8
	.word	4
	.word	_Label_404
	.word	-12
	.word	4
	.word	0
_Label_402:
	.ascii	"ProcessFinish\0"
	.align
_Label_403:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_3019:
	push	r0
	sub	r1,1,r1
	bne	_Label_3019
	mov	1565,r13		! source line 1565
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1575,r13		! source line 1575
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1577,r13		! source line 1577
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1578,r13		! source line 1578
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1578,r13		! source line 1578
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_405
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_405:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_3020:
	push	r0
	sub	r1,1,r1
	bne	_Label_3020
	mov	1583,r13		! source line 1583
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1595,r13		! source line 1595
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1597,r13		! source line 1597
	mov	"\0\0IF",r10
!   _temp_409 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_410 = _temp_409 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_408 = *_temp_410  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_408 == 0 then goto _Label_407		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_407
!	jmp	_Label_406
_Label_406:
! THEN...
	mov	1598,r13		! source line 1598
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1598,r13		! source line 1598
	mov	"\0\0SE",r10
!   _temp_412 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_413 = _temp_412 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_411 = *_temp_413  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_411) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_407:
! RETURN STATEMENT...
	mov	1597,r13		! source line 1597
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_414
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_415
	.word	-12
	.word	4
	.word	_Label_416
	.word	-16
	.word	4
	.word	_Label_417
	.word	-20
	.word	4
	.word	_Label_418
	.word	-24
	.word	4
	.word	_Label_419
	.word	-28
	.word	4
	.word	_Label_420
	.word	-32
	.word	4
	.word	0
_Label_414:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1605,r13		! source line 1605
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1614,r13		! source line 1614
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1614,r13		! source line 1614
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_421
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_421:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3021:
	push	r0
	sub	r1,1,r1
	bne	_Label_3021
	mov	1619,r13		! source line 1619
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1625,r13		! source line 1625
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_422 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_422  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1626,r13		! source line 1626
	mov	"\0\0CA",r10
	call	_function_212_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1626,r13		! source line 1626
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_423
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_424
	.word	-12
	.word	4
	.word	0
_Label_423:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3022:
	push	r0
	sub	r1,1,r1
	bne	_Label_3022
	mov	1631,r13		! source line 1631
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1637,r13		! source line 1637
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_425 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_425  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1638,r13		! source line 1638
	mov	"\0\0CA",r10
	call	_function_212_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1638,r13		! source line 1638
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_426
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_427
	.word	-12
	.word	4
	.word	0
_Label_426:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3023:
	push	r0
	sub	r1,1,r1
	bne	_Label_3023
	mov	1643,r13		! source line 1643
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1649,r13		! source line 1649
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_428 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_428  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1650,r13		! source line 1650
	mov	"\0\0CA",r10
	call	_function_212_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1650,r13		! source line 1650
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_429
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_430
	.word	-12
	.word	4
	.word	0
_Label_429:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3024:
	push	r0
	sub	r1,1,r1
	bne	_Label_3024
	mov	1655,r13		! source line 1655
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1661,r13		! source line 1661
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_431 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_431  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1662,r13		! source line 1662
	mov	"\0\0CA",r10
	call	_function_212_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1662,r13		! source line 1662
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_432
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_433
	.word	-12
	.word	4
	.word	0
_Label_432:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3025:
	push	r0
	sub	r1,1,r1
	bne	_Label_3025
	mov	1667,r13		! source line 1667
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1673,r13		! source line 1673
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_434 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_434  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1674,r13		! source line 1674
	mov	"\0\0CA",r10
	call	_function_212_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1674,r13		! source line 1674
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_435
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_436
	.word	-12
	.word	4
	.word	0
_Label_435:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3026:
	push	r0
	sub	r1,1,r1
	bne	_Label_3026
	mov	1679,r13		! source line 1679
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1685,r13		! source line 1685
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_437 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_437  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1686,r13		! source line 1686
	mov	"\0\0CA",r10
	call	_function_212_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1686,r13		! source line 1686
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_438
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_439
	.word	-12
	.word	4
	.word	0
_Label_438:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3027:
	push	r0
	sub	r1,1,r1
	bne	_Label_3027
	mov	1691,r13		! source line 1691
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1697,r13		! source line 1697
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_440 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_440  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1698,r13		! source line 1698
	mov	"\0\0CA",r10
	call	_function_212_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1698,r13		! source line 1698
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_441
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_442
	.word	-12
	.word	4
	.word	0
_Label_441:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_212_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_212_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3028:
	push	r0
	sub	r1,1,r1
	bne	_Label_3028
	mov	1703,r13		! source line 1703
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_443 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_443  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1708,r13		! source line 1708
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1709,r13		! source line 1709
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_444 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_444  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1710,r13		! source line 1710
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1713,r13		! source line 1713
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_448 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_447 = *_temp_448  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_447 == 0 then goto _Label_446		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_446
!	jmp	_Label_445
_Label_445:
! THEN...
	mov	1714,r13		! source line 1714
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1714,r13		! source line 1714
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_450 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_449 = *_temp_450  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_449) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_451
_Label_446:
! ELSE...
	mov	1716,r13		! source line 1716
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_452 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_452  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1716,r13		! source line 1716
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_451:
! SEND STATEMENT...
	mov	1718,r13		! source line 1718
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1724,r13		! source line 1724
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1724,r13		! source line 1724
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_212_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_453
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_454
	.word	8
	.word	4
	.word	_Label_455
	.word	-12
	.word	4
	.word	_Label_456
	.word	-16
	.word	4
	.word	_Label_457
	.word	-20
	.word	4
	.word	_Label_458
	.word	-24
	.word	4
	.word	_Label_459
	.word	-28
	.word	4
	.word	_Label_460
	.word	-32
	.word	4
	.word	_Label_461
	.word	-36
	.word	4
	.word	0
_Label_453:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_454:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_3029:
	push	r0
	sub	r1,1,r1
	bne	_Label_3029
	mov	1730,r13		! source line 1730
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1736,r13		! source line 1736
	mov	"\0\0AS",r10
	mov	1736,r13		! source line 1736
	mov	"\0\0SE",r10
!   _temp_462 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t1  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	1737,r13		! source line 1737
	mov	"\0\0SE",r10
!   _temp_463 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-16]
!   if intIsZero (t1) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_463  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1738,r13		! source line 1738
	mov	"\0\0SE",r10
!   _temp_464 = _P_Kernel_StartUserProcess
	set	_P_Kernel_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (t1) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_464  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1738,r13		! source line 1738
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_465
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_466
	.word	-12
	.word	4
	.word	_Label_467
	.word	-16
	.word	4
	.word	_Label_468
	.word	-20
	.word	4
	.word	_Label_469
	.word	-24
	.word	4
	.word	0
_Label_465:
	.ascii	"InitFirstProcess\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_469:
	.byte	'P'
	.ascii	"t1\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_P_Kernel_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_StartUserProcess,r1
	push	r1
	mov	24,r1
_Label_3030:
	push	r0
	sub	r1,1,r1
	bne	_Label_3030
	mov	1746,r13		! source line 1746
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1759,r13		! source line 1759
	mov	"\0\0AS",r10
	mov	1759,r13		! source line 1759
	mov	"\0\0SE",r10
!   _temp_470 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   Send message GetANewProcess
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcbp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	1760,r13		! source line 1760
	mov	"\0\0AS",r10
!   if intIsZero (pcbp) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_471 = pcbp + 24
	load	[r14+-68],r1
	add	r1,24,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_471 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1761,r13		! source line 1761
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_472 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_472 = pcbp  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r14+-56],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1763,r13		! source line 1763
	mov	"\0\0AS",r10
!   if intIsZero (pcbp) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_473 = pcbp + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   addrSpace = _temp_473		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1764,r13		! source line 1764
	mov	"\0\0AS",r10
	mov	1764,r13		! source line 1764
	mov	"\0\0SE",r10
!   _temp_474 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-48]
!   _temp_475 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_474  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=ofp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! IF STATEMENT...
	mov	1766,r13		! source line 1766
	mov	"\0\0IF",r10
!   if intIsZero (ofp) then goto _Label_476
	load	[r14+-72],r1
	cmp	r1,r0
	be	_Label_476
	jmp	_Label_477
_Label_476:
! THEN...
	mov	1767,r13		! source line 1767
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_478 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_478  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1767,r13		! source line 1767
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_477:
! ASSIGNMENT STATEMENT...
	mov	1771,r13		! source line 1771
	mov	"\0\0AS",r10
	mov	1771,r13		! source line 1771
	mov	"\0\0SE",r10
!   if intIsZero (ofp) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_480		(int)
	load	[r14+-80],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_480
!	jmp	_Label_479
_Label_479:
! THEN...
	mov	1773,r13		! source line 1773
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_481 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_481  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1773,r13		! source line 1773
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_480:
! SEND STATEMENT...
	mov	1776,r13		! source line 1776
	mov	"\0\0SE",r10
!   _temp_482 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=ofp  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1777,r13		! source line 1777
	mov	"\0\0AS",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_484 = addrSpace + 4
	load	[r14+-76],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_483 = *_temp_484  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   initUserStackTop = _temp_483 * 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	1778,r13		! source line 1778
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_485 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_485 [999 ] into _temp_486
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   initSystemStackTop = _temp_486		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	1781,r13		! source line 1781
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1781,r13		! source line 1781
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	1782,r13		! source line 1782
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message SetToThisPageTable
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1783,r13		! source line 1783
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_487 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_487 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+8]
!   Call the function
	mov	1784,r13		! source line 1784
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1784,r13		! source line 1784
	mov	"\0\0RE",r10
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_488
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_489
	.word	8
	.word	4
	.word	_Label_490
	.word	-12
	.word	4
	.word	_Label_491
	.word	-16
	.word	4
	.word	_Label_492
	.word	-20
	.word	4
	.word	_Label_493
	.word	-24
	.word	4
	.word	_Label_494
	.word	-28
	.word	4
	.word	_Label_495
	.word	-32
	.word	4
	.word	_Label_496
	.word	-36
	.word	4
	.word	_Label_497
	.word	-40
	.word	4
	.word	_Label_498
	.word	-44
	.word	4
	.word	_Label_499
	.word	-48
	.word	4
	.word	_Label_500
	.word	-52
	.word	4
	.word	_Label_501
	.word	-56
	.word	4
	.word	_Label_502
	.word	-60
	.word	4
	.word	_Label_503
	.word	-64
	.word	4
	.word	_Label_504
	.word	-68
	.word	4
	.word	_Label_505
	.word	-72
	.word	4
	.word	_Label_506
	.word	-76
	.word	4
	.word	_Label_507
	.word	-80
	.word	4
	.word	_Label_508
	.word	-84
	.word	4
	.word	_Label_509
	.word	-88
	.word	4
	.word	_Label_510
	.word	-92
	.word	4
	.word	0
_Label_488:
	.ascii	"StartUserProcess\0"
	.align
_Label_489:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_504:
	.byte	'P'
	.ascii	"pcbp\0"
	.align
_Label_505:
	.byte	'P'
	.ascii	"ofp\0"
	.align
_Label_506:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_507:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_508:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_509:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_510:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_3031:
	push	r0
	sub	r1,1,r1
	bne	_Label_3031
	mov	1795,r13		! source line 1795
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1802,r13		! source line 1802
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1816,r13		! source line 1816
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3032
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_511
_Label_3032:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_511
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_511
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_525,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_525:
	jmp	_Label_517	! 1:	
	jmp	_Label_524	! 2:	
	jmp	_Label_514	! 3:	
	jmp	_Label_513	! 4:	
	jmp	_Label_516	! 5:	
	jmp	_Label_515	! 6:	
	jmp	_Label_518	! 7:	
	jmp	_Label_519	! 8:	
	jmp	_Label_520	! 9:	
	jmp	_Label_521	! 10:	
	jmp	_Label_522	! 11:	
	jmp	_Label_523	! 12:	
! CASE 4...
_Label_513:
! RETURN STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0RE",r10
!   Call the function
	mov	1818,r13		! source line 1818
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_526  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_526  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_514:
! CALL STATEMENT...
!   Call the function
	mov	1820,r13		! source line 1820
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1821,r13		! source line 1821
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_515:
! RETURN STATEMENT...
	mov	1823,r13		! source line 1823
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1823,r13		! source line 1823
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_527  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_527  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_516:
! RETURN STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1825,r13		! source line 1825
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_528  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_528  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_517:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1827,r13		! source line 1827
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1828,r13		! source line 1828
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_518:
! RETURN STATEMENT...
	mov	1830,r13		! source line 1830
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1830,r13		! source line 1830
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_529  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_529  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_519:
! RETURN STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1832,r13		! source line 1832
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_530  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_530  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_520:
! RETURN STATEMENT...
	mov	1834,r13		! source line 1834
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1834,r13		! source line 1834
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_531  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_531  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_521:
! RETURN STATEMENT...
	mov	1836,r13		! source line 1836
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1836,r13		! source line 1836
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_532  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_532  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_522:
! RETURN STATEMENT...
	mov	1838,r13		! source line 1838
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1838,r13		! source line 1838
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_533  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_533  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_523:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1840,r13		! source line 1840
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_524:
! CALL STATEMENT...
!   Call the function
	mov	1843,r13		! source line 1843
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1844,r13		! source line 1844
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_511:
! CALL STATEMENT...
!   _temp_534 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_534  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1846,r13		! source line 1846
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1847,r13		! source line 1847
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1848,r13		! source line 1848
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_535 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_535  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1849,r13		! source line 1849
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_512:
! RETURN STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_536
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_537
	.word	8
	.word	4
	.word	_Label_538
	.word	12
	.word	4
	.word	_Label_539
	.word	16
	.word	4
	.word	_Label_540
	.word	20
	.word	4
	.word	_Label_541
	.word	24
	.word	4
	.word	_Label_542
	.word	-12
	.word	4
	.word	_Label_543
	.word	-16
	.word	4
	.word	_Label_544
	.word	-20
	.word	4
	.word	_Label_545
	.word	-24
	.word	4
	.word	_Label_546
	.word	-28
	.word	4
	.word	_Label_547
	.word	-32
	.word	4
	.word	_Label_548
	.word	-36
	.word	4
	.word	_Label_549
	.word	-40
	.word	4
	.word	_Label_550
	.word	-44
	.word	4
	.word	_Label_551
	.word	-48
	.word	4
	.word	0
_Label_536:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_537:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_538:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_539:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_540:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_541:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	3,r1
_Label_3033:
	push	r0
	sub	r1,1,r1
	bne	_Label_3033
	mov	1856,r13		! source line 1856
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_552 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_552  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1858,r13		! source line 1858
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1859,r13		! source line 1859
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_553 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_553  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1860,r13		! source line 1860
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1861,r13		! source line 1861
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1862,r13		! source line 1862
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_554
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_555
	.word	8
	.word	4
	.word	_Label_556
	.word	-12
	.word	4
	.word	_Label_557
	.word	-16
	.word	4
	.word	0
_Label_554:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_555:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_3034:
	push	r0
	sub	r1,1,r1
	bne	_Label_3034
	mov	1867,r13		! source line 1867
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_558 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_558  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1869,r13		! source line 1869
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	1870,r13		! source line 1870
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1870,r13		! source line 1870
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_559
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_560
	.word	-12
	.word	4
	.word	0
_Label_559:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	2,r1
_Label_3035:
	push	r0
	sub	r1,1,r1
	bne	_Label_3035
	mov	1875,r13		! source line 1875
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_561 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_561  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1877,r13		! source line 1877
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1878,r13		! source line 1878
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_562
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_563
	.word	-12
	.word	4
	.word	0
_Label_562:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	2,r1
_Label_3036:
	push	r0
	sub	r1,1,r1
	bne	_Label_3036
	mov	1883,r13		! source line 1883
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_564 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_564  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1885,r13		! source line 1885
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1886,r13		! source line 1886
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_565
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_566
	.word	-12
	.word	4
	.word	0
_Label_565:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	3,r1
_Label_3037:
	push	r0
	sub	r1,1,r1
	bne	_Label_3037
	mov	1892,r13		! source line 1892
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_567 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_567  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1894,r13		! source line 1894
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1895,r13		! source line 1895
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_568 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_568  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1896,r13		! source line 1896
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1897,r13		! source line 1897
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1899,r13		! source line 1899
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_569
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_570
	.word	8
	.word	4
	.word	_Label_571
	.word	-12
	.word	4
	.word	_Label_572
	.word	-16
	.word	4
	.word	0
_Label_569:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_570:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	65,r1
_Label_3038:
	push	r0
	sub	r1,1,r1
	bne	_Label_3038
	mov	1904,r13		! source line 1904
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-228,r4
	mov	23,r3
_Label_3039:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3039
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-228]
! SEND STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0SE",r10
!   _temp_574 = &newAddrSpace
	add	r14,-228,r1
	store	r1,[r14+-108]
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0AS",r10
	mov	1917,r13		! source line 1917
	mov	"\0\0SE",r10
!   _temp_575 = &strBuffer
	add	r14,-136,r1
	store	r1,[r14+-104]
!   _temp_576 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_578 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_577 = *_temp_578  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_577) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_579 = _temp_577 + 32
	load	[r14+-96],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_575  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_576  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=a  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	1919,r13		! source line 1919
	mov	"\0\0IF",r10
!   if a >= 0 then goto _Label_581		(int)
	load	[r14+-252],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_581
!	jmp	_Label_580
_Label_580:
! THEN...
	mov	1920,r13		! source line 1920
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1920,r13		! source line 1920
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_581:
! ASSIGNMENT STATEMENT...
	mov	1924,r13		! source line 1924
	mov	"\0\0AS",r10
	mov	1924,r13		! source line 1924
	mov	"\0\0SE",r10
!   _temp_582 = &strBuffer
	add	r14,-136,r1
	store	r1,[r14+-84]
!   _temp_583 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_582  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=ofp  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! IF STATEMENT...
	mov	1925,r13		! source line 1925
	mov	"\0\0IF",r10
!   if intIsZero (ofp) then goto _Label_584
	load	[r14+-232],r1
	cmp	r1,r0
	be	_Label_584
	jmp	_Label_585
_Label_584:
! THEN...
	mov	1926,r13		! source line 1926
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1926,r13		! source line 1926
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_585:
! ASSIGNMENT STATEMENT...
	mov	1929,r13		! source line 1929
	mov	"\0\0AS",r10
	mov	1929,r13		! source line 1929
	mov	"\0\0SE",r10
!   _temp_586 = &newAddrSpace
	add	r14,-228,r1
	store	r1,[r14+-76]
!   if intIsZero (ofp) then goto _runtimeErrorNullPointer
	load	[r14+-232],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_586  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-232],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! IF STATEMENT...
	mov	1930,r13		! source line 1930
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_588		(int)
	load	[r14+-236],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_588
!	jmp	_Label_587
_Label_587:
! THEN...
	mov	1931,r13		! source line 1931
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1931,r13		! source line 1931
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_588:
! SEND STATEMENT...
	mov	1934,r13		! source line 1934
	mov	"\0\0SE",r10
!   _temp_589 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=ofp  sizeInBytes=4
	load	[r14+-232],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1936,r13		! source line 1936
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_592 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_591 = *_temp_592  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_591) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_593 = _temp_591 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   _temp_590 = _temp_593		(4 bytes)
	load	[r14+-56],r1
	store	r1,[r14+-68]
!   _temp_594 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_590  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1937,r13		! source line 1937
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_596 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_595 = *_temp_596  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_595) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_597 = _temp_595 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_597 = newAddrSpace  (sizeInBytes=92)
	add	r14,-228,r5
	load	[r14+-40],r4
	mov	23,r3
_Label_3040:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3040
! ASSIGNMENT STATEMENT...
	mov	1939,r13		! source line 1939
	mov	"\0\0AS",r10
!   _temp_599 = &newAddrSpace
	add	r14,-228,r1
	store	r1,[r14+-32]
!   _temp_600 = _temp_599 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_598 = *_temp_600  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_598 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_601 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_601 [999 ] into _temp_602
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   initSystemStackTop = _temp_602		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	1942,r13		! source line 1942
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1942,r13		! source line 1942
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! SEND STATEMENT...
	mov	1943,r13		! source line 1943
	mov	"\0\0SE",r10
!   _temp_603 = &newAddrSpace
	add	r14,-228,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_604 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_604 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-236],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-244],r1
	store	r1,[r15+8]
!   Call the function
	mov	1945,r13		! source line 1945
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1947,r13		! source line 1947
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_605
	.word	4		! total size of parameters
	.word	260		! frame size = 260
	.word	_Label_606
	.word	8
	.word	4
	.word	_Label_607
	.word	-12
	.word	4
	.word	_Label_608
	.word	-16
	.word	4
	.word	_Label_609
	.word	-20
	.word	4
	.word	_Label_610
	.word	-24
	.word	4
	.word	_Label_611
	.word	-28
	.word	4
	.word	_Label_612
	.word	-32
	.word	4
	.word	_Label_613
	.word	-36
	.word	4
	.word	_Label_614
	.word	-40
	.word	4
	.word	_Label_615
	.word	-44
	.word	4
	.word	_Label_616
	.word	-48
	.word	4
	.word	_Label_617
	.word	-52
	.word	4
	.word	_Label_618
	.word	-56
	.word	4
	.word	_Label_619
	.word	-60
	.word	4
	.word	_Label_620
	.word	-64
	.word	4
	.word	_Label_621
	.word	-68
	.word	4
	.word	_Label_622
	.word	-72
	.word	4
	.word	_Label_623
	.word	-76
	.word	4
	.word	_Label_624
	.word	-80
	.word	4
	.word	_Label_625
	.word	-84
	.word	4
	.word	_Label_626
	.word	-88
	.word	4
	.word	_Label_627
	.word	-92
	.word	4
	.word	_Label_628
	.word	-96
	.word	4
	.word	_Label_629
	.word	-100
	.word	4
	.word	_Label_630
	.word	-104
	.word	4
	.word	_Label_631
	.word	-108
	.word	4
	.word	_Label_632
	.word	-112
	.word	4
	.word	_Label_633
	.word	-136
	.word	24
	.word	_Label_634
	.word	-228
	.word	92
	.word	_Label_635
	.word	-232
	.word	4
	.word	_Label_636
	.word	-236
	.word	4
	.word	_Label_637
	.word	-240
	.word	4
	.word	_Label_638
	.word	-244
	.word	4
	.word	_Label_639
	.word	-248
	.word	4
	.word	_Label_640
	.word	-252
	.word	4
	.word	0
_Label_605:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_606:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_633:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_634:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_635:
	.byte	'P'
	.ascii	"ofp\0"
	.align
_Label_636:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_637:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_638:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_639:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
_Label_640:
	.byte	'I'
	.ascii	"a\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	20,r1
_Label_3041:
	push	r0
	sub	r1,1,r1
	bne	_Label_3041
	mov	1953,r13		! source line 1953
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_641 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_641  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1959,r13		! source line 1959
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1960,r13		! source line 1960
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1961,r13		! source line 1961
	mov	"\0\0AS",r10
	mov	1961,r13		! source line 1961
	mov	"\0\0SE",r10
!   _temp_642 = &strBuffer
	add	r14,-68,r1
	store	r1,[r14+-40]
!   _temp_643 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_645 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_644 = *_temp_645  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_644) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_646 = _temp_644 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_642  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_643  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=a  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! IF STATEMENT...
	mov	1962,r13		! source line 1962
	mov	"\0\0IF",r10
!   if a >= 0 then goto _Label_648		(int)
	load	[r14+-72],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_648
!	jmp	_Label_647
_Label_647:
! THEN...
	mov	1963,r13		! source line 1963
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1963,r13		! source line 1963
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_648:
! CALL STATEMENT...
!   _temp_649 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_649  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	1966,r13		! source line 1966
	mov	"\0\0CA",r10
	call	_P_System_printPtr
! CALL STATEMENT...
!   _temp_650 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_650  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1967,r13		! source line 1967
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_651 = &strBuffer
	add	r14,-68,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_651  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1968,r13		! source line 1968
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1969,r13		! source line 1969
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1970,r13		! source line 1970
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_652
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_653
	.word	8
	.word	4
	.word	_Label_654
	.word	-12
	.word	4
	.word	_Label_655
	.word	-16
	.word	4
	.word	_Label_656
	.word	-20
	.word	4
	.word	_Label_657
	.word	-24
	.word	4
	.word	_Label_658
	.word	-28
	.word	4
	.word	_Label_659
	.word	-32
	.word	4
	.word	_Label_660
	.word	-36
	.word	4
	.word	_Label_661
	.word	-40
	.word	4
	.word	_Label_662
	.word	-44
	.word	4
	.word	_Label_663
	.word	-68
	.word	24
	.word	_Label_664
	.word	-72
	.word	4
	.word	0
_Label_652:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_653:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_663:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_664:
	.byte	'I'
	.ascii	"a\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	20,r1
_Label_3042:
	push	r0
	sub	r1,1,r1
	bne	_Label_3042
	mov	1975,r13		! source line 1975
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_665 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_665  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1981,r13		! source line 1981
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1982,r13		! source line 1982
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1983,r13		! source line 1983
	mov	"\0\0AS",r10
	mov	1983,r13		! source line 1983
	mov	"\0\0SE",r10
!   _temp_666 = &kerbuffer
	add	r14,-68,r1
	store	r1,[r14+-40]
!   _temp_667 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_669 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_668 = *_temp_669  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_668) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_670 = _temp_668 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_666  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_667  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=a  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! IF STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0IF",r10
!   if a >= 0 then goto _Label_672		(int)
	load	[r14+-72],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_672
!	jmp	_Label_671
_Label_671:
! THEN...
	mov	1985,r13		! source line 1985
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1985,r13		! source line 1985
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_672:
! CALL STATEMENT...
!   _temp_673 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_673  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	1988,r13		! source line 1988
	mov	"\0\0CA",r10
	call	_P_System_printPtr
! CALL STATEMENT...
!   _temp_674 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_674  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1989,r13		! source line 1989
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_675 = &kerbuffer
	add	r14,-68,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_675  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1990,r13		! source line 1990
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1991,r13		! source line 1991
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1992,r13		! source line 1992
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_676
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_677
	.word	8
	.word	4
	.word	_Label_678
	.word	-12
	.word	4
	.word	_Label_679
	.word	-16
	.word	4
	.word	_Label_680
	.word	-20
	.word	4
	.word	_Label_681
	.word	-24
	.word	4
	.word	_Label_682
	.word	-28
	.word	4
	.word	_Label_683
	.word	-32
	.word	4
	.word	_Label_684
	.word	-36
	.word	4
	.word	_Label_685
	.word	-40
	.word	4
	.word	_Label_686
	.word	-44
	.word	4
	.word	_Label_687
	.word	-68
	.word	24
	.word	_Label_688
	.word	-72
	.word	4
	.word	0
_Label_676:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_677:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_687:
	.byte	'A'
	.ascii	"kerbuffer\0"
	.align
_Label_688:
	.byte	'I'
	.ascii	"a\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	6,r1
_Label_3043:
	push	r0
	sub	r1,1,r1
	bne	_Label_3043
	mov	1997,r13		! source line 1997
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_689 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_689  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1999,r13		! source line 1999
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2000,r13		! source line 2000
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_690 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_690  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2001,r13		! source line 2001
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2002,r13		! source line 2002
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2003,r13		! source line 2003
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_691 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_691  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=buffer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Call the function
	mov	2004,r13		! source line 2004
	mov	"\0\0CA",r10
	call	_P_System_printPtr
! CALL STATEMENT...
!   _temp_692 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_692  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2005,r13		! source line 2005
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   Call the function
	mov	2006,r13		! source line 2006
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2007,r13		! source line 2007
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_693
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_694
	.word	8
	.word	4
	.word	_Label_695
	.word	12
	.word	4
	.word	_Label_696
	.word	16
	.word	4
	.word	_Label_697
	.word	-12
	.word	4
	.word	_Label_698
	.word	-16
	.word	4
	.word	_Label_699
	.word	-20
	.word	4
	.word	_Label_700
	.word	-24
	.word	4
	.word	0
_Label_693:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_694:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_695:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_696:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	6,r1
_Label_3044:
	push	r0
	sub	r1,1,r1
	bne	_Label_3044
	mov	2012,r13		! source line 2012
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_701 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_701  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2014,r13		! source line 2014
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2015,r13		! source line 2015
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_702 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2016,r13		! source line 2016
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2017,r13		! source line 2017
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2018,r13		! source line 2018
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_703 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_703  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=buffer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Call the function
	mov	2019,r13		! source line 2019
	mov	"\0\0CA",r10
	call	_P_System_printPtr
! CALL STATEMENT...
!   _temp_704 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_704  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2020,r13		! source line 2020
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   Call the function
	mov	2021,r13		! source line 2021
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_705
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_706
	.word	8
	.word	4
	.word	_Label_707
	.word	12
	.word	4
	.word	_Label_708
	.word	16
	.word	4
	.word	_Label_709
	.word	-12
	.word	4
	.word	_Label_710
	.word	-16
	.word	4
	.word	_Label_711
	.word	-20
	.word	4
	.word	_Label_712
	.word	-24
	.word	4
	.word	0
_Label_705:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_706:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_707:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_708:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	4,r1
_Label_3045:
	push	r0
	sub	r1,1,r1
	bne	_Label_3045
	mov	2027,r13		! source line 2027
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_713 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2029,r13		! source line 2029
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2030,r13		! source line 2030
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_714 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_714  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2031,r13		! source line 2031
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2032,r13		! source line 2032
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2033,r13		! source line 2033
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_715 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_715  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2034,r13		! source line 2034
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2035,r13		! source line 2035
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2036,r13		! source line 2036
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_716
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_717
	.word	8
	.word	4
	.word	_Label_718
	.word	12
	.word	4
	.word	_Label_719
	.word	-12
	.word	4
	.word	_Label_720
	.word	-16
	.word	4
	.word	_Label_721
	.word	-20
	.word	4
	.word	0
_Label_716:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_717:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_718:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	3,r1
_Label_3046:
	push	r0
	sub	r1,1,r1
	bne	_Label_3046
	mov	2042,r13		! source line 2042
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_722 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_722  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2044,r13		! source line 2044
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2045,r13		! source line 2045
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_723 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_723  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2046,r13		! source line 2046
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	2047,r13		! source line 2047
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2048,r13		! source line 2048
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_724
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_725
	.word	8
	.word	4
	.word	_Label_726
	.word	-12
	.word	4
	.word	_Label_727
	.word	-16
	.word	4
	.word	0
_Label_724:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_725:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_211_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_211_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3047:
	push	r0
	sub	r1,1,r1
	bne	_Label_3047
	mov	2639,r13		! source line 2639
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2641,r13		! source line 2641
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2643,r13		! source line 2643
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_728 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_728  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2644,r13		! source line 2644
	mov	"\0\0AS",r10
!   _temp_729 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_729) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_731 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_731) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_730 = *_temp_731  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_729 = _temp_730  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0AS",r10
!   _temp_732 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_732) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_734 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_734) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_733 = *_temp_734  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_732 = _temp_733  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2646,r13		! source line 2646
	mov	"\0\0AS",r10
!   _temp_735 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_735) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_737 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_737) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_736 = *_temp_737  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_735 = _temp_736  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2646,r13		! source line 2646
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_211_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_738
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_739
	.word	8
	.word	4
	.word	_Label_740
	.word	12
	.word	4
	.word	_Label_741
	.word	-16
	.word	4
	.word	_Label_742
	.word	-9
	.word	1
	.word	_Label_743
	.word	-20
	.word	4
	.word	_Label_744
	.word	-24
	.word	4
	.word	_Label_745
	.word	-10
	.word	1
	.word	_Label_746
	.word	-28
	.word	4
	.word	_Label_747
	.word	-32
	.word	4
	.word	_Label_748
	.word	-11
	.word	1
	.word	_Label_749
	.word	-36
	.word	4
	.word	_Label_750
	.word	-12
	.word	1
	.word	_Label_751
	.word	-40
	.word	4
	.word	_Label_752
	.word	-44
	.word	4
	.word	0
_Label_738:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_739:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_740:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_741:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_742:
	.byte	'C'
	.ascii	"_temp_736\0"
	.align
_Label_743:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_745:
	.byte	'C'
	.ascii	"_temp_733\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_748:
	.byte	'C'
	.ascii	"_temp_730\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_750:
	.byte	'C'
	.ascii	"_temp_728\0"
	.align
_Label_751:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_752:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_210_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_210_printFCB,r1
	push	r1
	mov	3,r1
_Label_3048:
	push	r0
	sub	r1,1,r1
	bne	_Label_3048
	mov	2649,r13		! source line 2649
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_754 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_753 = *_temp_754  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_753  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2650,r13		! source line 2650
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2651,r13		! source line 2651
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_210_printFCB:
	.word	_sourceFileName
	.word	_Label_755
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_756
	.word	8
	.word	4
	.word	_Label_757
	.word	-12
	.word	4
	.word	_Label_758
	.word	-16
	.word	4
	.word	0
_Label_755:
	.ascii	"printFCB\0"
	.align
_Label_756:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_209_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_209_printOpen,r1
	push	r1
	mov	4,r1
_Label_3049:
	push	r0
	sub	r1,1,r1
	bne	_Label_3049
	mov	2654,r13		! source line 2654
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_759 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_759  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2655,r13		! source line 2655
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_760 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_760  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2656,r13		! source line 2656
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_761 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_761  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2657,r13		! source line 2657
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_209_printOpen:
	.word	_sourceFileName
	.word	_Label_762
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_763
	.word	8
	.word	4
	.word	_Label_764
	.word	-12
	.word	4
	.word	_Label_765
	.word	-16
	.word	4
	.word	_Label_766
	.word	-20
	.word	4
	.word	0
_Label_762:
	.ascii	"printOpen\0"
	.align
_Label_763:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_767
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_767:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_768
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_768:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_3050:
	push	r0
	sub	r1,1,r1
	bne	_Label_3050
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_770		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_770
!	jmp	_Label_769
_Label_769:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_771 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_771  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_770:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_773
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_774
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_775
	.word	12
	.word	4
	.word	_Label_776
	.word	-12
	.word	4
	.word	_Label_777
	.word	-16
	.word	4
	.word	0
_Label_773:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_774:
	.ascii	"Pself\0"
	.align
_Label_775:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_3051:
	push	r0
	sub	r1,1,r1
	bne	_Label_3051
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_779		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_779
!	jmp	_Label_778
_Label_778:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_780 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_780  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_779:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_782		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_782
!	jmp	_Label_781
_Label_781:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_783 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_784 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_784 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_785 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_782:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_786
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_787
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_788
	.word	-12
	.word	4
	.word	_Label_789
	.word	-16
	.word	4
	.word	_Label_790
	.word	-20
	.word	4
	.word	_Label_791
	.word	-24
	.word	4
	.word	_Label_792
	.word	-28
	.word	4
	.word	_Label_793
	.word	-32
	.word	4
	.word	0
_Label_786:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_787:
	.ascii	"Pself\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_792:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_793:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_3052:
	push	r0
	sub	r1,1,r1
	bne	_Label_3052
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_795		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_795
!	jmp	_Label_794
_Label_794:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_796 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_796  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_795:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_798		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_798
!	jmp	_Label_797
_Label_797:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_799 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_798:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_800
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_801
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_802
	.word	-12
	.word	4
	.word	_Label_803
	.word	-16
	.word	4
	.word	_Label_804
	.word	-20
	.word	4
	.word	0
_Label_800:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_801:
	.ascii	"Pself\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_804:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_805
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_805:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_806
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_806:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_3053:
	push	r0
	sub	r1,1,r1
	bne	_Label_3053
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_808
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_809
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_810
	.word	-12
	.word	4
	.word	0
_Label_808:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_809:
	.ascii	"Pself\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_3054:
	push	r0
	sub	r1,1,r1
	bne	_Label_3054
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_812		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_812
!	jmp	_Label_811
_Label_811:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_813 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_813  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_812:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_817		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_817
!   _temp_816 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_818
_Label_817:
!   _temp_816 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_818:
!   if _temp_816 then goto _Label_815 else goto _Label_814
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_814
	jmp	_Label_815
_Label_814:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_819
_Label_815:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_820 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_819:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_821
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_822
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_823
	.word	-16
	.word	4
	.word	_Label_824
	.word	-9
	.word	1
	.word	_Label_825
	.word	-20
	.word	4
	.word	_Label_826
	.word	-24
	.word	4
	.word	0
_Label_821:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_822:
	.ascii	"Pself\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_820\0"
	.align
_Label_824:
	.byte	'C'
	.ascii	"_temp_816\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_826:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_3055:
	push	r0
	sub	r1,1,r1
	bne	_Label_3055
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_828		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_828
!	jmp	_Label_827
_Label_827:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_829 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_829  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	323,r13		! source line 323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_828:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_830 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_832		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_832
!	jmp	_Label_831
_Label_831:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_833 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_833 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_834 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_835
_Label_832:
! ELSE...
	mov	332,r13		! source line 332
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_835:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_836
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_837
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_838
	.word	-12
	.word	4
	.word	_Label_839
	.word	-16
	.word	4
	.word	_Label_840
	.word	-20
	.word	4
	.word	_Label_841
	.word	-24
	.word	4
	.word	_Label_842
	.word	-28
	.word	4
	.word	_Label_843
	.word	-32
	.word	4
	.word	0
_Label_836:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_837:
	.ascii	"Pself\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_842:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_843:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_3056:
	push	r0
	sub	r1,1,r1
	bne	_Label_3056
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_846		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_846
!	jmp	_Label_845
_Label_845:
!   _temp_844 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_847
_Label_846:
!   _temp_844 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_847:
!   ReturnResult: _temp_844  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_848
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_849
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_850
	.word	-9
	.word	1
	.word	0
_Label_848:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_849:
	.ascii	"Pself\0"
	.align
_Label_850:
	.byte	'C'
	.ascii	"_temp_844\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_851
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_851:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_852
	.word	_sourceFileName
	.word	153		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_852:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_3057:
	push	r0
	sub	r1,1,r1
	bne	_Label_3057
	mov	380,r13		! source line 380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_854
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_855
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_856
	.word	-12
	.word	4
	.word	0
_Label_854:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_855:
	.ascii	"Pself\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_853\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_3058:
	push	r0
	sub	r1,1,r1
	bne	_Label_3058
	mov	386,r13		! source line 386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0IF",r10
	mov	389,r13		! source line 389
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_859  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_859 then goto _Label_858 else goto _Label_857
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_857
	jmp	_Label_858
_Label_857:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_860 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_860  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	390,r13		! source line 390
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_858:
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
!   _temp_861 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_862
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_863
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_864
	.word	12
	.word	4
	.word	_Label_865
	.word	-16
	.word	4
	.word	_Label_866
	.word	-20
	.word	4
	.word	_Label_867
	.word	-9
	.word	1
	.word	_Label_868
	.word	-24
	.word	4
	.word	0
_Label_862:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_863:
	.ascii	"Pself\0"
	.align
_Label_864:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_867:
	.byte	'C'
	.ascii	"_temp_859\0"
	.align
_Label_868:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_3059:
	push	r0
	sub	r1,1,r1
	bne	_Label_3059
	mov	402,r13		! source line 402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0IF",r10
	mov	406,r13		! source line 406
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_871  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_871 then goto _Label_870 else goto _Label_869
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_869
	jmp	_Label_870
_Label_869:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_872 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_872  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	407,r13		! source line 407
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_870:
! ASSIGNMENT STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	409,r13		! source line 409
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
	mov	410,r13		! source line 410
	mov	"\0\0SE",r10
!   _temp_873 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_875		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_875
!	jmp	_Label_874
_Label_874:
! THEN...
	mov	412,r13		! source line 412
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_876 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_876 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_877 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_875:
! ASSIGNMENT STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	415,r13		! source line 415
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_878
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_879
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_880
	.word	12
	.word	4
	.word	_Label_881
	.word	-16
	.word	4
	.word	_Label_882
	.word	-20
	.word	4
	.word	_Label_883
	.word	-24
	.word	4
	.word	_Label_884
	.word	-28
	.word	4
	.word	_Label_885
	.word	-9
	.word	1
	.word	_Label_886
	.word	-32
	.word	4
	.word	_Label_887
	.word	-36
	.word	4
	.word	0
_Label_878:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_879:
	.ascii	"Pself\0"
	.align
_Label_880:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_877\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_873\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_885:
	.byte	'C'
	.ascii	"_temp_871\0"
	.align
_Label_886:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_887:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_3060:
	push	r0
	sub	r1,1,r1
	bne	_Label_3060
	mov	420,r13		! source line 420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0IF",r10
	mov	424,r13		! source line 424
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_890  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_890 then goto _Label_889 else goto _Label_888
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_888
	jmp	_Label_889
_Label_888:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_891 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_891  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	425,r13		! source line 425
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_889:
! ASSIGNMENT STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0WH",r10
_Label_892:
!	jmp	_Label_893
_Label_893:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_895 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_896
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_896
	jmp	_Label_897
_Label_896:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0BR",r10
	jmp	_Label_894
! END IF...
_Label_897:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_898 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_898 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_899 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_892
_Label_894:
! ASSIGNMENT STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	436,r13		! source line 436
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_900
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_901
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_902
	.word	12
	.word	4
	.word	_Label_903
	.word	-16
	.word	4
	.word	_Label_904
	.word	-20
	.word	4
	.word	_Label_905
	.word	-24
	.word	4
	.word	_Label_906
	.word	-28
	.word	4
	.word	_Label_907
	.word	-9
	.word	1
	.word	_Label_908
	.word	-32
	.word	4
	.word	_Label_909
	.word	-36
	.word	4
	.word	0
_Label_900:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_901:
	.ascii	"Pself\0"
	.align
_Label_902:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_903:
	.byte	'?'
	.ascii	"_temp_899\0"
	.align
_Label_904:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_905:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_907:
	.byte	'C'
	.ascii	"_temp_890\0"
	.align
_Label_908:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_909:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_910
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	.word	0
! 
! Class descriptor:
! 
_Label_910:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_911
	.word	_sourceFileName
	.word	167		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_911:
	.ascii	"HoareCondition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareCondition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_1,r1
	push	r1
	mov	1,r1
_Label_3061:
	push	r0
	sub	r1,1,r1
	bne	_Label_3061
	mov	447,r13		! source line 447
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	448,r13		! source line 448
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	448,r13		! source line 448
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_1:
	.word	_sourceFileName
	.word	_Label_913
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_914
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_915
	.word	-12
	.word	4
	.word	0
_Label_913:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_914:
	.ascii	"Pself\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_HoareCondition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_2,r1
	push	r1
	mov	6,r1
_Label_3062:
	push	r0
	sub	r1,1,r1
	bne	_Label_3062
	mov	453,r13		! source line 453
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0IF",r10
	mov	456,r13		! source line 456
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_918  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_918 then goto _Label_917 else goto _Label_916
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_916
	jmp	_Label_917
_Label_916:
! THEN...
	mov	457,r13		! source line 457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_919 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_919  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	457,r13		! source line 457
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_917:
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	459,r13		! source line 459
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0SE",r10
!   _temp_920 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	463,r13		! source line 463
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_2:
	.word	_sourceFileName
	.word	_Label_921
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_922
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_923
	.word	12
	.word	4
	.word	_Label_924
	.word	-16
	.word	4
	.word	_Label_925
	.word	-20
	.word	4
	.word	_Label_926
	.word	-9
	.word	1
	.word	_Label_927
	.word	-24
	.word	4
	.word	0
_Label_921:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_922:
	.ascii	"Pself\0"
	.align
_Label_923:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_926:
	.byte	'C'
	.ascii	"_temp_918\0"
	.align
_Label_927:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_HoareCondition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_3,r1
	push	r1
	mov	13,r1
_Label_3063:
	push	r0
	sub	r1,1,r1
	bne	_Label_3063
	mov	468,r13		! source line 468
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0IF",r10
	mov	474,r13		! source line 474
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_930  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_930 then goto _Label_929 else goto _Label_928
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_928
	jmp	_Label_929
_Label_928:
! THEN...
	mov	475,r13		! source line 475
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_931 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_931  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	475,r13		! source line 475
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_929:
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	477,r13		! source line 477
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_932 = mutex + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Data Move: mt = *_temp_932  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0AS",r10
	mov	479,r13		! source line 479
	mov	"\0\0SE",r10
!   _temp_933 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Remove
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_935		(int)
	load	[r14+-48],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_935
!	jmp	_Label_934
_Label_934:
! THEN...
	mov	482,r13		! source line 482
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_936 = t + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_936 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-28],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_937 = mutex + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_937 = t  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0SE",r10
!   _temp_938 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_935:
! SEND STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0SE",r10
!   _temp_939 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=mt  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0SE",r10
!   if intIsZero (mt) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	492,r13		! source line 492
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	492,r13		! source line 492
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	492,r13		! source line 492
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_3:
	.word	_sourceFileName
	.word	_Label_940
	.word	8		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_941
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_942
	.word	12
	.word	4
	.word	_Label_943
	.word	-16
	.word	4
	.word	_Label_944
	.word	-20
	.word	4
	.word	_Label_945
	.word	-24
	.word	4
	.word	_Label_946
	.word	-28
	.word	4
	.word	_Label_947
	.word	-32
	.word	4
	.word	_Label_948
	.word	-36
	.word	4
	.word	_Label_949
	.word	-40
	.word	4
	.word	_Label_950
	.word	-9
	.word	1
	.word	_Label_951
	.word	-44
	.word	4
	.word	_Label_952
	.word	-48
	.word	4
	.word	_Label_953
	.word	-52
	.word	4
	.word	0
_Label_940:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_941:
	.ascii	"Pself\0"
	.align
_Label_942:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_950:
	.byte	'C'
	.ascii	"_temp_930\0"
	.align
_Label_951:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_952:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_953:
	.byte	'P'
	.ascii	"mt\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_954
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_954:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_955
	.word	_sourceFileName
	.word	182		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_955:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_3064:
	push	r0
	sub	r1,1,r1
	bne	_Label_3064
	mov	503,r13		! source line 503
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	511,r13		! source line 511
	mov	"\0\0AS",r10
!   _temp_956 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_956) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_956 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0AS",r10
!   _temp_957 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_957 [0 ] into _temp_958
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_958 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	513,r13		! source line 513
	mov	"\0\0AS",r10
!   _temp_959 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_959 [999 ] into _temp_960
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_960 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0AS",r10
!   _temp_961 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_961 [999 ] into _temp_962
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_962		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0AS",r10
!   _temp_963 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_965 = &_temp_964
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_965 = _temp_965 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_967:
!   Data Move: *_temp_965 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_965 = _temp_965 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_966 = _temp_966 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_966) then goto _Label_967
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_967
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_968 = &_temp_964
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3065
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3065:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_963 = *_temp_968  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3066:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3066
! ASSIGNMENT STATEMENT...
	mov	516,r13		! source line 516
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0AS",r10
!   _temp_969 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_971 = &_temp_970
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_971 = _temp_971 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_973:
!   Data Move: *_temp_971 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_971 = _temp_971 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_972 = _temp_972 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_972) then goto _Label_973
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_973
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_974 = &_temp_970
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3067
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3067:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_969 = *_temp_974  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3068:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3068
! RETURN STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_975
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_976
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_977
	.word	12
	.word	4
	.word	_Label_978
	.word	-12
	.word	4
	.word	_Label_979
	.word	-16
	.word	4
	.word	_Label_980
	.word	-20
	.word	4
	.word	_Label_981
	.word	-84
	.word	64
	.word	_Label_982
	.word	-88
	.word	4
	.word	_Label_983
	.word	-92
	.word	4
	.word	_Label_984
	.word	-96
	.word	4
	.word	_Label_985
	.word	-100
	.word	4
	.word	_Label_986
	.word	-156
	.word	56
	.word	_Label_987
	.word	-160
	.word	4
	.word	_Label_988
	.word	-164
	.word	4
	.word	_Label_989
	.word	-168
	.word	4
	.word	_Label_990
	.word	-172
	.word	4
	.word	_Label_991
	.word	-176
	.word	4
	.word	_Label_992
	.word	-180
	.word	4
	.word	_Label_993
	.word	-184
	.word	4
	.word	_Label_994
	.word	-188
	.word	4
	.word	0
_Label_975:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_976:
	.ascii	"Pself\0"
	.align
_Label_977:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_957\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_3069:
	push	r0
	sub	r1,1,r1
	bne	_Label_3069
	mov	522,r13		! source line 522
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	533,r13		! source line 533
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	533,r13		! source line 533
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	535,r13		! source line 535
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	536,r13		! source line 536
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	537,r13		! source line 537
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	538,r13		! source line 538
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_995 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_995  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	539,r13		! source line 539
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	540,r13		! source line 540
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_997 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_996  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	541,r13		! source line 541
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	541,r13		! source line 541
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	541,r13		! source line 541
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_998
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_999
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1000
	.word	12
	.word	4
	.word	_Label_1001
	.word	16
	.word	4
	.word	_Label_1002
	.word	-12
	.word	4
	.word	_Label_1003
	.word	-16
	.word	4
	.word	_Label_1004
	.word	-20
	.word	4
	.word	_Label_1005
	.word	-24
	.word	4
	.word	_Label_1006
	.word	-28
	.word	4
	.word	0
_Label_998:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_999:
	.ascii	"Pself\0"
	.align
_Label_1000:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1001:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1005:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1006:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_3070:
	push	r0
	sub	r1,1,r1
	bne	_Label_3070
	mov	546,r13		! source line 546
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1009 == _P_Kernel_currentThread then goto _Label_1008		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1008
!	jmp	_Label_1007
_Label_1007:
! THEN...
	mov	563,r13		! source line 563
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1010 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1010  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	563,r13		! source line 563
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1008:
! ASSIGNMENT STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	565,r13		! source line 565
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0AS",r10
	mov	569,r13		! source line 569
	mov	"\0\0SE",r10
!   _temp_1011 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1013		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1013
!	jmp	_Label_1012
_Label_1012:
! THEN...
	mov	574,r13		! source line 574
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1015		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1015
!	jmp	_Label_1014
_Label_1014:
! THEN...
	mov	575,r13		! source line 575
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1016 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1016  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	575,r13		! source line 575
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1015:
! ASSIGNMENT STATEMENT...
	mov	577,r13		! source line 577
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	578,r13		! source line 578
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1018 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1017  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	579,r13		! source line 579
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1013:
! ASSIGNMENT STATEMENT...
	mov	581,r13		! source line 581
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	581,r13		! source line 581
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	581,r13		! source line 581
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_1019
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1020
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1021
	.word	-12
	.word	4
	.word	_Label_1022
	.word	-16
	.word	4
	.word	_Label_1023
	.word	-20
	.word	4
	.word	_Label_1024
	.word	-24
	.word	4
	.word	_Label_1025
	.word	-28
	.word	4
	.word	_Label_1026
	.word	-32
	.word	4
	.word	_Label_1027
	.word	-36
	.word	4
	.word	_Label_1028
	.word	-40
	.word	4
	.word	_Label_1029
	.word	-44
	.word	4
	.word	0
_Label_1019:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1020:
	.ascii	"Pself\0"
	.align
_Label_1021:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1022:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1027:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1028:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1029:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_3071:
	push	r0
	sub	r1,1,r1
	bne	_Label_3071
	mov	586,r13		! source line 586
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	598,r13		! source line 598
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1031		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1031
!	jmp	_Label_1030
_Label_1030:
! THEN...
	mov	599,r13		! source line 599
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1032 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1032  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	599,r13		! source line 599
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1031:
! IF STATEMENT...
	mov	602,r13		! source line 602
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1035 == _P_Kernel_currentThread then goto _Label_1034		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1034
!	jmp	_Label_1033
_Label_1033:
! THEN...
	mov	603,r13		! source line 603
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1036 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1036  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	603,r13		! source line 603
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1034:
! ASSIGNMENT STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0AS",r10
	mov	609,r13		! source line 609
	mov	"\0\0SE",r10
!   _temp_1037 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1038
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1038
	jmp	_Label_1039
_Label_1038:
! THEN...
	mov	611,r13		! source line 611
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1040 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1040  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	611,r13		! source line 611
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1039:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_1041
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1042
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1043
	.word	-12
	.word	4
	.word	_Label_1044
	.word	-16
	.word	4
	.word	_Label_1045
	.word	-20
	.word	4
	.word	_Label_1046
	.word	-24
	.word	4
	.word	_Label_1047
	.word	-28
	.word	4
	.word	_Label_1048
	.word	-32
	.word	4
	.word	0
_Label_1041:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1042:
	.ascii	"Pself\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1048:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_3072:
	push	r0
	sub	r1,1,r1
	bne	_Label_3072
	mov	618,r13		! source line 618
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	624,r13		! source line 624
	mov	"\0\0IF",r10
!   _temp_1052 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1052 [0 ] into _temp_1053
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1051 = *_temp_1053  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1051 == 606348324 then goto _Label_1050		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1050
!	jmp	_Label_1049
_Label_1049:
! THEN...
	mov	625,r13		! source line 625
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1054 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1054  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	625,r13		! source line 625
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1055
_Label_1050:
! ELSE...
	mov	626,r13		! source line 626
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	626,r13		! source line 626
	mov	"\0\0IF",r10
!   _temp_1059 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1059 [999 ] into _temp_1060
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1058 = *_temp_1060  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1058 == 606348324 then goto _Label_1057		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1057
!	jmp	_Label_1056
_Label_1056:
! THEN...
	mov	627,r13		! source line 627
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1061 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1061  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	627,r13		! source line 627
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1057:
! END IF...
_Label_1055:
! RETURN STATEMENT...
	mov	624,r13		! source line 624
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_1062
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1063
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1064
	.word	-12
	.word	4
	.word	_Label_1065
	.word	-16
	.word	4
	.word	_Label_1066
	.word	-20
	.word	4
	.word	_Label_1067
	.word	-24
	.word	4
	.word	_Label_1068
	.word	-28
	.word	4
	.word	_Label_1069
	.word	-32
	.word	4
	.word	_Label_1070
	.word	-36
	.word	4
	.word	_Label_1071
	.word	-40
	.word	4
	.word	0
_Label_1062:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1063:
	.ascii	"Pself\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1061\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_3073:
	push	r0
	sub	r1,1,r1
	bne	_Label_3073
	mov	633,r13		! source line 633
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1072 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1072  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1073 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1073  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1074  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1075 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1075  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1076 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1076  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	646,r13		! source line 646
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1081 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1082 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1081  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1077:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1082 then goto _Label_1080		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1080
_Label_1078:
	mov	646,r13		! source line 646
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1083 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1083  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1084 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1084  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1085 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1085  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1087 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1087 [i ] into _temp_1088
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_1086 = *_temp_1088  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1086  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1089 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1089  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	651,r13		! source line 651
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1091 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1091 [i ] into _temp_1092
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_1090 = *_temp_1092  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1090  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1093 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1093  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1079:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1077
! END FOR
_Label_1080:
! CALL STATEMENT...
!   _temp_1094 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-116]
!   _temp_1095 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1094  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1095  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1096 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-108]
!   _temp_1098 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1098 [0 ] into _temp_1099
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_1097 = _temp_1099		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1096  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1097  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	657,r13		! source line 657
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1102
	cmp	r1,2
	be	_Label_1103
	cmp	r1,3
	be	_Label_1104
	cmp	r1,4
	be	_Label_1105
	cmp	r1,5
	be	_Label_1106
	jmp	_Label_1100
! CASE 1...
_Label_1102:
! CALL STATEMENT...
!   _temp_1107 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1107  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	659,r13		! source line 659
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	660,r13		! source line 660
	mov	"\0\0BR",r10
	jmp	_Label_1101
! CASE 2...
_Label_1103:
! CALL STATEMENT...
!   _temp_1108 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1108  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	662,r13		! source line 662
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	663,r13		! source line 663
	mov	"\0\0BR",r10
	jmp	_Label_1101
! CASE 3...
_Label_1104:
! CALL STATEMENT...
!   _temp_1109 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1109  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	665,r13		! source line 665
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	666,r13		! source line 666
	mov	"\0\0BR",r10
	jmp	_Label_1101
! CASE 4...
_Label_1105:
! CALL STATEMENT...
!   _temp_1110 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1110  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	668,r13		! source line 668
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	669,r13		! source line 669
	mov	"\0\0BR",r10
	jmp	_Label_1101
! CASE 5...
_Label_1106:
! CALL STATEMENT...
!   _temp_1111 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1111  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	671,r13		! source line 671
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	672,r13		! source line 672
	mov	"\0\0BR",r10
	jmp	_Label_1101
! DEFAULT CASE...
_Label_1100:
! CALL STATEMENT...
!   _temp_1112 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1112  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	674,r13		! source line 674
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1101:
! CALL STATEMENT...
!   _temp_1113 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1113  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1114 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1114  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1119 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1120 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1119  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1115:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1120 then goto _Label_1118		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1118
_Label_1116:
	mov	680,r13		! source line 680
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1121 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1121  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	681,r13		! source line 681
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1122 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1122  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	682,r13		! source line 682
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1123 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1123  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	683,r13		! source line 683
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1125 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1125 [i ] into _temp_1126
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1124 = *_temp_1126  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1124  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	684,r13		! source line 684
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1127 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1127  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	685,r13		! source line 685
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1129 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1129 [i ] into _temp_1130
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1128 = *_temp_1130  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1128  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	686,r13		! source line 686
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1131 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1131  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	687,r13		! source line 687
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1117:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1115
! END FOR
_Label_1118:
! ASSIGNMENT STATEMENT...
	mov	689,r13		! source line 689
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	689,r13		! source line 689
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	689,r13		! source line 689
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1132
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1133
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1134
	.word	-12
	.word	4
	.word	_Label_1135
	.word	-16
	.word	4
	.word	_Label_1136
	.word	-20
	.word	4
	.word	_Label_1137
	.word	-24
	.word	4
	.word	_Label_1138
	.word	-28
	.word	4
	.word	_Label_1139
	.word	-32
	.word	4
	.word	_Label_1140
	.word	-36
	.word	4
	.word	_Label_1141
	.word	-40
	.word	4
	.word	_Label_1142
	.word	-44
	.word	4
	.word	_Label_1143
	.word	-48
	.word	4
	.word	_Label_1144
	.word	-52
	.word	4
	.word	_Label_1145
	.word	-56
	.word	4
	.word	_Label_1146
	.word	-60
	.word	4
	.word	_Label_1147
	.word	-64
	.word	4
	.word	_Label_1148
	.word	-68
	.word	4
	.word	_Label_1149
	.word	-72
	.word	4
	.word	_Label_1150
	.word	-76
	.word	4
	.word	_Label_1151
	.word	-80
	.word	4
	.word	_Label_1152
	.word	-84
	.word	4
	.word	_Label_1153
	.word	-88
	.word	4
	.word	_Label_1154
	.word	-92
	.word	4
	.word	_Label_1155
	.word	-96
	.word	4
	.word	_Label_1156
	.word	-100
	.word	4
	.word	_Label_1157
	.word	-104
	.word	4
	.word	_Label_1158
	.word	-108
	.word	4
	.word	_Label_1159
	.word	-112
	.word	4
	.word	_Label_1160
	.word	-116
	.word	4
	.word	_Label_1161
	.word	-120
	.word	4
	.word	_Label_1162
	.word	-124
	.word	4
	.word	_Label_1163
	.word	-128
	.word	4
	.word	_Label_1164
	.word	-132
	.word	4
	.word	_Label_1165
	.word	-136
	.word	4
	.word	_Label_1166
	.word	-140
	.word	4
	.word	_Label_1167
	.word	-144
	.word	4
	.word	_Label_1168
	.word	-148
	.word	4
	.word	_Label_1169
	.word	-152
	.word	4
	.word	_Label_1170
	.word	-156
	.word	4
	.word	_Label_1171
	.word	-160
	.word	4
	.word	_Label_1172
	.word	-164
	.word	4
	.word	_Label_1173
	.word	-168
	.word	4
	.word	_Label_1174
	.word	-172
	.word	4
	.word	_Label_1175
	.word	-176
	.word	4
	.word	_Label_1176
	.word	-180
	.word	4
	.word	_Label_1177
	.word	-184
	.word	4
	.word	_Label_1178
	.word	-188
	.word	4
	.word	_Label_1179
	.word	-192
	.word	4
	.word	_Label_1180
	.word	-196
	.word	4
	.word	0
_Label_1132:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1133:
	.ascii	"Pself\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1138:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1179:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1180:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1181
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1181:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1182
	.word	_sourceFileName
	.word	209		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1182:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11479,r1
_Label_3074:
	push	r0
	sub	r1,1,r1
	bne	_Label_3074
	mov	744,r13		! source line 744
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! a
!   a = 0		(4 bytes)
	mov	0,r1
	set	-45916,r2
	store	r1,[r14+r2]
! CALL STATEMENT...
!   _temp_1183 = _StringConst_107
	set	_StringConst_107,r1
	set	-45912,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1183  sizeInBytes=4
	set	-45912,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	751,r13		! source line 751
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	752,r13		! source line 752
	mov	"\0\0AS",r10
!   _temp_1184 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1186 = &_temp_1185
	set	-45904,r1
	add	r14,r1,r1
	store	r1,[r14+-4260]
!   _temp_1186 = _temp_1186 + 4
	load	[r14+-4260],r1
	add	r1,4,r1
	store	r1,[r14+-4260]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1188 = zeros  (sizeInBytes=4164)
	add	r14,-4252,r4
	mov	1041,r3
_Label_3075:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3075
!   _temp_1188 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4252]
	mov	10,r1
	store	r1,[r14+-4256]
_Label_1190:
!   Data Move: *_temp_1186 = _temp_1188  (sizeInBytes=4164)
	add	r14,-4252,r5
	load	[r14+-4260],r4
	mov	1041,r3
_Label_3076:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3076
!   _temp_1186 = _temp_1186 + 4164
	load	[r14+-4260],r1
	add	r1,4164,r1
	store	r1,[r14+-4260]
!   _temp_1187 = _temp_1187 + -1
	load	[r14+-4256],r1
	add	r1,-1,r1
	store	r1,[r14+-4256]
!   if intNotZero (_temp_1187) then goto _Label_1190
	load	[r14+-4256],r1
	cmp	r1,r0
	bne	_Label_1190
!   Initialize the array size...
	mov	10,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   _temp_1191 = &_temp_1185
	set	-45904,r1
	add	r14,r1,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	set	-45908,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3077
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3077:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1184 = *_temp_1191  (sizeInBytes=41644)
	load	[r14+-84],r5
	set	-45908,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3078:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3078
! ASSIGNMENT STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! FOR STATEMENT...
	mov	755,r13		! source line 755
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1197 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1198 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: a = _temp_1197  (sizeInBytes=4)
	load	[r14+-76],r1
	set	-45916,r2
	store	r1,[r14+r2]
_Label_1193:
!   Perform the FOR-LOOP termination test
!   if a > _temp_1198 then goto _Label_1196		
	set	-45916,r1
	load	[r14+r1],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1196
_Label_1194:
	mov	755,r13		! source line 755
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0SE",r10
!   _temp_1200 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-64]
!   _temp_1199 = _temp_1200 + a		(int)
	load	[r14+-64],r1
	set	-45916,r2
	load	[r14+r2],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
!   _temp_1201 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_1201 [a ] into _temp_1202
!     make sure index expr is >= 0
	set	-45916,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_1199  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	757,r13		! source line 757
	mov	"\0\0AS",r10
!   _temp_1203 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1203 [a ] into _temp_1204
!     make sure index expr is >= 0
	set	-45916,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   _temp_1205 = _temp_1204 + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1205 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	758,r13		! source line 758
	mov	"\0\0SE",r10
!   _temp_1207 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1207 [a ] into _temp_1208
!     make sure index expr is >= 0
	set	-45916,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1206 = _temp_1208		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   _temp_1209 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1206  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1195:
!   a = a + 1
	set	-45916,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45916,r2
	store	r1,[r14+r2]
	jmp	_Label_1193
! END FOR
_Label_1196:
! ASSIGNMENT STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0SE",r10
!   _temp_1211 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	763,r13		! source line 763
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0SE",r10
!   _temp_1213 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0RE",r10
	set	45920,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1214
	.word	4		! total size of parameters
	.word	45916		! frame size = 45916
	.word	_Label_1215
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1216
	.word	-12
	.word	4
	.word	_Label_1217
	.word	-16
	.word	4
	.word	_Label_1218
	.word	-20
	.word	4
	.word	_Label_1219
	.word	-24
	.word	4
	.word	_Label_1220
	.word	-28
	.word	4
	.word	_Label_1221
	.word	-32
	.word	4
	.word	_Label_1222
	.word	-36
	.word	4
	.word	_Label_1223
	.word	-40
	.word	4
	.word	_Label_1224
	.word	-44
	.word	4
	.word	_Label_1225
	.word	-48
	.word	4
	.word	_Label_1226
	.word	-52
	.word	4
	.word	_Label_1227
	.word	-56
	.word	4
	.word	_Label_1228
	.word	-60
	.word	4
	.word	_Label_1229
	.word	-64
	.word	4
	.word	_Label_1230
	.word	-68
	.word	4
	.word	_Label_1231
	.word	-72
	.word	4
	.word	_Label_1232
	.word	-76
	.word	4
	.word	_Label_1233
	.word	-80
	.word	4
	.word	_Label_1234
	.word	-84
	.word	4
	.word	_Label_1235
	.word	-88
	.word	4
	.word	_Label_1236
	.word	-4252
	.word	4164
	.word	_Label_1237
	.word	-4256
	.word	4
	.word	_Label_1238
	.word	-4260
	.word	4
	.word	_Label_1239
	.word	-45904
	.word	41644
	.word	_Label_1240
	.word	-45908
	.word	4
	.word	_Label_1241
	.word	-45912
	.word	4
	.word	_Label_1242
	.word	-45916
	.word	4
	.word	0
_Label_1214:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1215:
	.ascii	"Pself\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1202\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1242:
	.byte	'I'
	.ascii	"a\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_3079:
	push	r0
	sub	r1,1,r1
	bne	_Label_3079
	mov	769,r13		! source line 769
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	776,r13		! source line 776
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1243 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1243  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	777,r13		! source line 777
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	778,r13		! source line 778
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1248 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1249 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1248  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1244:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1249 then goto _Label_1247		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1247
_Label_1245:
	mov	778,r13		! source line 778
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1250 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1250  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1251 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1251  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	781,r13		! source line 781
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1253 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1253 [i ] into _temp_1254
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1252 = _temp_1254		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1252  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CA",r10
	call	_function_214_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1246:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1244
! END FOR
_Label_1247:
! CALL STATEMENT...
!   _temp_1255 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1255  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	784,r13		! source line 784
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	785,r13		! source line 785
	mov	"\0\0SE",r10
!   _temp_1256 = _function_213_PrintObjectAddr
	set	_function_213_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1257 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1256  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	787,r13		! source line 787
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	787,r13		! source line 787
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1258
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1259
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1260
	.word	-12
	.word	4
	.word	_Label_1261
	.word	-16
	.word	4
	.word	_Label_1262
	.word	-20
	.word	4
	.word	_Label_1263
	.word	-24
	.word	4
	.word	_Label_1264
	.word	-28
	.word	4
	.word	_Label_1265
	.word	-32
	.word	4
	.word	_Label_1266
	.word	-36
	.word	4
	.word	_Label_1267
	.word	-40
	.word	4
	.word	_Label_1268
	.word	-44
	.word	4
	.word	_Label_1269
	.word	-48
	.word	4
	.word	_Label_1270
	.word	-52
	.word	4
	.word	_Label_1271
	.word	-56
	.word	4
	.word	_Label_1272
	.word	-60
	.word	4
	.word	0
_Label_1258:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1259:
	.ascii	"Pself\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1271:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1272:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_3080:
	push	r0
	sub	r1,1,r1
	bne	_Label_3080
	mov	792,r13		! source line 792
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	800,r13		! source line 800
	mov	"\0\0SE",r10
!   _temp_1273 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0WH",r10
_Label_1274:
	mov	802,r13		! source line 802
	mov	"\0\0SE",r10
!   _temp_1277 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1275 else goto _Label_1276
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1276
	jmp	_Label_1275
_Label_1275:
	mov	802,r13		! source line 802
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0SE",r10
!   _temp_1278 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1279 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1278  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1274
_Label_1276:
! ASSIGNMENT STATEMENT...
	mov	805,r13		! source line 805
	mov	"\0\0AS",r10
	mov	805,r13		! source line 805
	mov	"\0\0SE",r10
!   _temp_1280 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	806,r13		! source line 806
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1281 = t + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1281 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	807,r13		! source line 807
	mov	"\0\0SE",r10
!   _temp_1282 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	808,r13		! source line 808
	mov	"\0\0RE",r10
!   ReturnResult: t  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1283
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1284
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1285
	.word	-12
	.word	4
	.word	_Label_1286
	.word	-16
	.word	4
	.word	_Label_1287
	.word	-20
	.word	4
	.word	_Label_1288
	.word	-24
	.word	4
	.word	_Label_1289
	.word	-28
	.word	4
	.word	_Label_1290
	.word	-32
	.word	4
	.word	_Label_1291
	.word	-36
	.word	4
	.word	_Label_1292
	.word	-40
	.word	4
	.word	0
_Label_1283:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1284:
	.ascii	"Pself\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1292:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_3081:
	push	r0
	sub	r1,1,r1
	bne	_Label_3081
	mov	813,r13		! source line 813
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0SE",r10
!   _temp_1293 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	820,r13		! source line 820
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1294 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1294 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	821,r13		! source line 821
	mov	"\0\0SE",r10
!   _temp_1295 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0SE",r10
!   _temp_1296 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1297 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1296  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0SE",r10
!   _temp_1298 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1299
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1300
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1301
	.word	12
	.word	4
	.word	_Label_1302
	.word	-12
	.word	4
	.word	_Label_1303
	.word	-16
	.word	4
	.word	_Label_1304
	.word	-20
	.word	4
	.word	_Label_1305
	.word	-24
	.word	4
	.word	_Label_1306
	.word	-28
	.word	4
	.word	_Label_1307
	.word	-32
	.word	4
	.word	0
_Label_1299:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1300:
	.ascii	"Pself\0"
	.align
_Label_1301:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1296\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1308
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1308:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1309
	.word	_sourceFileName
	.word	230		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1309:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_3082:
	push	r0
	sub	r1,1,r1
	bne	_Label_3082
	mov	837,r13		! source line 837
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	838,r13		! source line 838
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	839,r13		! source line 839
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	840,r13		! source line 840
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3083:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3083
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0SE",r10
!   _temp_1311 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1312
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1313
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1314
	.word	-12
	.word	4
	.word	_Label_1315
	.word	-16
	.word	4
	.word	0
_Label_1312:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1313:
	.ascii	"Pself\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_3084:
	push	r0
	sub	r1,1,r1
	bne	_Label_3084
	mov	851,r13		! source line 851
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	856,r13		! source line 856
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1316) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	857,r13		! source line 857
	mov	"\0\0SE",r10
!   _temp_1317 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1318 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1318  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	859,r13		! source line 859
	mov	"\0\0CA",r10
	call	_function_214_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	869,r13		! source line 869
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1319
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1320
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1321
	.word	-12
	.word	4
	.word	_Label_1322
	.word	-16
	.word	4
	.word	_Label_1323
	.word	-20
	.word	4
	.word	0
_Label_1319:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1320:
	.ascii	"Pself\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_3085:
	push	r0
	sub	r1,1,r1
	bne	_Label_3085
	mov	874,r13		! source line 874
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1324 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1324  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	878,r13		! source line 878
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1325  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	879,r13		! source line 879
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1326 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1326  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	881,r13		! source line 881
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1327 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1327  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	882,r13		! source line 882
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	883,r13		! source line 883
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1329		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1329
!	jmp	_Label_1328
_Label_1328:
! THEN...
	mov	884,r13		! source line 884
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1330 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1330  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	884,r13		! source line 884
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1331
_Label_1329:
! ELSE...
	mov	885,r13		! source line 885
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	885,r13		! source line 885
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1333		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1333
!	jmp	_Label_1332
_Label_1332:
! THEN...
	mov	886,r13		! source line 886
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1334 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1334  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	886,r13		! source line 886
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1335
_Label_1333:
! ELSE...
	mov	887,r13		! source line 887
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1337		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1337
!	jmp	_Label_1336
_Label_1336:
! THEN...
	mov	888,r13		! source line 888
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1338 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1338  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	888,r13		! source line 888
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1339
_Label_1337:
! ELSE...
	mov	890,r13		! source line 890
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1340 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1340  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	890,r13		! source line 890
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1339:
! END IF...
_Label_1335:
! END IF...
_Label_1331:
! CALL STATEMENT...
!   _temp_1341 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1341  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	892,r13		! source line 892
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	893,r13		! source line 893
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1342 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1342  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	894,r13		! source line 894
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	895,r13		! source line 895
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	896,r13		! source line 896
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1343
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1344
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1345
	.word	-12
	.word	4
	.word	_Label_1346
	.word	-16
	.word	4
	.word	_Label_1347
	.word	-20
	.word	4
	.word	_Label_1348
	.word	-24
	.word	4
	.word	_Label_1349
	.word	-28
	.word	4
	.word	_Label_1350
	.word	-32
	.word	4
	.word	_Label_1351
	.word	-36
	.word	4
	.word	_Label_1352
	.word	-40
	.word	4
	.word	_Label_1353
	.word	-44
	.word	4
	.word	_Label_1354
	.word	-48
	.word	4
	.word	0
_Label_1343:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1344:
	.ascii	"Pself\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1346:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1355
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1355:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1356
	.word	_sourceFileName
	.word	250		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1356:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	368,r1
_Label_3086:
	push	r0
	sub	r1,1,r1
	bne	_Label_3086
	mov	907,r13		! source line 907
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	914,r13		! source line 914
	mov	"\0\0AS",r10
!   nextPid = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	916,r13		! source line 916
	mov	"\0\0AS",r10
!   _temp_1357 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1359 = &_temp_1358
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1359 = _temp_1359 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1361 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_3087:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3087
!   _temp_1361 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1363:
!   Data Move: *_temp_1359 = _temp_1361  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_3088:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3088
!   _temp_1359 = _temp_1359 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1360 = _temp_1360 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1360) then goto _Label_1363
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1363
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1364 = &_temp_1358
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3089
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3089:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1357 = *_temp_1364  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_3090:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3090
! ASSIGNMENT STATEMENT...
	mov	917,r13		! source line 917
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! FOR STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1370 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1371 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: b = _temp_1370  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-1472]
_Label_1366:
!   Perform the FOR-LOOP termination test
!   if b > _temp_1371 then goto _Label_1369		
	load	[r14+-1472],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1369
_Label_1367:
	mov	918,r13		! source line 918
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0SE",r10
!   _temp_1372 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Move address of _temp_1372 [b ] into _temp_1373
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	920,r13		! source line 920
	mov	"\0\0AS",r10
!   _temp_1374 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_1374 [b ] into _temp_1375
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   _temp_1376 = _temp_1375 + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_1376 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_1378 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1378 [b ] into _temp_1379
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_1377 = _temp_1379		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1380 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1377  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1368:
!   b = b + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1366
! END FOR
_Label_1369:
! ASSIGNMENT STATEMENT...
	mov	923,r13		! source line 923
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	924,r13		! source line 924
	mov	"\0\0SE",r10
!   _temp_1382 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	926,r13		! source line 926
	mov	"\0\0SE",r10
!   _temp_1384 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	927,r13		! source line 927
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0SE",r10
!   _temp_1386 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	928,r13		! source line 928
	mov	"\0\0RE",r10
	add	r15,1476,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1387
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1388
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1389
	.word	-12
	.word	4
	.word	_Label_1390
	.word	-16
	.word	4
	.word	_Label_1391
	.word	-20
	.word	4
	.word	_Label_1392
	.word	-24
	.word	4
	.word	_Label_1393
	.word	-28
	.word	4
	.word	_Label_1394
	.word	-32
	.word	4
	.word	_Label_1395
	.word	-36
	.word	4
	.word	_Label_1396
	.word	-40
	.word	4
	.word	_Label_1397
	.word	-44
	.word	4
	.word	_Label_1398
	.word	-48
	.word	4
	.word	_Label_1399
	.word	-52
	.word	4
	.word	_Label_1400
	.word	-56
	.word	4
	.word	_Label_1401
	.word	-60
	.word	4
	.word	_Label_1402
	.word	-64
	.word	4
	.word	_Label_1403
	.word	-68
	.word	4
	.word	_Label_1404
	.word	-72
	.word	4
	.word	_Label_1405
	.word	-76
	.word	4
	.word	_Label_1406
	.word	-80
	.word	4
	.word	_Label_1407
	.word	-84
	.word	4
	.word	_Label_1408
	.word	-88
	.word	4
	.word	_Label_1409
	.word	-212
	.word	124
	.word	_Label_1410
	.word	-216
	.word	4
	.word	_Label_1411
	.word	-220
	.word	4
	.word	_Label_1412
	.word	-1464
	.word	1244
	.word	_Label_1413
	.word	-1468
	.word	4
	.word	_Label_1414
	.word	-1472
	.word	4
	.word	0
_Label_1387:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1388:
	.ascii	"Pself\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1370\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1358\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1357\0"
	.align
_Label_1414:
	.byte	'I'
	.ascii	"b\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_3091:
	push	r0
	sub	r1,1,r1
	bne	_Label_3091
	mov	935,r13		! source line 935
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1415 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1415  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	943,r13		! source line 943
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	944,r13		! source line 944
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1420 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1421 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1420  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1416:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1421 then goto _Label_1419		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1419
_Label_1417:
	mov	944,r13		! source line 944
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1422 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1422  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	945,r13		! source line 945
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	946,r13		! source line 946
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1423 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1423  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	947,r13		! source line 947
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	948,r13		! source line 948
	mov	"\0\0SE",r10
!   _temp_1424 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1424 [i ] into _temp_1425
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1418:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1416
! END FOR
_Label_1419:
! CALL STATEMENT...
!   _temp_1426 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1426  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	950,r13		! source line 950
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	951,r13		! source line 951
	mov	"\0\0SE",r10
!   _temp_1427 = _function_213_PrintObjectAddr
	set	_function_213_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1428 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1427  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	952,r13		! source line 952
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	953,r13		! source line 953
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1429
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1430
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1431
	.word	-12
	.word	4
	.word	_Label_1432
	.word	-16
	.word	4
	.word	_Label_1433
	.word	-20
	.word	4
	.word	_Label_1434
	.word	-24
	.word	4
	.word	_Label_1435
	.word	-28
	.word	4
	.word	_Label_1436
	.word	-32
	.word	4
	.word	_Label_1437
	.word	-36
	.word	4
	.word	_Label_1438
	.word	-40
	.word	4
	.word	_Label_1439
	.word	-44
	.word	4
	.word	_Label_1440
	.word	-48
	.word	4
	.word	_Label_1441
	.word	-52
	.word	4
	.word	_Label_1442
	.word	-56
	.word	4
	.word	0
_Label_1429:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1430:
	.ascii	"Pself\0"
	.align
_Label_1431:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1432:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1433:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1434:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1441:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1442:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_3092:
	push	r0
	sub	r1,1,r1
	bne	_Label_3092
	mov	958,r13		! source line 958
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	965,r13		! source line 965
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	965,r13		! source line 965
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1443 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1443  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	966,r13		! source line 966
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1448 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1449 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1448  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1444:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1449 then goto _Label_1447		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1447
_Label_1445:
	mov	967,r13		! source line 967
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1450 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1450  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	968,r13		! source line 968
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	969,r13		! source line 969
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0SE",r10
!   _temp_1451 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1451 [i ] into _temp_1452
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1446:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1444
! END FOR
_Label_1447:
! CALL STATEMENT...
!   _temp_1453 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1453  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	972,r13		! source line 972
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1454 = _function_213_PrintObjectAddr
	set	_function_213_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1455 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1454  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	974,r13		! source line 974
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	975,r13		! source line 975
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1456
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1457
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1458
	.word	-12
	.word	4
	.word	_Label_1459
	.word	-16
	.word	4
	.word	_Label_1460
	.word	-20
	.word	4
	.word	_Label_1461
	.word	-24
	.word	4
	.word	_Label_1462
	.word	-28
	.word	4
	.word	_Label_1463
	.word	-32
	.word	4
	.word	_Label_1464
	.word	-36
	.word	4
	.word	_Label_1465
	.word	-40
	.word	4
	.word	_Label_1466
	.word	-44
	.word	4
	.word	_Label_1467
	.word	-48
	.word	4
	.word	_Label_1468
	.word	-52
	.word	4
	.word	0
_Label_1456:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1457:
	.ascii	"Pself\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1443\0"
	.align
_Label_1467:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1468:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_3093:
	push	r0
	sub	r1,1,r1
	bne	_Label_3093
	mov	980,r13		! source line 980
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0SE",r10
!   _temp_1469 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0WH",r10
_Label_1470:
	mov	989,r13		! source line 989
	mov	"\0\0SE",r10
!   _temp_1473 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1471 else goto _Label_1472
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1472
	jmp	_Label_1471
_Label_1471:
	mov	989,r13		! source line 989
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	990,r13		! source line 990
	mov	"\0\0SE",r10
!   _temp_1474 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1475 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1474  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1470
_Label_1472:
! ASSIGNMENT STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0AS",r10
	mov	993,r13		! source line 993
	mov	"\0\0SE",r10
!   _temp_1476 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	994,r13		! source line 994
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1477 = p + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1477 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	996,r13		! source line 996
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1478 = p + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1478 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	998,r13		! source line 998
	mov	"\0\0SE",r10
!   _temp_1479 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1000,r13		! source line 1000
	mov	"\0\0RE",r10
!   ReturnResult: p  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1480
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1481
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1482
	.word	-12
	.word	4
	.word	_Label_1483
	.word	-16
	.word	4
	.word	_Label_1484
	.word	-20
	.word	4
	.word	_Label_1485
	.word	-24
	.word	4
	.word	_Label_1486
	.word	-28
	.word	4
	.word	_Label_1487
	.word	-32
	.word	4
	.word	_Label_1488
	.word	-36
	.word	4
	.word	_Label_1489
	.word	-40
	.word	4
	.word	_Label_1490
	.word	-44
	.word	4
	.word	0
_Label_1480:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1481:
	.ascii	"Pself\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1490:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_3094:
	push	r0
	sub	r1,1,r1
	bne	_Label_3094
	mov	1005,r13		! source line 1005
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1010,r13		! source line 1010
	mov	"\0\0SE",r10
!   _temp_1491 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1012,r13		! source line 1012
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1492 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1492 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1013,r13		! source line 1013
	mov	"\0\0SE",r10
!   _temp_1493 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1014,r13		! source line 1014
	mov	"\0\0SE",r10
!   _temp_1494 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1495 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1494  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0SE",r10
!   _temp_1496 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1497
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1498
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1499
	.word	12
	.word	4
	.word	_Label_1500
	.word	-12
	.word	4
	.word	_Label_1501
	.word	-16
	.word	4
	.word	_Label_1502
	.word	-20
	.word	4
	.word	_Label_1503
	.word	-24
	.word	4
	.word	_Label_1504
	.word	-28
	.word	4
	.word	_Label_1505
	.word	-32
	.word	4
	.word	0
_Label_1497:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1498:
	.ascii	"Pself\0"
	.align
_Label_1499:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1506
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1506:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1507
	.word	_sourceFileName
	.word	273		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1507:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	18,r1
_Label_3095:
	push	r0
	sub	r1,1,r1
	bne	_Label_3095
	mov	1049,r13		! source line 1049
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1508 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1508  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	1055,r13		! source line 1055
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1057,r13		! source line 1057
	mov	"\0\0SE",r10
!   _temp_1510 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1058,r13		! source line 1058
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1059,r13		! source line 1059
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0SE",r10
!   _temp_1512 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1061,r13		! source line 1061
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,44,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+44]
! SEND STATEMENT...
	mov	1062,r13		! source line 1062
	mov	"\0\0SE",r10
!   _temp_1514 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-44]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1063,r13		! source line 1063
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: leaderThread = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,60,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   leaderThread = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+60]
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_1516 = &leaderThread
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1065,r13		! source line 1065
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: restofThread = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,76,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   restofThread = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	1066,r13		! source line 1066
	mov	"\0\0SE",r10
!   _temp_1518 = &restofThread
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1067,r13		! source line 1067
	mov	"\0\0AS",r10
!   waitList = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! FOR STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1523 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1524 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1523  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-72]
_Label_1519:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1524 then goto _Label_1522		
	load	[r14+-72],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1522
_Label_1520:
	mov	1073,r13		! source line 1073
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1527 = *i  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1527) then goto _Label_1526
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1526
!	jmp	_Label_1525
_Label_1525:
! THEN...
	mov	1077,r13		! source line 1077
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1528 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1528  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1077,r13		! source line 1077
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1526:
!   Increment the FOR-LOOP index variable and jump back
_Label_1521:
!   i = i + 4
	load	[r14+-72],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_1519
! END FOR
_Label_1522:
! RETURN STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1529
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_1530
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1531
	.word	-12
	.word	4
	.word	_Label_1532
	.word	-16
	.word	4
	.word	_Label_1533
	.word	-20
	.word	4
	.word	_Label_1534
	.word	-24
	.word	4
	.word	_Label_1535
	.word	-28
	.word	4
	.word	_Label_1536
	.word	-32
	.word	4
	.word	_Label_1537
	.word	-36
	.word	4
	.word	_Label_1538
	.word	-40
	.word	4
	.word	_Label_1539
	.word	-44
	.word	4
	.word	_Label_1540
	.word	-48
	.word	4
	.word	_Label_1541
	.word	-52
	.word	4
	.word	_Label_1542
	.word	-56
	.word	4
	.word	_Label_1543
	.word	-60
	.word	4
	.word	_Label_1544
	.word	-64
	.word	4
	.word	_Label_1545
	.word	-68
	.word	4
	.word	_Label_1546
	.word	-72
	.word	4
	.word	0
_Label_1529:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1530:
	.ascii	"Pself\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1546:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_3096:
	push	r0
	sub	r1,1,r1
	bne	_Label_3096
	mov	1084,r13		! source line 1084
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0SE",r10
!   _temp_1547 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1548 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1548  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1089,r13		! source line 1089
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1549 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1549  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1090,r13		! source line 1090
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1550 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1550  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1091,r13		! source line 1091
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0SE",r10
!   _temp_1551 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1093,r13		! source line 1093
	mov	"\0\0SE",r10
!   _temp_1552 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1093,r13		! source line 1093
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1553
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1554
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1555
	.word	-12
	.word	4
	.word	_Label_1556
	.word	-16
	.word	4
	.word	_Label_1557
	.word	-20
	.word	4
	.word	_Label_1558
	.word	-24
	.word	4
	.word	_Label_1559
	.word	-28
	.word	4
	.word	_Label_1560
	.word	-32
	.word	4
	.word	0
_Label_1553:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1554:
	.ascii	"Pself\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_3097:
	push	r0
	sub	r1,1,r1
	bne	_Label_3097
	mov	1098,r13		! source line 1098
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0SE",r10
!   _temp_1561 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0WH",r10
_Label_1562:
!   if numberFreeFrames >= 1 then goto _Label_1564		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1564
!	jmp	_Label_1563
_Label_1563:
	mov	1109,r13		! source line 1109
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0SE",r10
!   _temp_1565 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1566 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1565  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1562
_Label_1564:
! ASSIGNMENT STATEMENT...
	mov	1114,r13		! source line 1114
	mov	"\0\0AS",r10
	mov	1114,r13		! source line 1114
	mov	"\0\0SE",r10
!   _temp_1567 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1115,r13		! source line 1115
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1118,r13		! source line 1118
	mov	"\0\0SE",r10
!   _temp_1568 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1121,r13		! source line 1121
	mov	"\0\0AS",r10
!   _temp_1569 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1569		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1123,r13		! source line 1123
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1570
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1571
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1572
	.word	-12
	.word	4
	.word	_Label_1573
	.word	-16
	.word	4
	.word	_Label_1574
	.word	-20
	.word	4
	.word	_Label_1575
	.word	-24
	.word	4
	.word	_Label_1576
	.word	-28
	.word	4
	.word	_Label_1577
	.word	-32
	.word	4
	.word	_Label_1578
	.word	-36
	.word	4
	.word	_Label_1579
	.word	-40
	.word	4
	.word	0
_Label_1570:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1571:
	.ascii	"Pself\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1578:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1579:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	19,r1
_Label_3098:
	push	r0
	sub	r1,1,r1
	bne	_Label_3098
	mov	1128,r13		! source line 1128
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1139,r13		! source line 1139
	mov	"\0\0SE",r10
!   _temp_1580 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0AS",r10
!   waitList = waitList + 1		(int)
	load	[r14+8],r1
	load	[r1+40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+40]
! IF STATEMENT...
	mov	1142,r13		! source line 1142
	mov	"\0\0IF",r10
!   if waitList <= 1 then goto _Label_1582		(int)
	load	[r14+8],r1
	load	[r1+40],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1582
!	jmp	_Label_1581
_Label_1581:
! THEN...
	mov	1143,r13		! source line 1143
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1143,r13		! source line 1143
	mov	"\0\0SE",r10
!   _temp_1583 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-56]
!   _temp_1584 = &restofThread
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1583  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1582:
! WHILE STATEMENT...
	mov	1147,r13		! source line 1147
	mov	"\0\0WH",r10
_Label_1585:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_1587		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1587
!	jmp	_Label_1586
_Label_1586:
	mov	1147,r13		! source line 1147
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1148,r13		! source line 1148
	mov	"\0\0SE",r10
!   _temp_1588 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   _temp_1589 = &leaderThread
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1588  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1585
_Label_1587:
! FOR STATEMENT...
	mov	1154,r13		! source line 1154
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1594 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1595 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1594  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-64]
_Label_1590:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1595 then goto _Label_1593		
	load	[r14+-64],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1593
_Label_1591:
	mov	1154,r13		! source line 1154
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1155,r13		! source line 1155
	mov	"\0\0AS",r10
	mov	1155,r13		! source line 1155
	mov	"\0\0SE",r10
!   _temp_1596 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message FindZeroAndSet
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=frno  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	1156,r13		! source line 1156
	mov	"\0\0AS",r10
!   _temp_1597 = frno * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   fradd = 1048576 + _temp_1597		(int)
	set	1048576,r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1157,r13		! source line 1157
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fradd  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1592:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1590
! END FOR
_Label_1593:
! ASSIGNMENT STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1162,r13		! source line 1162
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1598 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1598 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0AS",r10
!   waitList = waitList - 1		(int)
	load	[r14+8],r1
	load	[r1+40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1164,r13		! source line 1164
	mov	"\0\0SE",r10
!   _temp_1599 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1600 = &restofThread
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1599  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0SE",r10
!   _temp_1601 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1168,r13		! source line 1168
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1602
	.word	12		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1603
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1604
	.word	12
	.word	4
	.word	_Label_1605
	.word	16
	.word	4
	.word	_Label_1606
	.word	-12
	.word	4
	.word	_Label_1607
	.word	-16
	.word	4
	.word	_Label_1608
	.word	-20
	.word	4
	.word	_Label_1609
	.word	-24
	.word	4
	.word	_Label_1610
	.word	-28
	.word	4
	.word	_Label_1611
	.word	-32
	.word	4
	.word	_Label_1612
	.word	-36
	.word	4
	.word	_Label_1613
	.word	-40
	.word	4
	.word	_Label_1614
	.word	-44
	.word	4
	.word	_Label_1615
	.word	-48
	.word	4
	.word	_Label_1616
	.word	-52
	.word	4
	.word	_Label_1617
	.word	-56
	.word	4
	.word	_Label_1618
	.word	-60
	.word	4
	.word	_Label_1619
	.word	-64
	.word	4
	.word	_Label_1620
	.word	-68
	.word	4
	.word	_Label_1621
	.word	-72
	.word	4
	.word	0
_Label_1602:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1603:
	.ascii	"Pself\0"
	.align
_Label_1604:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1605:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1594\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1619:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1620:
	.byte	'I'
	.ascii	"frno\0"
	.align
_Label_1621:
	.byte	'I'
	.ascii	"fradd\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	17,r1
_Label_3099:
	push	r0
	sub	r1,1,r1
	bne	_Label_3099
	mov	1175,r13		! source line 1175
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0SE",r10
!   _temp_1622 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1185,r13		! source line 1185
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1623 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Data Move: numFramesReturned = *_temp_1623  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
! FOR STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1628 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1629 = numFramesReturned - 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1628  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-56]
_Label_1624:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1629 then goto _Label_1627		
	load	[r14+-56],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1627
_Label_1625:
	mov	1188,r13		! source line 1188
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1189,r13		! source line 1189
	mov	"\0\0AS",r10
	mov	1189,r13		! source line 1189
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! ASSIGNMENT STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0AS",r10
!   _temp_1630 = frameAddr - 1048576		(int)
	load	[r14+-64],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   bitNumber = _temp_1630 div 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
! SEND STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0SE",r10
!   _temp_1631 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1626:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1624
! END FOR
_Label_1627:
! ASSIGNMENT STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1633 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_1632 = *_temp_1633  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   numberFreeFrames = numberFreeFrames + _temp_1632		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0SE",r10
!   _temp_1634 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1635 = &leaderThread
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1634  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1201,r13		! source line 1201
	mov	"\0\0SE",r10
!   _temp_1636 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1201,r13		! source line 1201
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1637
	.word	8		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_1638
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1639
	.word	12
	.word	4
	.word	_Label_1640
	.word	-12
	.word	4
	.word	_Label_1641
	.word	-16
	.word	4
	.word	_Label_1642
	.word	-20
	.word	4
	.word	_Label_1643
	.word	-24
	.word	4
	.word	_Label_1644
	.word	-28
	.word	4
	.word	_Label_1645
	.word	-32
	.word	4
	.word	_Label_1646
	.word	-36
	.word	4
	.word	_Label_1647
	.word	-40
	.word	4
	.word	_Label_1648
	.word	-44
	.word	4
	.word	_Label_1649
	.word	-48
	.word	4
	.word	_Label_1650
	.word	-52
	.word	4
	.word	_Label_1651
	.word	-56
	.word	4
	.word	_Label_1652
	.word	-60
	.word	4
	.word	_Label_1653
	.word	-64
	.word	4
	.word	_Label_1654
	.word	-68
	.word	4
	.word	0
_Label_1637:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1638:
	.ascii	"Pself\0"
	.align
_Label_1639:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1651:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1652:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
_Label_1653:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1654:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1655
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1655:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1656
	.word	_sourceFileName
	.word	295		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1656:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_3100:
	push	r0
	sub	r1,1,r1
	bne	_Label_3100
	mov	1213,r13		! source line 1213
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1217,r13		! source line 1217
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0AS",r10
!   _temp_1657 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1659 = &_temp_1658
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1659 = _temp_1659 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1661:
!   Data Move: *_temp_1659 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1659 = _temp_1659 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1660 = _temp_1660 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1660) then goto _Label_1661
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1661
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1662 = &_temp_1658
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3101
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3101:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1657 = *_temp_1662  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3102:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3102
! RETURN STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1663
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1664
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1665
	.word	-12
	.word	4
	.word	_Label_1666
	.word	-16
	.word	4
	.word	_Label_1667
	.word	-20
	.word	4
	.word	_Label_1668
	.word	-104
	.word	84
	.word	_Label_1669
	.word	-108
	.word	4
	.word	0
_Label_1663:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1664:
	.ascii	"Pself\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_3103:
	push	r0
	sub	r1,1,r1
	bne	_Label_3103
	mov	1223,r13		! source line 1223
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1670 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1670  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1228,r13		! source line 1228
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1671 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1671  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1229,r13		! source line 1229
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1230,r13		! source line 1230
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1676 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1677 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1676  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1672:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1677 then goto _Label_1675		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1675
_Label_1673:
	mov	1230,r13		! source line 1230
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1678 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1678  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1680 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1680 [i ] into _temp_1681
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1679 = _temp_1681		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1679  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1232,r13		! source line 1232
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1682 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1682  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1233,r13		! source line 1233
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1684 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1684 [i ] into _temp_1685
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1683 = *_temp_1685  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1683  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1234,r13		! source line 1234
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1686 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1686  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1235,r13		! source line 1235
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1687 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1687  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1236,r13		! source line 1236
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1688 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1688  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1237,r13		! source line 1237
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1690) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1689  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1689  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1238,r13		! source line 1238
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1691 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1691  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1240,r13		! source line 1240
	mov	"\0\0IF",r10
	mov	1240,r13		! source line 1240
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1695) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1694  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1694) then goto _Label_1693
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1693
!	jmp	_Label_1692
_Label_1692:
! THEN...
	mov	1241,r13		! source line 1241
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1241,r13		! source line 1241
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1697) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1696  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1696  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1698
_Label_1693:
! ELSE...
	mov	1243,r13		! source line 1243
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1699 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1699  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1698:
! CALL STATEMENT...
!   _temp_1700 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1700  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0IF",r10
	mov	1246,r13		! source line 1246
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1703) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1701 else goto _Label_1702
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1702
	jmp	_Label_1701
_Label_1701:
! THEN...
	mov	1247,r13		! source line 1247
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1704 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1704  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1705
_Label_1702:
! ELSE...
	mov	1249,r13		! source line 1249
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1706 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1706  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1705:
! CALL STATEMENT...
!   _temp_1707 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1707  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1252,r13		! source line 1252
	mov	"\0\0IF",r10
	mov	1252,r13		! source line 1252
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1710) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1708 else goto _Label_1709
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1709
	jmp	_Label_1708
_Label_1708:
! THEN...
	mov	1253,r13		! source line 1253
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1711 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1711  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1712
_Label_1709:
! ELSE...
	mov	1255,r13		! source line 1255
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1713 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1713  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1712:
! CALL STATEMENT...
!   _temp_1714 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1714  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0IF",r10
	mov	1258,r13		! source line 1258
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1717) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1715 else goto _Label_1716
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1716
	jmp	_Label_1715
_Label_1715:
! THEN...
	mov	1259,r13		! source line 1259
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1718 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1718  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1719
_Label_1716:
! ELSE...
	mov	1261,r13		! source line 1261
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1720 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1720  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1719:
! CALL STATEMENT...
!   _temp_1721 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1721  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1264,r13		! source line 1264
	mov	"\0\0IF",r10
	mov	1264,r13		! source line 1264
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1724) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1722 else goto _Label_1723
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1723
	jmp	_Label_1722
_Label_1722:
! THEN...
	mov	1265,r13		! source line 1265
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1725 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1725  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1265,r13		! source line 1265
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1726
_Label_1723:
! ELSE...
	mov	1267,r13		! source line 1267
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1727 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1727  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1726:
! CALL STATEMENT...
!   Call the function
	mov	1269,r13		! source line 1269
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1674:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1672
! END FOR
_Label_1675:
! RETURN STATEMENT...
	mov	1230,r13		! source line 1230
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1728
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1729
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1730
	.word	-12
	.word	4
	.word	_Label_1731
	.word	-16
	.word	4
	.word	_Label_1732
	.word	-20
	.word	4
	.word	_Label_1733
	.word	-24
	.word	4
	.word	_Label_1734
	.word	-28
	.word	4
	.word	_Label_1735
	.word	-32
	.word	4
	.word	_Label_1736
	.word	-36
	.word	4
	.word	_Label_1737
	.word	-40
	.word	4
	.word	_Label_1738
	.word	-44
	.word	4
	.word	_Label_1739
	.word	-48
	.word	4
	.word	_Label_1740
	.word	-52
	.word	4
	.word	_Label_1741
	.word	-56
	.word	4
	.word	_Label_1742
	.word	-60
	.word	4
	.word	_Label_1743
	.word	-64
	.word	4
	.word	_Label_1744
	.word	-68
	.word	4
	.word	_Label_1745
	.word	-72
	.word	4
	.word	_Label_1746
	.word	-76
	.word	4
	.word	_Label_1747
	.word	-80
	.word	4
	.word	_Label_1748
	.word	-84
	.word	4
	.word	_Label_1749
	.word	-88
	.word	4
	.word	_Label_1750
	.word	-92
	.word	4
	.word	_Label_1751
	.word	-96
	.word	4
	.word	_Label_1752
	.word	-100
	.word	4
	.word	_Label_1753
	.word	-104
	.word	4
	.word	_Label_1754
	.word	-108
	.word	4
	.word	_Label_1755
	.word	-112
	.word	4
	.word	_Label_1756
	.word	-116
	.word	4
	.word	_Label_1757
	.word	-120
	.word	4
	.word	_Label_1758
	.word	-124
	.word	4
	.word	_Label_1759
	.word	-128
	.word	4
	.word	_Label_1760
	.word	-132
	.word	4
	.word	_Label_1761
	.word	-136
	.word	4
	.word	_Label_1762
	.word	-140
	.word	4
	.word	_Label_1763
	.word	-144
	.word	4
	.word	_Label_1764
	.word	-148
	.word	4
	.word	_Label_1765
	.word	-152
	.word	4
	.word	_Label_1766
	.word	-156
	.word	4
	.word	_Label_1767
	.word	-160
	.word	4
	.word	_Label_1768
	.word	-164
	.word	4
	.word	_Label_1769
	.word	-168
	.word	4
	.word	0
_Label_1728:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1729:
	.ascii	"Pself\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1700\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1699\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1753:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1754:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1755:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1756:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1682\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1769:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_3104:
	push	r0
	sub	r1,1,r1
	bne	_Label_3104
	mov	1275,r13		! source line 1275
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1280,r13		! source line 1280
	mov	"\0\0RE",r10
!   _temp_1772 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1772 [entry ] into _temp_1773
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1771 = *_temp_1773  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1770 = _temp_1771 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1770  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1774
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1775
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1776
	.word	12
	.word	4
	.word	_Label_1777
	.word	-12
	.word	4
	.word	_Label_1778
	.word	-16
	.word	4
	.word	_Label_1779
	.word	-20
	.word	4
	.word	_Label_1780
	.word	-24
	.word	4
	.word	0
_Label_1774:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1775:
	.ascii	"Pself\0"
	.align
_Label_1776:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1773\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_3105:
	push	r0
	sub	r1,1,r1
	bne	_Label_3105
	mov	1285,r13		! source line 1285
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1289,r13		! source line 1289
	mov	"\0\0RE",r10
!   _temp_1783 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1783 [entry ] into _temp_1784
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1782 = *_temp_1784  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1781 = _temp_1782 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1781  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1785
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1786
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1787
	.word	12
	.word	4
	.word	_Label_1788
	.word	-12
	.word	4
	.word	_Label_1789
	.word	-16
	.word	4
	.word	_Label_1790
	.word	-20
	.word	4
	.word	_Label_1791
	.word	-24
	.word	4
	.word	0
_Label_1785:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1786:
	.ascii	"Pself\0"
	.align
_Label_1787:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1784\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_3106:
	push	r0
	sub	r1,1,r1
	bne	_Label_3106
	mov	1294,r13		! source line 1294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1299,r13		! source line 1299
	mov	"\0\0AS",r10
!   _temp_1792 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1792 [entry ] into _temp_1793
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1797 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1797 [entry ] into _temp_1798
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1796 = *_temp_1798  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1795 = _temp_1796 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1794 = _temp_1795 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1793 = _temp_1794  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1299,r13		! source line 1299
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1799
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1800
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1801
	.word	12
	.word	4
	.word	_Label_1802
	.word	16
	.word	4
	.word	_Label_1803
	.word	-12
	.word	4
	.word	_Label_1804
	.word	-16
	.word	4
	.word	_Label_1805
	.word	-20
	.word	4
	.word	_Label_1806
	.word	-24
	.word	4
	.word	_Label_1807
	.word	-28
	.word	4
	.word	_Label_1808
	.word	-32
	.word	4
	.word	_Label_1809
	.word	-36
	.word	4
	.word	0
_Label_1799:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1800:
	.ascii	"Pself\0"
	.align
_Label_1801:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1802:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1794\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1793\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1792\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_3107:
	push	r0
	sub	r1,1,r1
	bne	_Label_3107
	mov	1304,r13		! source line 1304
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1308,r13		! source line 1308
	mov	"\0\0RE",r10
!   _temp_1813 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1813 [entry ] into _temp_1814
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1812 = *_temp_1814  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1811 = _temp_1812 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1811) then goto _Label_1815
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1815
!   _temp_1810 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1816
_Label_1815:
!   _temp_1810 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1816:
!   ReturnResult: _temp_1810  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1817
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1818
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1819
	.word	12
	.word	4
	.word	_Label_1820
	.word	-16
	.word	4
	.word	_Label_1821
	.word	-20
	.word	4
	.word	_Label_1822
	.word	-24
	.word	4
	.word	_Label_1823
	.word	-28
	.word	4
	.word	_Label_1824
	.word	-9
	.word	1
	.word	0
_Label_1817:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1818:
	.ascii	"Pself\0"
	.align
_Label_1819:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1824:
	.byte	'C'
	.ascii	"_temp_1810\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_3108:
	push	r0
	sub	r1,1,r1
	bne	_Label_3108
	mov	1313,r13		! source line 1313
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1317,r13		! source line 1317
	mov	"\0\0RE",r10
!   _temp_1828 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1828 [entry ] into _temp_1829
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1827 = *_temp_1829  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1826 = _temp_1827 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1826) then goto _Label_1830
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1830
!   _temp_1825 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1831
_Label_1830:
!   _temp_1825 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1831:
!   ReturnResult: _temp_1825  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1832
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1833
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1834
	.word	12
	.word	4
	.word	_Label_1835
	.word	-16
	.word	4
	.word	_Label_1836
	.word	-20
	.word	4
	.word	_Label_1837
	.word	-24
	.word	4
	.word	_Label_1838
	.word	-28
	.word	4
	.word	_Label_1839
	.word	-9
	.word	1
	.word	0
_Label_1832:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1833:
	.ascii	"Pself\0"
	.align
_Label_1834:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1839:
	.byte	'C'
	.ascii	"_temp_1825\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_3109:
	push	r0
	sub	r1,1,r1
	bne	_Label_3109
	mov	1322,r13		! source line 1322
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1326,r13		! source line 1326
	mov	"\0\0RE",r10
!   _temp_1843 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1843 [entry ] into _temp_1844
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1842 = *_temp_1844  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1841 = _temp_1842 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1841) then goto _Label_1845
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1845
!   _temp_1840 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1846
_Label_1845:
!   _temp_1840 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1846:
!   ReturnResult: _temp_1840  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1847
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1848
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1849
	.word	12
	.word	4
	.word	_Label_1850
	.word	-16
	.word	4
	.word	_Label_1851
	.word	-20
	.word	4
	.word	_Label_1852
	.word	-24
	.word	4
	.word	_Label_1853
	.word	-28
	.word	4
	.word	_Label_1854
	.word	-9
	.word	1
	.word	0
_Label_1847:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1848:
	.ascii	"Pself\0"
	.align
_Label_1849:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1854:
	.byte	'C'
	.ascii	"_temp_1840\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_3110:
	push	r0
	sub	r1,1,r1
	bne	_Label_3110
	mov	1331,r13		! source line 1331
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1335,r13		! source line 1335
	mov	"\0\0RE",r10
!   _temp_1858 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1858 [entry ] into _temp_1859
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1857 = *_temp_1859  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1856 = _temp_1857 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1856) then goto _Label_1860
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1860
!   _temp_1855 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1861
_Label_1860:
!   _temp_1855 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1861:
!   ReturnResult: _temp_1855  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1862
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1863
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1864
	.word	12
	.word	4
	.word	_Label_1865
	.word	-16
	.word	4
	.word	_Label_1866
	.word	-20
	.word	4
	.word	_Label_1867
	.word	-24
	.word	4
	.word	_Label_1868
	.word	-28
	.word	4
	.word	_Label_1869
	.word	-9
	.word	1
	.word	0
_Label_1862:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1863:
	.ascii	"Pself\0"
	.align
_Label_1864:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1869:
	.byte	'C'
	.ascii	"_temp_1855\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_3111:
	push	r0
	sub	r1,1,r1
	bne	_Label_3111
	mov	1340,r13		! source line 1340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1344,r13		! source line 1344
	mov	"\0\0AS",r10
!   _temp_1870 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1870 [entry ] into _temp_1871
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1874 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1874 [entry ] into _temp_1875
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1873 = *_temp_1875  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1872 = _temp_1873 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1871 = _temp_1872  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1344,r13		! source line 1344
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1876
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1877
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1878
	.word	12
	.word	4
	.word	_Label_1879
	.word	-12
	.word	4
	.word	_Label_1880
	.word	-16
	.word	4
	.word	_Label_1881
	.word	-20
	.word	4
	.word	_Label_1882
	.word	-24
	.word	4
	.word	_Label_1883
	.word	-28
	.word	4
	.word	_Label_1884
	.word	-32
	.word	4
	.word	0
_Label_1876:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1877:
	.ascii	"Pself\0"
	.align
_Label_1878:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1875\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1884:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_3112:
	push	r0
	sub	r1,1,r1
	bne	_Label_3112
	mov	1349,r13		! source line 1349
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1353,r13		! source line 1353
	mov	"\0\0AS",r10
!   _temp_1885 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1885 [entry ] into _temp_1886
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1889 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1889 [entry ] into _temp_1890
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1888 = *_temp_1890  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1887 = _temp_1888 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1886 = _temp_1887  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1353,r13		! source line 1353
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1891
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1892
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1893
	.word	12
	.word	4
	.word	_Label_1894
	.word	-12
	.word	4
	.word	_Label_1895
	.word	-16
	.word	4
	.word	_Label_1896
	.word	-20
	.word	4
	.word	_Label_1897
	.word	-24
	.word	4
	.word	_Label_1898
	.word	-28
	.word	4
	.word	_Label_1899
	.word	-32
	.word	4
	.word	0
_Label_1891:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1892:
	.ascii	"Pself\0"
	.align
_Label_1893:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1890\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1899:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_3113:
	push	r0
	sub	r1,1,r1
	bne	_Label_3113
	mov	1358,r13		! source line 1358
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1362,r13		! source line 1362
	mov	"\0\0AS",r10
!   _temp_1900 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1900 [entry ] into _temp_1901
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1904 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1904 [entry ] into _temp_1905
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1903 = *_temp_1905  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1902 = _temp_1903 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1901 = _temp_1902  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1362,r13		! source line 1362
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1906
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1907
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1908
	.word	12
	.word	4
	.word	_Label_1909
	.word	-12
	.word	4
	.word	_Label_1910
	.word	-16
	.word	4
	.word	_Label_1911
	.word	-20
	.word	4
	.word	_Label_1912
	.word	-24
	.word	4
	.word	_Label_1913
	.word	-28
	.word	4
	.word	_Label_1914
	.word	-32
	.word	4
	.word	0
_Label_1906:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1907:
	.ascii	"Pself\0"
	.align
_Label_1908:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1905\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1914:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_3114:
	push	r0
	sub	r1,1,r1
	bne	_Label_3114
	mov	1367,r13		! source line 1367
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1371,r13		! source line 1371
	mov	"\0\0AS",r10
!   _temp_1915 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1915 [entry ] into _temp_1916
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1919 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1919 [entry ] into _temp_1920
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1918 = *_temp_1920  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1917 = _temp_1918 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1916 = _temp_1917  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1371,r13		! source line 1371
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1921
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1922
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1923
	.word	12
	.word	4
	.word	_Label_1924
	.word	-12
	.word	4
	.word	_Label_1925
	.word	-16
	.word	4
	.word	_Label_1926
	.word	-20
	.word	4
	.word	_Label_1927
	.word	-24
	.word	4
	.word	_Label_1928
	.word	-28
	.word	4
	.word	_Label_1929
	.word	-32
	.word	4
	.word	0
_Label_1921:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1922:
	.ascii	"Pself\0"
	.align
_Label_1923:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1920\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1929:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_3115:
	push	r0
	sub	r1,1,r1
	bne	_Label_3115
	mov	1376,r13		! source line 1376
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1380,r13		! source line 1380
	mov	"\0\0AS",r10
!   _temp_1930 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1930 [entry ] into _temp_1931
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1934 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1934 [entry ] into _temp_1935
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1933 = *_temp_1935  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1932 = _temp_1933 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1931 = _temp_1932  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1380,r13		! source line 1380
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1936
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1937
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1938
	.word	12
	.word	4
	.word	_Label_1939
	.word	-12
	.word	4
	.word	_Label_1940
	.word	-16
	.word	4
	.word	_Label_1941
	.word	-20
	.word	4
	.word	_Label_1942
	.word	-24
	.word	4
	.word	_Label_1943
	.word	-28
	.word	4
	.word	_Label_1944
	.word	-32
	.word	4
	.word	0
_Label_1936:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1937:
	.ascii	"Pself\0"
	.align
_Label_1938:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1935\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1944:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_3116:
	push	r0
	sub	r1,1,r1
	bne	_Label_3116
	mov	1385,r13		! source line 1385
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1389,r13		! source line 1389
	mov	"\0\0AS",r10
!   _temp_1945 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1945 [entry ] into _temp_1946
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1949 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1949 [entry ] into _temp_1950
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1948 = *_temp_1950  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1947 = _temp_1948 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1946 = _temp_1947  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1389,r13		! source line 1389
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1951
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1952
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1953
	.word	12
	.word	4
	.word	_Label_1954
	.word	-12
	.word	4
	.word	_Label_1955
	.word	-16
	.word	4
	.word	_Label_1956
	.word	-20
	.word	4
	.word	_Label_1957
	.word	-24
	.word	4
	.word	_Label_1958
	.word	-28
	.word	4
	.word	_Label_1959
	.word	-32
	.word	4
	.word	0
_Label_1951:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1952:
	.ascii	"Pself\0"
	.align
_Label_1953:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1950\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_1959:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_3117:
	push	r0
	sub	r1,1,r1
	bne	_Label_3117
	mov	1394,r13		! source line 1394
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1398,r13		! source line 1398
	mov	"\0\0AS",r10
!   _temp_1960 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1960 [entry ] into _temp_1961
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1964 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1964 [entry ] into _temp_1965
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1963 = *_temp_1965  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1962 = _temp_1963 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1961 = _temp_1962  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1398,r13		! source line 1398
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1966
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1967
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1968
	.word	12
	.word	4
	.word	_Label_1969
	.word	-12
	.word	4
	.word	_Label_1970
	.word	-16
	.word	4
	.word	_Label_1971
	.word	-20
	.word	4
	.word	_Label_1972
	.word	-24
	.word	4
	.word	_Label_1973
	.word	-28
	.word	4
	.word	_Label_1974
	.word	-32
	.word	4
	.word	0
_Label_1966:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1967:
	.ascii	"Pself\0"
	.align
_Label_1968:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1965\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_3118:
	push	r0
	sub	r1,1,r1
	bne	_Label_3118
	mov	1403,r13		! source line 1403
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1407,r13		! source line 1407
	mov	"\0\0AS",r10
!   _temp_1975 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1975 [entry ] into _temp_1976
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1979 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1979 [entry ] into _temp_1980
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1978 = *_temp_1980  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1977 = _temp_1978 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1976 = _temp_1977  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1407,r13		! source line 1407
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1981
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1982
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1983
	.word	12
	.word	4
	.word	_Label_1984
	.word	-12
	.word	4
	.word	_Label_1985
	.word	-16
	.word	4
	.word	_Label_1986
	.word	-20
	.word	4
	.word	_Label_1987
	.word	-24
	.word	4
	.word	_Label_1988
	.word	-28
	.word	4
	.word	_Label_1989
	.word	-32
	.word	4
	.word	0
_Label_1981:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1982:
	.ascii	"Pself\0"
	.align
_Label_1983:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1980\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1979\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1988:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_1989:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_3119:
	push	r0
	sub	r1,1,r1
	bne	_Label_3119
	mov	1412,r13		! source line 1412
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1991 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1991 [0 ] into _temp_1992
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1990 = _temp_1992		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1993 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1990  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1993  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1418,r13		! source line 1418
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1418,r13		! source line 1418
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1994
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1995
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1996
	.word	-12
	.word	4
	.word	_Label_1997
	.word	-16
	.word	4
	.word	_Label_1998
	.word	-20
	.word	4
	.word	_Label_1999
	.word	-24
	.word	4
	.word	0
_Label_1994:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1995:
	.ascii	"Pself\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_3120:
	push	r0
	sub	r1,1,r1
	bne	_Label_3120
	mov	1423,r13		! source line 1423
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2000
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2000
	jmp	_Label_2001
_Label_2000:
! THEN...
	mov	1439,r13		! source line 1439
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1439,r13		! source line 1439
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2002
_Label_2001:
! ELSE...
	mov	1440,r13		! source line 1440
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1440,r13		! source line 1440
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2004		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2004
!	jmp	_Label_2003
_Label_2003:
! THEN...
	mov	1441,r13		! source line 1441
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1441,r13		! source line 1441
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2004:
! END IF...
_Label_2002:
! ASSIGNMENT STATEMENT...
	mov	1443,r13		! source line 1443
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1447,r13		! source line 1447
	mov	"\0\0WH",r10
_Label_2005:
!	jmp	_Label_2006
_Label_2006:
	mov	1447,r13		! source line 1447
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2009		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2009
!	jmp	_Label_2008
_Label_2008:
! THEN...
	mov	1449,r13		! source line 1449
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2010 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2010  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1449,r13		! source line 1449
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2009:
! IF STATEMENT...
	mov	1452,r13		! source line 1452
	mov	"\0\0IF",r10
	mov	1452,r13		! source line 1452
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2014) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2013  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2013 then goto _Label_2012 else goto _Label_2011
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2011
	jmp	_Label_2012
_Label_2011:
! THEN...
	mov	1453,r13		! source line 1453
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2015 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2015  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1453,r13		! source line 1453
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2012:
! ASSIGNMENT STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0AS",r10
	mov	1456,r13		! source line 1456
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2017) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2016  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2016 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0WH",r10
_Label_2018:
!   if offset >= 8192 then goto _Label_2020		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2020
!	jmp	_Label_2019
_Label_2019:
	mov	1458,r13		! source line 1458
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1461,r13		! source line 1461
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2021 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2021  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1462,r13		! source line 1462
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1463,r13		! source line 1463
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2023		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2023
!	jmp	_Label_2022
_Label_2022:
! THEN...
	mov	1467,r13		! source line 1467
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1467,r13		! source line 1467
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2023:
! END WHILE...
	jmp	_Label_2018
_Label_2020:
! ASSIGNMENT STATEMENT...
	mov	1470,r13		! source line 1470
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1471,r13		! source line 1471
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2005
_Label_2007:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2024
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2025
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2026
	.word	12
	.word	4
	.word	_Label_2027
	.word	16
	.word	4
	.word	_Label_2028
	.word	20
	.word	4
	.word	_Label_2029
	.word	-9
	.word	1
	.word	_Label_2030
	.word	-16
	.word	4
	.word	_Label_2031
	.word	-20
	.word	4
	.word	_Label_2032
	.word	-24
	.word	4
	.word	_Label_2033
	.word	-28
	.word	4
	.word	_Label_2034
	.word	-10
	.word	1
	.word	_Label_2035
	.word	-32
	.word	4
	.word	_Label_2036
	.word	-36
	.word	4
	.word	_Label_2037
	.word	-40
	.word	4
	.word	_Label_2038
	.word	-44
	.word	4
	.word	_Label_2039
	.word	-48
	.word	4
	.word	0
_Label_2024:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2025:
	.ascii	"Pself\0"
	.align
_Label_2026:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2027:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2028:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2029:
	.byte	'C'
	.ascii	"_temp_2021\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2016\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2015\0"
	.align
_Label_2033:
	.byte	'?'
	.ascii	"_temp_2014\0"
	.align
_Label_2034:
	.byte	'C'
	.ascii	"_temp_2013\0"
	.align
_Label_2035:
	.byte	'?'
	.ascii	"_temp_2010\0"
	.align
_Label_2036:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2037:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2038:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2039:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_3121:
	push	r0
	sub	r1,1,r1
	bne	_Label_3121
	mov	1477,r13		! source line 1477
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2040
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2040
	jmp	_Label_2041
_Label_2040:
! THEN...
	mov	1489,r13		! source line 1489
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2042
_Label_2041:
! ELSE...
	mov	1490,r13		! source line 1490
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1490,r13		! source line 1490
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2044		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2044
!	jmp	_Label_2043
_Label_2043:
! THEN...
	mov	1491,r13		! source line 1491
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2044:
! END IF...
_Label_2042:
! ASSIGNMENT STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1494,r13		! source line 1494
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1495,r13		! source line 1495
	mov	"\0\0WH",r10
_Label_2045:
!	jmp	_Label_2046
_Label_2046:
	mov	1495,r13		! source line 1495
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2051		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2051
	jmp	_Label_2048
_Label_2051:
	mov	1497,r13		! source line 1497
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2053) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2052  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2052 then goto _Label_2050 else goto _Label_2048
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2048
	jmp	_Label_2050
_Label_2050:
	mov	1498,r13		! source line 1498
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2055) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_2054  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2054 then goto _Label_2049 else goto _Label_2048
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2048
	jmp	_Label_2049
_Label_2048:
! THEN...
	mov	1499,r13		! source line 1499
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2049:
! ASSIGNMENT STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0AS",r10
	mov	1501,r13		! source line 1501
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2057) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2056  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2056 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0WH",r10
_Label_2058:
!   if offset >= 8192 then goto _Label_2060		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2060
!	jmp	_Label_2059
_Label_2059:
	mov	1502,r13		! source line 1502
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2061 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2061  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1506,r13		! source line 1506
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2063		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2063
!	jmp	_Label_2062
_Label_2062:
! THEN...
	mov	1509,r13		! source line 1509
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2063:
! END WHILE...
	jmp	_Label_2058
_Label_2060:
! ASSIGNMENT STATEMENT...
	mov	1512,r13		! source line 1512
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1513,r13		! source line 1513
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2045
_Label_2047:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2064
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2065
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2066
	.word	12
	.word	4
	.word	_Label_2067
	.word	16
	.word	4
	.word	_Label_2068
	.word	20
	.word	4
	.word	_Label_2069
	.word	-9
	.word	1
	.word	_Label_2070
	.word	-16
	.word	4
	.word	_Label_2071
	.word	-20
	.word	4
	.word	_Label_2072
	.word	-24
	.word	4
	.word	_Label_2073
	.word	-10
	.word	1
	.word	_Label_2074
	.word	-28
	.word	4
	.word	_Label_2075
	.word	-11
	.word	1
	.word	_Label_2076
	.word	-32
	.word	4
	.word	_Label_2077
	.word	-36
	.word	4
	.word	_Label_2078
	.word	-40
	.word	4
	.word	_Label_2079
	.word	-44
	.word	4
	.word	0
_Label_2064:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2065:
	.ascii	"Pself\0"
	.align
_Label_2066:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2067:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2068:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2069:
	.byte	'C'
	.ascii	"_temp_2061\0"
	.align
_Label_2070:
	.byte	'?'
	.ascii	"_temp_2057\0"
	.align
_Label_2071:
	.byte	'?'
	.ascii	"_temp_2056\0"
	.align
_Label_2072:
	.byte	'?'
	.ascii	"_temp_2055\0"
	.align
_Label_2073:
	.byte	'C'
	.ascii	"_temp_2054\0"
	.align
_Label_2074:
	.byte	'?'
	.ascii	"_temp_2053\0"
	.align
_Label_2075:
	.byte	'C'
	.ascii	"_temp_2052\0"
	.align
_Label_2076:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2077:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2078:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2079:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_3122:
	push	r0
	sub	r1,1,r1
	bne	_Label_3122
	mov	1519,r13		! source line 1519
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0IF",r10
	mov	1543,r13		! source line 1543
	mov	"\0\0SE",r10
!   _temp_2083 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2084) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2083  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2082  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2082 >= 4 then goto _Label_2081		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2081
!	jmp	_Label_2080
_Label_2080:
! THEN...
	mov	1546,r13		! source line 1546
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1546,r13		! source line 1546
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2081:
! IF STATEMENT...
	mov	1550,r13		! source line 1550
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2086		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2086
!	jmp	_Label_2085
_Label_2085:
! THEN...
	mov	1551,r13		! source line 1551
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1551,r13		! source line 1551
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2086:
! ASSIGNMENT STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1556,r13		! source line 1556
	mov	"\0\0RE",r10
	mov	1556,r13		! source line 1556
	mov	"\0\0SE",r10
!   _temp_2089 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2088 = _temp_2089 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2090 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2091) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2088  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2090  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2087  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2087  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2092
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2093
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2094
	.word	12
	.word	4
	.word	_Label_2095
	.word	16
	.word	4
	.word	_Label_2096
	.word	20
	.word	4
	.word	_Label_2097
	.word	-12
	.word	4
	.word	_Label_2098
	.word	-16
	.word	4
	.word	_Label_2099
	.word	-20
	.word	4
	.word	_Label_2100
	.word	-24
	.word	4
	.word	_Label_2101
	.word	-28
	.word	4
	.word	_Label_2102
	.word	-32
	.word	4
	.word	_Label_2103
	.word	-36
	.word	4
	.word	_Label_2104
	.word	-40
	.word	4
	.word	_Label_2105
	.word	-44
	.word	4
	.word	0
_Label_2092:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2093:
	.ascii	"Pself\0"
	.align
_Label_2094:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2095:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2096:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2091\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2090\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2089\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2088\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2087\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2104:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2105:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2106
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2106:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2107
	.word	_sourceFileName
	.word	329		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2107:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3123:
	push	r0
	sub	r1,1,r1
	bne	_Label_3123
	mov	2075,r13		! source line 2075
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2108 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2108  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2076,r13		! source line 2076
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2077,r13		! source line 2077
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2078,r13		! source line 2078
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2080,r13		! source line 2080
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2081,r13		! source line 2081
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2082,r13		! source line 2082
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2084,r13		! source line 2084
	mov	"\0\0SE",r10
!   _temp_2110 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2085,r13		! source line 2085
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0SE",r10
!   _temp_2112 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2086,r13		! source line 2086
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2113
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2114
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2115
	.word	-12
	.word	4
	.word	_Label_2116
	.word	-16
	.word	4
	.word	_Label_2117
	.word	-20
	.word	4
	.word	_Label_2118
	.word	-24
	.word	4
	.word	_Label_2119
	.word	-28
	.word	4
	.word	0
_Label_2113:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2114:
	.ascii	"Pself\0"
	.align
_Label_2115:
	.byte	'?'
	.ascii	"_temp_2112\0"
	.align
_Label_2116:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2117:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2118:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2119:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3124:
	push	r0
	sub	r1,1,r1
	bne	_Label_3124
	mov	2091,r13		! source line 2091
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0SE",r10
!   _temp_2120 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0WH",r10
_Label_2121:
!	jmp	_Label_2122
_Label_2122:
	mov	2105,r13		! source line 2105
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0SE",r10
!   _temp_2124 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2125) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2124  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2109,r13		! source line 2109
	mov	"\0\0SE",r10
!   _temp_2126 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2112,r13		! source line 2112
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2135 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2129
	cmp	r1,2
	be	_Label_2130
	cmp	r1,3
	be	_Label_2131
	cmp	r1,4
	be	_Label_2132
	cmp	r1,5
	be	_Label_2133
	cmp	r1,6
	be	_Label_2134
	jmp	_Label_2127
! CASE 1...
_Label_2129:
! SEND STATEMENT...
	mov	2114,r13		! source line 2114
	mov	"\0\0SE",r10
!   _temp_2136 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2115,r13		! source line 2115
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2130:
! CALL STATEMENT...
!   _temp_2137 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2137  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2117,r13		! source line 2117
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2131:
! CALL STATEMENT...
!   _temp_2138 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2138  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2119,r13		! source line 2119
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2132:
! CALL STATEMENT...
!   _temp_2139 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2139  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2121,r13		! source line 2121
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2133:
! BREAK STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0BR",r10
	jmp	_Label_2128
! CASE 6...
_Label_2134:
! CALL STATEMENT...
!   _temp_2140 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2140  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2127,r13		! source line 2127
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2127:
! CALL STATEMENT...
!   _temp_2141 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2141  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2129,r13		! source line 2129
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2128:
! END WHILE...
	jmp	_Label_2121
_Label_2123:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2142
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2143
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2144
	.word	12
	.word	4
	.word	_Label_2145
	.word	16
	.word	4
	.word	_Label_2146
	.word	20
	.word	4
	.word	_Label_2147
	.word	-12
	.word	4
	.word	_Label_2148
	.word	-16
	.word	4
	.word	_Label_2149
	.word	-20
	.word	4
	.word	_Label_2150
	.word	-24
	.word	4
	.word	_Label_2151
	.word	-28
	.word	4
	.word	_Label_2152
	.word	-32
	.word	4
	.word	_Label_2153
	.word	-36
	.word	4
	.word	_Label_2154
	.word	-40
	.word	4
	.word	_Label_2155
	.word	-44
	.word	4
	.word	_Label_2156
	.word	-48
	.word	4
	.word	_Label_2157
	.word	-52
	.word	4
	.word	0
_Label_2142:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2143:
	.ascii	"Pself\0"
	.align
_Label_2144:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2145:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2146:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2147:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2148:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2149:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2150:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2151:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2152:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2153:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
_Label_2154:
	.byte	'?'
	.ascii	"_temp_2126\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2138,r13		! source line 2138
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2153,r13		! source line 2153
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2156,r13		! source line 2156
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2157,r13		! source line 2157
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2158,r13		! source line 2158
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2159,r13		! source line 2159
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2158
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2159
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2160
	.word	12
	.word	4
	.word	_Label_2161
	.word	16
	.word	4
	.word	_Label_2162
	.word	20
	.word	4
	.word	_Label_2163
	.word	24
	.word	4
	.word	0
_Label_2158:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2159:
	.ascii	"Pself\0"
	.align
_Label_2160:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2161:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2162:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2163:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3125:
	push	r0
	sub	r1,1,r1
	bne	_Label_3125
	mov	2164,r13		! source line 2164
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2176,r13		! source line 2176
	mov	"\0\0SE",r10
!   _temp_2164 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0WH",r10
_Label_2165:
!	jmp	_Label_2166
_Label_2166:
	mov	2177,r13		! source line 2177
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0SE",r10
!   _temp_2168 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2169) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2168  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2180,r13		! source line 2180
	mov	"\0\0SE",r10
!   _temp_2170 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2183,r13		! source line 2183
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2179 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2173
	cmp	r1,2
	be	_Label_2174
	cmp	r1,3
	be	_Label_2175
	cmp	r1,4
	be	_Label_2176
	cmp	r1,5
	be	_Label_2177
	cmp	r1,6
	be	_Label_2178
	jmp	_Label_2171
! CASE 1...
_Label_2173:
! SEND STATEMENT...
	mov	2185,r13		! source line 2185
	mov	"\0\0SE",r10
!   _temp_2180 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2186,r13		! source line 2186
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2174:
! CALL STATEMENT...
!   _temp_2181 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2181  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2188,r13		! source line 2188
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2175:
! CALL STATEMENT...
!   _temp_2182 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2182  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2190,r13		! source line 2190
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2176:
! CALL STATEMENT...
!   _temp_2183 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2183  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2192,r13		! source line 2192
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2177:
! BREAK STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0BR",r10
	jmp	_Label_2172
! CASE 6...
_Label_2178:
! CALL STATEMENT...
!   _temp_2184 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2184  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2198,r13		! source line 2198
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2171:
! CALL STATEMENT...
!   _temp_2185 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2185  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2200,r13		! source line 2200
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2172:
! END WHILE...
	jmp	_Label_2165
_Label_2167:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2186
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2187
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2188
	.word	12
	.word	4
	.word	_Label_2189
	.word	16
	.word	4
	.word	_Label_2190
	.word	20
	.word	4
	.word	_Label_2191
	.word	-12
	.word	4
	.word	_Label_2192
	.word	-16
	.word	4
	.word	_Label_2193
	.word	-20
	.word	4
	.word	_Label_2194
	.word	-24
	.word	4
	.word	_Label_2195
	.word	-28
	.word	4
	.word	_Label_2196
	.word	-32
	.word	4
	.word	_Label_2197
	.word	-36
	.word	4
	.word	_Label_2198
	.word	-40
	.word	4
	.word	_Label_2199
	.word	-44
	.word	4
	.word	_Label_2200
	.word	-48
	.word	4
	.word	_Label_2201
	.word	-52
	.word	4
	.word	0
_Label_2186:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2187:
	.ascii	"Pself\0"
	.align
_Label_2188:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2189:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2190:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2191:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2192:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2193:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2194:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2195:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2196:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2197:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2198:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2199:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2200:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2201:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2209,r13		! source line 2209
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2226,r13		! source line 2226
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2227,r13		! source line 2227
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2229,r13		! source line 2229
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2229,r13		! source line 2229
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2202
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2203
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2204
	.word	12
	.word	4
	.word	_Label_2205
	.word	16
	.word	4
	.word	_Label_2206
	.word	20
	.word	4
	.word	_Label_2207
	.word	24
	.word	4
	.word	0
_Label_2202:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2203:
	.ascii	"Pself\0"
	.align
_Label_2204:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2205:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2206:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2207:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2208
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2208:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2209
	.word	_sourceFileName
	.word	352		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2209:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3126:
	push	r0
	sub	r1,1,r1
	bne	_Label_3126
	mov	2240,r13		! source line 2240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2210 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2210  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2247,r13		! source line 2247
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2248,r13		! source line 2248
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0SE",r10
!   _temp_2212 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2253,r13		! source line 2253
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2254,r13		! source line 2254
	mov	"\0\0SE",r10
!   _temp_2215 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2255,r13		! source line 2255
	mov	"\0\0AS",r10
!   _temp_2216 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2218 = &_temp_2217
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2218 = _temp_2218 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2220 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3127:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3127
!   _temp_2220 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2222:
!   Data Move: *_temp_2218 = _temp_2220  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3128:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3128
!   _temp_2218 = _temp_2218 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2219 = _temp_2219 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2219) then goto _Label_2222
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2222
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2223 = &_temp_2217
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3129
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3129:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2216 = *_temp_2223  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3130:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3130
! FOR STATEMENT...
	mov	2257,r13		! source line 2257
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2228 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2229 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2228  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2224:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2229 then goto _Label_2227		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2227
_Label_2225:
	mov	2257,r13		! source line 2257
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0AS",r10
!   _temp_2230 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2230 [i ] into _temp_2231
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2232 = _temp_2231 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2232 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2259,r13		! source line 2259
	mov	"\0\0SE",r10
!   _temp_2233 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2233 [i ] into _temp_2234
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2260,r13		! source line 2260
	mov	"\0\0SE",r10
!   _temp_2236 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2236 [i ] into _temp_2237
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2235 = _temp_2237		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2238 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2235  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2226:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2224
! END FOR
_Label_2227:
! ASSIGNMENT STATEMENT...
	mov	2264,r13		! source line 2264
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2265,r13		! source line 2265
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2266,r13		! source line 2266
	mov	"\0\0SE",r10
!   _temp_2241 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2267,r13		! source line 2267
	mov	"\0\0AS",r10
!   _temp_2242 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2244 = &_temp_2243
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2244 = _temp_2244 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2246 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3131:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3131
!   _temp_2246 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2248:
!   Data Move: *_temp_2244 = _temp_2246  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3132:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3132
!   _temp_2244 = _temp_2244 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2245 = _temp_2245 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2245) then goto _Label_2248
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2248
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2249 = &_temp_2243
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3133
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3133:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2242 = *_temp_2249  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3134:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3134
! FOR STATEMENT...
	mov	2269,r13		! source line 2269
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2254 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2255 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2254  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2250:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2255 then goto _Label_2253		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2253
_Label_2251:
	mov	2269,r13		! source line 2269
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2270,r13		! source line 2270
	mov	"\0\0AS",r10
!   _temp_2256 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2256 [i ] into _temp_2257
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2258 = _temp_2257 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2258 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2271,r13		! source line 2271
	mov	"\0\0SE",r10
!   _temp_2260 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2260 [i ] into _temp_2261
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2259 = _temp_2261		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2262 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2259  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2252:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2250
! END FOR
_Label_2253:
! ASSIGNMENT STATEMENT...
	mov	2275,r13		! source line 2275
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3135:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3135
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0AS",r10
!   _temp_2264 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2265 = _temp_2264 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2265 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2281,r13		! source line 2281
	mov	"\0\0AS",r10
	mov	2281,r13		! source line 2281
	mov	"\0\0SE",r10
!   _temp_2266 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2282,r13		! source line 2282
	mov	"\0\0SE",r10
!   _temp_2267 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2282,r13		! source line 2282
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2268
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2269
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2270
	.word	-12
	.word	4
	.word	_Label_2271
	.word	-16
	.word	4
	.word	_Label_2272
	.word	-20
	.word	4
	.word	_Label_2273
	.word	-24
	.word	4
	.word	_Label_2274
	.word	-28
	.word	4
	.word	_Label_2275
	.word	-32
	.word	4
	.word	_Label_2276
	.word	-36
	.word	4
	.word	_Label_2277
	.word	-40
	.word	4
	.word	_Label_2278
	.word	-44
	.word	4
	.word	_Label_2279
	.word	-48
	.word	4
	.word	_Label_2280
	.word	-52
	.word	4
	.word	_Label_2281
	.word	-56
	.word	4
	.word	_Label_2282
	.word	-60
	.word	4
	.word	_Label_2283
	.word	-64
	.word	4
	.word	_Label_2284
	.word	-68
	.word	4
	.word	_Label_2285
	.word	-72
	.word	4
	.word	_Label_2286
	.word	-100
	.word	28
	.word	_Label_2287
	.word	-104
	.word	4
	.word	_Label_2288
	.word	-108
	.word	4
	.word	_Label_2289
	.word	-392
	.word	284
	.word	_Label_2290
	.word	-396
	.word	4
	.word	_Label_2291
	.word	-400
	.word	4
	.word	_Label_2292
	.word	-404
	.word	4
	.word	_Label_2293
	.word	-408
	.word	4
	.word	_Label_2294
	.word	-412
	.word	4
	.word	_Label_2295
	.word	-416
	.word	4
	.word	_Label_2296
	.word	-420
	.word	4
	.word	_Label_2297
	.word	-424
	.word	4
	.word	_Label_2298
	.word	-428
	.word	4
	.word	_Label_2299
	.word	-432
	.word	4
	.word	_Label_2300
	.word	-436
	.word	4
	.word	_Label_2301
	.word	-440
	.word	4
	.word	_Label_2302
	.word	-444
	.word	4
	.word	_Label_2303
	.word	-448
	.word	4
	.word	_Label_2304
	.word	-452
	.word	4
	.word	_Label_2305
	.word	-456
	.word	4
	.word	_Label_2306
	.word	-460
	.word	4
	.word	_Label_2307
	.word	-500
	.word	40
	.word	_Label_2308
	.word	-504
	.word	4
	.word	_Label_2309
	.word	-508
	.word	4
	.word	_Label_2310
	.word	-912
	.word	404
	.word	_Label_2311
	.word	-916
	.word	4
	.word	_Label_2312
	.word	-920
	.word	4
	.word	_Label_2313
	.word	-924
	.word	4
	.word	_Label_2314
	.word	-928
	.word	4
	.word	_Label_2315
	.word	-932
	.word	4
	.word	_Label_2316
	.word	-936
	.word	4
	.word	_Label_2317
	.word	-940
	.word	4
	.word	_Label_2318
	.word	-944
	.word	4
	.word	0
_Label_2268:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2269:
	.ascii	"Pself\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2254\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2236\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2235\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2234\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2232\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2318:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3136:
	push	r0
	sub	r1,1,r1
	bne	_Label_3136
	mov	2289,r13		! source line 2289
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0SE",r10
!   _temp_2319 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2320 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2320  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2292,r13		! source line 2292
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2325 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2326 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2325  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2321:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2326 then goto _Label_2324		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2324
_Label_2322:
	mov	2293,r13		! source line 2293
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2327 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2327  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2294,r13		! source line 2294
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2295,r13		! source line 2295
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2328 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2328  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2296,r13		! source line 2296
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0SE",r10
!   _temp_2329 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2329 [i ] into _temp_2330
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2323:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2321
! END FOR
_Label_2324:
! CALL STATEMENT...
!   _temp_2331 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2331  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2299,r13		! source line 2299
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0SE",r10
!   _temp_2332 = _function_210_printFCB
	set	_function_210_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2333 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2332  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2301,r13		! source line 2301
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2334 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2334  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2302,r13		! source line 2302
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2303,r13		! source line 2303
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2339 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2340 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2339  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2335:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2340 then goto _Label_2338		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2338
_Label_2336:
	mov	2303,r13		! source line 2303
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2341 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2341  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2304,r13		! source line 2304
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2305,r13		! source line 2305
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2342 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2342  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2306,r13		! source line 2306
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2344 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2344 [i ] into _temp_2345
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2343 = _temp_2345		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2343  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2307,r13		! source line 2307
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2346 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2346  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2308,r13		! source line 2308
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0SE",r10
!   _temp_2347 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2347 [i ] into _temp_2348
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2337:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2335
! END FOR
_Label_2338:
! CALL STATEMENT...
!   _temp_2349 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2349  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2311,r13		! source line 2311
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2312,r13		! source line 2312
	mov	"\0\0SE",r10
!   _temp_2350 = _function_209_printOpen
	set	_function_209_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2351 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2350  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2313,r13		! source line 2313
	mov	"\0\0SE",r10
!   _temp_2352 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2313,r13		! source line 2313
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2353
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2354
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2355
	.word	-12
	.word	4
	.word	_Label_2356
	.word	-16
	.word	4
	.word	_Label_2357
	.word	-20
	.word	4
	.word	_Label_2358
	.word	-24
	.word	4
	.word	_Label_2359
	.word	-28
	.word	4
	.word	_Label_2360
	.word	-32
	.word	4
	.word	_Label_2361
	.word	-36
	.word	4
	.word	_Label_2362
	.word	-40
	.word	4
	.word	_Label_2363
	.word	-44
	.word	4
	.word	_Label_2364
	.word	-48
	.word	4
	.word	_Label_2365
	.word	-52
	.word	4
	.word	_Label_2366
	.word	-56
	.word	4
	.word	_Label_2367
	.word	-60
	.word	4
	.word	_Label_2368
	.word	-64
	.word	4
	.word	_Label_2369
	.word	-68
	.word	4
	.word	_Label_2370
	.word	-72
	.word	4
	.word	_Label_2371
	.word	-76
	.word	4
	.word	_Label_2372
	.word	-80
	.word	4
	.word	_Label_2373
	.word	-84
	.word	4
	.word	_Label_2374
	.word	-88
	.word	4
	.word	_Label_2375
	.word	-92
	.word	4
	.word	_Label_2376
	.word	-96
	.word	4
	.word	_Label_2377
	.word	-100
	.word	4
	.word	_Label_2378
	.word	-104
	.word	4
	.word	_Label_2379
	.word	-108
	.word	4
	.word	_Label_2380
	.word	-112
	.word	4
	.word	_Label_2381
	.word	-116
	.word	4
	.word	0
_Label_2353:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2354:
	.ascii	"Pself\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2351\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2350\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2349\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2348\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2345\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2344\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2343\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2342\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2341\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2340\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2339\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2376:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2377:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2378:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2379:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2380:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2381:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3137:
	push	r0
	sub	r1,1,r1
	bne	_Label_3137
	mov	2318,r13		! source line 2318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2334,r13		! source line 2334
	mov	"\0\0AS",r10
	mov	2334,r13		! source line 2334
	mov	"\0\0SE",r10
!   _temp_2382 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2335,r13		! source line 2335
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2383
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2383
	jmp	_Label_2384
_Label_2383:
! THEN...
	mov	2336,r13		! source line 2336
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2336,r13		! source line 2336
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2384:
! SEND STATEMENT...
	mov	2340,r13		! source line 2340
	mov	"\0\0SE",r10
!   _temp_2385 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2341,r13		! source line 2341
	mov	"\0\0WH",r10
_Label_2386:
	mov	2341,r13		! source line 2341
	mov	"\0\0SE",r10
!   _temp_2389 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2387 else goto _Label_2388
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2388
	jmp	_Label_2387
_Label_2387:
	mov	2341,r13		! source line 2341
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2342,r13		! source line 2342
	mov	"\0\0SE",r10
!   _temp_2390 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2391 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2390  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2386
_Label_2388:
! ASSIGNMENT STATEMENT...
	mov	2344,r13		! source line 2344
	mov	"\0\0AS",r10
	mov	2344,r13		! source line 2344
	mov	"\0\0SE",r10
!   _temp_2392 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2347,r13		! source line 2347
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2393 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2393 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2348,r13		! source line 2348
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2394 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2394 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2351,r13		! source line 2351
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2395 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2395 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2353,r13		! source line 2353
	mov	"\0\0SE",r10
!   _temp_2396 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2354,r13		! source line 2354
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2397
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2398
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2399
	.word	12
	.word	4
	.word	_Label_2400
	.word	-12
	.word	4
	.word	_Label_2401
	.word	-16
	.word	4
	.word	_Label_2402
	.word	-20
	.word	4
	.word	_Label_2403
	.word	-24
	.word	4
	.word	_Label_2404
	.word	-28
	.word	4
	.word	_Label_2405
	.word	-32
	.word	4
	.word	_Label_2406
	.word	-36
	.word	4
	.word	_Label_2407
	.word	-40
	.word	4
	.word	_Label_2408
	.word	-44
	.word	4
	.word	_Label_2409
	.word	-48
	.word	4
	.word	_Label_2410
	.word	-52
	.word	4
	.word	_Label_2411
	.word	-56
	.word	4
	.word	0
_Label_2397:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2398:
	.ascii	"Pself\0"
	.align
_Label_2399:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2393\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2410:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2411:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3138:
	push	r0
	sub	r1,1,r1
	bne	_Label_3138
	mov	2359,r13		! source line 2359
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2413		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2413
!	jmp	_Label_2412
_Label_2412:
! THEN...
	mov	2390,r13		! source line 2390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2414 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2414  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2390,r13		! source line 2390
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2413:
! ASSIGNMENT STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2396,r13		! source line 2396
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2397,r13		! source line 2397
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0WH",r10
_Label_2415:
!   if numFiles <= 0 then goto _Label_2417		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2417
!	jmp	_Label_2416
_Label_2416:
	mov	2400,r13		! source line 2400
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2418 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2418  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2401,r13		! source line 2401
	mov	"\0\0CA",r10
	call	_function_211_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2402,r13		! source line 2402
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2419 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2419  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2403,r13		! source line 2403
	mov	"\0\0CA",r10
	call	_function_211_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2404,r13		! source line 2404
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2420 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2420  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2405,r13		! source line 2405
	mov	"\0\0CA",r10
	call	_function_211_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2424 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2424 then goto _Label_2422		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2422
!	jmp	_Label_2423
_Label_2423:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2426
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2425 = _temp_2426		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2425  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2408,r13		! source line 2408
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2421 else goto _Label_2422
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2422
	jmp	_Label_2421
_Label_2421:
! THEN...
	mov	2409,r13		! source line 2409
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0BR",r10
	jmp	_Label_2417
! END IF...
_Label_2422:
! ASSIGNMENT STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2415
_Label_2417:
! IF STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2428		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2428
!	jmp	_Label_2427
_Label_2427:
! THEN...
	mov	2417,r13		! source line 2417
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2428:
! SEND STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0SE",r10
!   _temp_2429 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2434 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2435 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2434  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2430:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2435 then goto _Label_2433		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2433
_Label_2431:
	mov	2422,r13		! source line 2422
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0AS",r10
!   _temp_2436 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2436 [i ] into _temp_2437
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2437		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2441 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2440 = *_temp_2441  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2440 != start then goto _Label_2439		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2439
!	jmp	_Label_2438
_Label_2438:
! THEN...
	mov	2425,r13		! source line 2425
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2425,r13		! source line 2425
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2442 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2445 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2444 = *_temp_2445  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2443 = _temp_2444 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2442 = _temp_2443  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2426,r13		! source line 2426
	mov	"\0\0SE",r10
!   _temp_2446 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2439:
!   Increment the FOR-LOOP index variable and jump back
_Label_2432:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2430
! END FOR
_Label_2433:
! WHILE STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0WH",r10
_Label_2447:
	mov	2432,r13		! source line 2432
	mov	"\0\0SE",r10
!   _temp_2450 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2448 else goto _Label_2449
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2449
	jmp	_Label_2448
_Label_2448:
	mov	2432,r13		! source line 2432
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0SE",r10
!   _temp_2451 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2452 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2451  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2447
_Label_2449:
! ASSIGNMENT STATEMENT...
	mov	2435,r13		! source line 2435
	mov	"\0\0AS",r10
	mov	2435,r13		! source line 2435
	mov	"\0\0SE",r10
!   _temp_2453 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0SE",r10
!   _temp_2454 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2441,r13		! source line 2441
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2455 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2455 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2456 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2456 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2443,r13		! source line 2443
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2457 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2457 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2444,r13		! source line 2444
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2462 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2461 = *_temp_2462  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2461 < 0 then goto _Label_2460		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2460
	jmp	_Label_2458
_Label_2460:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2463 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2463 ) then goto _Label_2459		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2459
!	jmp	_Label_2458
_Label_2458:
! THEN...
	mov	2445,r13		! source line 2445
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2464 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2464  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2445,r13		! source line 2445
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2459:
! RETURN STATEMENT...
	mov	2447,r13		! source line 2447
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2465
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2466
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2467
	.word	12
	.word	4
	.word	_Label_2468
	.word	-12
	.word	4
	.word	_Label_2469
	.word	-16
	.word	4
	.word	_Label_2470
	.word	-20
	.word	4
	.word	_Label_2471
	.word	-24
	.word	4
	.word	_Label_2472
	.word	-28
	.word	4
	.word	_Label_2473
	.word	-32
	.word	4
	.word	_Label_2474
	.word	-36
	.word	4
	.word	_Label_2475
	.word	-40
	.word	4
	.word	_Label_2476
	.word	-44
	.word	4
	.word	_Label_2477
	.word	-48
	.word	4
	.word	_Label_2478
	.word	-52
	.word	4
	.word	_Label_2479
	.word	-56
	.word	4
	.word	_Label_2480
	.word	-60
	.word	4
	.word	_Label_2481
	.word	-64
	.word	4
	.word	_Label_2482
	.word	-68
	.word	4
	.word	_Label_2483
	.word	-72
	.word	4
	.word	_Label_2484
	.word	-76
	.word	4
	.word	_Label_2485
	.word	-80
	.word	4
	.word	_Label_2486
	.word	-84
	.word	4
	.word	_Label_2487
	.word	-88
	.word	4
	.word	_Label_2488
	.word	-92
	.word	4
	.word	_Label_2489
	.word	-96
	.word	4
	.word	_Label_2490
	.word	-100
	.word	4
	.word	_Label_2491
	.word	-104
	.word	4
	.word	_Label_2492
	.word	-108
	.word	4
	.word	_Label_2493
	.word	-112
	.word	4
	.word	_Label_2494
	.word	-116
	.word	4
	.word	_Label_2495
	.word	-120
	.word	4
	.word	_Label_2496
	.word	-124
	.word	4
	.word	_Label_2497
	.word	-128
	.word	4
	.word	_Label_2498
	.word	-132
	.word	4
	.word	_Label_2499
	.word	-136
	.word	4
	.word	_Label_2500
	.word	-140
	.word	4
	.word	_Label_2501
	.word	-144
	.word	4
	.word	_Label_2502
	.word	-148
	.word	4
	.word	_Label_2503
	.word	-152
	.word	4
	.word	_Label_2504
	.word	-156
	.word	4
	.word	_Label_2505
	.word	-160
	.word	4
	.word	0
_Label_2465:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2466:
	.ascii	"Pself\0"
	.align
_Label_2467:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2456\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2455\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2444\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2442\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2414\0"
	.align
_Label_2499:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2500:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2501:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2502:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2503:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2504:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2505:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3139:
	push	r0
	sub	r1,1,r1
	bne	_Label_3139
	mov	2460,r13		! source line 2460
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2462,r13		! source line 2462
	mov	"\0\0IF",r10
!   _temp_2508 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2508 then goto _Label_2507		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2507
!	jmp	_Label_2506
_Label_2506:
! THEN...
	mov	2463,r13		! source line 2463
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2463,r13		! source line 2463
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2507:
! SEND STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0SE",r10
!   _temp_2509 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2466,r13		! source line 2466
	mov	"\0\0SE",r10
!   _temp_2510 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2467,r13		! source line 2467
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2511 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2511  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2468,r13		! source line 2468
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2512 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2515 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2514 = *_temp_2515  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2513 = _temp_2514 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2512 = _temp_2513  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2469,r13		! source line 2469
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2519 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2518 = *_temp_2519  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2518 > 0 then goto _Label_2517		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2517
!	jmp	_Label_2516
_Label_2516:
! THEN...
	mov	2470,r13		! source line 2470
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2470,r13		! source line 2470
	mov	"\0\0SE",r10
!   _temp_2520 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2471,r13		! source line 2471
	mov	"\0\0SE",r10
!   _temp_2521 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2522 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2521  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2523 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2526 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2525 = *_temp_2526  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2524 = _temp_2525 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2523 = _temp_2524  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2473,r13		! source line 2473
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2530 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2529 = *_temp_2530  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2529 > 0 then goto _Label_2528		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2528
!	jmp	_Label_2527
_Label_2527:
! THEN...
	mov	2474,r13		! source line 2474
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0SE",r10
!   _temp_2531 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0SE",r10
!   _temp_2532 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2533 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2532  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2528:
! END IF...
_Label_2517:
! SEND STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0SE",r10
!   _temp_2534 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2535
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2536
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2537
	.word	12
	.word	4
	.word	_Label_2538
	.word	-12
	.word	4
	.word	_Label_2539
	.word	-16
	.word	4
	.word	_Label_2540
	.word	-20
	.word	4
	.word	_Label_2541
	.word	-24
	.word	4
	.word	_Label_2542
	.word	-28
	.word	4
	.word	_Label_2543
	.word	-32
	.word	4
	.word	_Label_2544
	.word	-36
	.word	4
	.word	_Label_2545
	.word	-40
	.word	4
	.word	_Label_2546
	.word	-44
	.word	4
	.word	_Label_2547
	.word	-48
	.word	4
	.word	_Label_2548
	.word	-52
	.word	4
	.word	_Label_2549
	.word	-56
	.word	4
	.word	_Label_2550
	.word	-60
	.word	4
	.word	_Label_2551
	.word	-64
	.word	4
	.word	_Label_2552
	.word	-68
	.word	4
	.word	_Label_2553
	.word	-72
	.word	4
	.word	_Label_2554
	.word	-76
	.word	4
	.word	_Label_2555
	.word	-80
	.word	4
	.word	_Label_2556
	.word	-84
	.word	4
	.word	_Label_2557
	.word	-88
	.word	4
	.word	_Label_2558
	.word	-92
	.word	4
	.word	_Label_2559
	.word	-96
	.word	4
	.word	_Label_2560
	.word	-100
	.word	4
	.word	_Label_2561
	.word	-104
	.word	4
	.word	0
_Label_2535:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2536:
	.ascii	"Pself\0"
	.align
_Label_2537:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2534\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2533\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2532\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2531\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2530\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2558:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2559:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2560:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2561:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3140:
	push	r0
	sub	r1,1,r1
	bne	_Label_3140
	mov	2483,r13		! source line 2483
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2565 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2564 = *_temp_2565  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2564) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2566 = _temp_2564 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2566 ) then goto _Label_2563		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2563
!	jmp	_Label_2562
_Label_2562:
! THEN...
	mov	2489,r13		! source line 2489
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2571 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2570 = *_temp_2571  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2570) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2572 = _temp_2570 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2569 = *_temp_2572  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2569 >= 0 then goto _Label_2568		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2568
!	jmp	_Label_2567
_Label_2567:
! THEN...
	mov	2490,r13		! source line 2490
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2573 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2573  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2490,r13		! source line 2490
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2568:
! ASSIGNMENT STATEMENT...
	mov	2492,r13		! source line 2492
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2575 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2574 = *_temp_2575  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2574) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2576 = _temp_2574 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2576 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2493,r13		! source line 2493
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2580 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2579 = *_temp_2580  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2579) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2581 = _temp_2579 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2578 = *_temp_2581  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2584 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2583 = *_temp_2584  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2583) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2585 = _temp_2583 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2582 = *_temp_2585  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2577 = _temp_2578 + _temp_2582		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2588 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2587 = *_temp_2588  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2587) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2589 = _temp_2587 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2586 = *_temp_2589  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2590 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2577  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2586  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2563:
! RETURN STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2591
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2592
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2593
	.word	12
	.word	4
	.word	_Label_2594
	.word	-12
	.word	4
	.word	_Label_2595
	.word	-16
	.word	4
	.word	_Label_2596
	.word	-20
	.word	4
	.word	_Label_2597
	.word	-24
	.word	4
	.word	_Label_2598
	.word	-28
	.word	4
	.word	_Label_2599
	.word	-32
	.word	4
	.word	_Label_2600
	.word	-36
	.word	4
	.word	_Label_2601
	.word	-40
	.word	4
	.word	_Label_2602
	.word	-44
	.word	4
	.word	_Label_2603
	.word	-48
	.word	4
	.word	_Label_2604
	.word	-52
	.word	4
	.word	_Label_2605
	.word	-56
	.word	4
	.word	_Label_2606
	.word	-60
	.word	4
	.word	_Label_2607
	.word	-64
	.word	4
	.word	_Label_2608
	.word	-68
	.word	4
	.word	_Label_2609
	.word	-72
	.word	4
	.word	_Label_2610
	.word	-76
	.word	4
	.word	_Label_2611
	.word	-80
	.word	4
	.word	_Label_2612
	.word	-84
	.word	4
	.word	_Label_2613
	.word	-88
	.word	4
	.word	_Label_2614
	.word	-92
	.word	4
	.word	_Label_2615
	.word	-96
	.word	4
	.word	_Label_2616
	.word	-100
	.word	4
	.word	_Label_2617
	.word	-104
	.word	4
	.word	_Label_2618
	.word	-108
	.word	4
	.word	0
_Label_2591:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2592:
	.ascii	"Pself\0"
	.align
_Label_2593:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3141:
	push	r0
	sub	r1,1,r1
	bne	_Label_3141
	mov	2502,r13		! source line 2502
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2517,r13		! source line 2517
	mov	"\0\0SE",r10
!   _temp_2619 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2625		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2625
!   _temp_2624 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2626
_Label_2625:
!   _temp_2624 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2626:
!   if _temp_2624 then goto _Label_2623 else goto _Label_2620
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2620
	jmp	_Label_2623
_Label_2623:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2629 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2628 = *_temp_2629  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2628 == 0 then goto _Label_2630		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2630
!   _temp_2627 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2631
_Label_2630:
!   _temp_2627 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2631:
!   if _temp_2627 then goto _Label_2622 else goto _Label_2620
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2620
	jmp	_Label_2622
_Label_2622:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2634 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2633 = *_temp_2634  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2633) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2635 = _temp_2633 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2632 = *_temp_2635  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2632 >= 0 then goto _Label_2621		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2621
!	jmp	_Label_2620
_Label_2620:
! THEN...
	mov	2519,r13		! source line 2519
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2636 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2636  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2519,r13		! source line 2519
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2621:
! ASSIGNMENT STATEMENT...
	mov	2521,r13		! source line 2521
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2637 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2637  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2522,r13		! source line 2522
	mov	"\0\0WH",r10
_Label_2638:
!   if numBytes <= 0 then goto _Label_2640		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2640
!	jmp	_Label_2639
_Label_2639:
	mov	2522,r13		! source line 2522
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2536,r13		! source line 2536
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2644 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2643 = *_temp_2644  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2643 == sector then goto _Label_2642		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2642
!	jmp	_Label_2641
_Label_2641:
! THEN...
	mov	2537,r13		! source line 2537
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2537,r13		! source line 2537
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2645) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2648 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2647 = *_temp_2648  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2646 = sector + _temp_2647		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2650 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2649 = *_temp_2650  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2651 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2646  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2649  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2542,r13		! source line 2542
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2652 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2652 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2543,r13		! source line 2543
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2653 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2653 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2642:
! ASSIGNMENT STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2655 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2654 = *_temp_2655  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2654 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0AS",r10
!   _temp_2656 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2656  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2546,r13		! source line 2546
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2550,r13		! source line 2550
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2551,r13		! source line 2551
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2552,r13		! source line 2552
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2553,r13		! source line 2553
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2638
_Label_2640:
! SEND STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0SE",r10
!   _temp_2657 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2561,r13		! source line 2561
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2658
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2659
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2660
	.word	12
	.word	4
	.word	_Label_2661
	.word	16
	.word	4
	.word	_Label_2662
	.word	20
	.word	4
	.word	_Label_2663
	.word	24
	.word	4
	.word	_Label_2664
	.word	-16
	.word	4
	.word	_Label_2665
	.word	-20
	.word	4
	.word	_Label_2666
	.word	-24
	.word	4
	.word	_Label_2667
	.word	-28
	.word	4
	.word	_Label_2668
	.word	-32
	.word	4
	.word	_Label_2669
	.word	-36
	.word	4
	.word	_Label_2670
	.word	-40
	.word	4
	.word	_Label_2671
	.word	-44
	.word	4
	.word	_Label_2672
	.word	-48
	.word	4
	.word	_Label_2673
	.word	-52
	.word	4
	.word	_Label_2674
	.word	-56
	.word	4
	.word	_Label_2675
	.word	-60
	.word	4
	.word	_Label_2676
	.word	-64
	.word	4
	.word	_Label_2677
	.word	-68
	.word	4
	.word	_Label_2678
	.word	-72
	.word	4
	.word	_Label_2679
	.word	-76
	.word	4
	.word	_Label_2680
	.word	-80
	.word	4
	.word	_Label_2681
	.word	-84
	.word	4
	.word	_Label_2682
	.word	-88
	.word	4
	.word	_Label_2683
	.word	-92
	.word	4
	.word	_Label_2684
	.word	-96
	.word	4
	.word	_Label_2685
	.word	-100
	.word	4
	.word	_Label_2686
	.word	-104
	.word	4
	.word	_Label_2687
	.word	-9
	.word	1
	.word	_Label_2688
	.word	-10
	.word	1
	.word	_Label_2689
	.word	-108
	.word	4
	.word	_Label_2690
	.word	-112
	.word	4
	.word	_Label_2691
	.word	-116
	.word	4
	.word	_Label_2692
	.word	-120
	.word	4
	.word	_Label_2693
	.word	-124
	.word	4
	.word	_Label_2694
	.word	-128
	.word	4
	.word	0
_Label_2658:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2659:
	.ascii	"Pself\0"
	.align
_Label_2660:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2661:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2662:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2663:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2657\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2654\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2653\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2677:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2678:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2679:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2680:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2681:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2682:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2683:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2684:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2685:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2686:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2687:
	.byte	'C'
	.ascii	"_temp_2627\0"
	.align
_Label_2688:
	.byte	'C'
	.ascii	"_temp_2624\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2690:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2691:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2692:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2693:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2694:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3142:
	push	r0
	sub	r1,1,r1
	bne	_Label_3142
	mov	2566,r13		! source line 2566
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2582,r13		! source line 2582
	mov	"\0\0SE",r10
!   _temp_2695 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2701		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2701
!   _temp_2700 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2702
_Label_2701:
!   _temp_2700 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2702:
!   if _temp_2700 then goto _Label_2699 else goto _Label_2696
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2696
	jmp	_Label_2699
_Label_2699:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2705 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2704 = *_temp_2705  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2704 == 0 then goto _Label_2706		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2706
!   _temp_2703 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2707
_Label_2706:
!   _temp_2703 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2707:
!   if _temp_2703 then goto _Label_2698 else goto _Label_2696
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2696
	jmp	_Label_2698
_Label_2698:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2710 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2709 = *_temp_2710  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2709) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2711 = _temp_2709 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2708 = *_temp_2711  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2708 >= 0 then goto _Label_2697		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2697
!	jmp	_Label_2696
_Label_2696:
! THEN...
	mov	2584,r13		! source line 2584
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2712 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2712  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2584,r13		! source line 2584
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2697:
! ASSIGNMENT STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2713 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2713  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0WH",r10
_Label_2714:
!   if numBytes <= 0 then goto _Label_2716		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2716
!	jmp	_Label_2715
_Label_2715:
	mov	2587,r13		! source line 2587
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2601,r13		! source line 2601
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2720 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2719 = *_temp_2720  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2719 == sector then goto _Label_2718		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2718
!	jmp	_Label_2717
_Label_2717:
! THEN...
	mov	2603,r13		! source line 2603
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2603,r13		! source line 2603
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2721) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2718:
! ASSIGNMENT STATEMENT...
	mov	2605,r13		! source line 2605
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2723 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2722 = *_temp_2723  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2722 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2606,r13		! source line 2606
	mov	"\0\0AS",r10
!   _temp_2724 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2724  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2606,r13		! source line 2606
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2728 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2727 = *_temp_2728  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2727 != sector then goto _Label_2726		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2726
!	jmp	_Label_2725
_Label_2725:
	jmp	_Label_2729
_Label_2726:
! ELSE...
	mov	2609,r13		! source line 2609
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2609,r13		! source line 2609
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2732
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2732
	jmp	_Label_2731
_Label_2732:
!   if bytesToMove != 8192 then goto _Label_2731		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2731
!	jmp	_Label_2730
_Label_2730:
	jmp	_Label_2733
_Label_2731:
! ELSE...
	mov	2613,r13		! source line 2613
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2736 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2735 = *_temp_2736  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2734 = sector + _temp_2735		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2738 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2737 = *_temp_2738  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2739 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2734  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2737  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2733:
! END IF...
_Label_2729:
! ASSIGNMENT STATEMENT...
	mov	2617,r13		! source line 2617
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2740 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2740 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2741 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2741 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2622,r13		! source line 2622
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2625,r13		! source line 2625
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2714
_Label_2716:
! SEND STATEMENT...
	mov	2632,r13		! source line 2632
	mov	"\0\0SE",r10
!   _temp_2742 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2634,r13		! source line 2634
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2743
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2744
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2745
	.word	12
	.word	4
	.word	_Label_2746
	.word	16
	.word	4
	.word	_Label_2747
	.word	20
	.word	4
	.word	_Label_2748
	.word	24
	.word	4
	.word	_Label_2749
	.word	-16
	.word	4
	.word	_Label_2750
	.word	-20
	.word	4
	.word	_Label_2751
	.word	-24
	.word	4
	.word	_Label_2752
	.word	-28
	.word	4
	.word	_Label_2753
	.word	-32
	.word	4
	.word	_Label_2754
	.word	-36
	.word	4
	.word	_Label_2755
	.word	-40
	.word	4
	.word	_Label_2756
	.word	-44
	.word	4
	.word	_Label_2757
	.word	-48
	.word	4
	.word	_Label_2758
	.word	-52
	.word	4
	.word	_Label_2759
	.word	-56
	.word	4
	.word	_Label_2760
	.word	-60
	.word	4
	.word	_Label_2761
	.word	-64
	.word	4
	.word	_Label_2762
	.word	-68
	.word	4
	.word	_Label_2763
	.word	-72
	.word	4
	.word	_Label_2764
	.word	-76
	.word	4
	.word	_Label_2765
	.word	-80
	.word	4
	.word	_Label_2766
	.word	-84
	.word	4
	.word	_Label_2767
	.word	-88
	.word	4
	.word	_Label_2768
	.word	-92
	.word	4
	.word	_Label_2769
	.word	-96
	.word	4
	.word	_Label_2770
	.word	-100
	.word	4
	.word	_Label_2771
	.word	-104
	.word	4
	.word	_Label_2772
	.word	-108
	.word	4
	.word	_Label_2773
	.word	-112
	.word	4
	.word	_Label_2774
	.word	-9
	.word	1
	.word	_Label_2775
	.word	-10
	.word	1
	.word	_Label_2776
	.word	-116
	.word	4
	.word	_Label_2777
	.word	-120
	.word	4
	.word	_Label_2778
	.word	-124
	.word	4
	.word	_Label_2779
	.word	-128
	.word	4
	.word	_Label_2780
	.word	-132
	.word	4
	.word	_Label_2781
	.word	-136
	.word	4
	.word	0
_Label_2743:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2744:
	.ascii	"Pself\0"
	.align
_Label_2745:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2746:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2747:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2748:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2742\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2741\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2734\0"
	.align
_Label_2758:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2759:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2761:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2762:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2763:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2764:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2767:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2772:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2773:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2774:
	.byte	'C'
	.ascii	"_temp_2703\0"
	.align
_Label_2775:
	.byte	'C'
	.ascii	"_temp_2700\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2777:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2778:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2779:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2780:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2781:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2782
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2782:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2783
	.word	_sourceFileName
	.word	377		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2783:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3143:
	push	r0
	sub	r1,1,r1
	bne	_Label_3143
	mov	2670,r13		! source line 2670
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0AS",r10
	mov	2672,r13		! source line 2672
	mov	"\0\0SE",r10
!   _temp_2784 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2674,r13		! source line 2674
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2675,r13		! source line 2675
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2675,r13		! source line 2675
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2785
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2786
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2787
	.word	-12
	.word	4
	.word	0
_Label_2785:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2786:
	.ascii	"Pself\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2784\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3144:
	push	r0
	sub	r1,1,r1
	bne	_Label_3144
	mov	2680,r13		! source line 2680
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2788 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2788  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2681,r13		! source line 2681
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2682,r13		! source line 2682
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2789 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2789  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2683,r13		! source line 2683
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2684,r13		! source line 2684
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2790 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2790  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2685,r13		! source line 2685
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2686,r13		! source line 2686
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2791 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2791  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2687,r13		! source line 2687
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2688,r13		! source line 2688
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2792 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2792  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2689,r13		! source line 2689
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2690,r13		! source line 2690
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2793 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2793  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2691,r13		! source line 2691
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2692,r13		! source line 2692
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2693,r13		! source line 2693
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2794
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2795
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2796
	.word	-12
	.word	4
	.word	_Label_2797
	.word	-16
	.word	4
	.word	_Label_2798
	.word	-20
	.word	4
	.word	_Label_2799
	.word	-24
	.word	4
	.word	_Label_2800
	.word	-28
	.word	4
	.word	_Label_2801
	.word	-32
	.word	4
	.word	0
_Label_2794:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2795:
	.ascii	"Pself\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2791\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2801:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2802
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2802:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2803
	.word	_sourceFileName
	.word	394		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2803:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3145:
	push	r0
	sub	r1,1,r1
	bne	_Label_3145
	mov	2704,r13		! source line 2704
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2804 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2804  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2705,r13		! source line 2705
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2706,r13		! source line 2706
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2805 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2805  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2707,r13		! source line 2707
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2807		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2807
!	jmp	_Label_2806
_Label_2806:
! THEN...
	mov	2709,r13		! source line 2709
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2709,r13		! source line 2709
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2808
_Label_2807:
! ELSE...
	mov	2711,r13		! source line 2711
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2809 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2809  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2711,r13		! source line 2711
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2808:
! RETURN STATEMENT...
	mov	2708,r13		! source line 2708
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2810
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2811
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2812
	.word	-12
	.word	4
	.word	_Label_2813
	.word	-16
	.word	4
	.word	_Label_2814
	.word	-20
	.word	4
	.word	0
_Label_2810:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2811:
	.ascii	"Pself\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2809\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3146:
	push	r0
	sub	r1,1,r1
	bne	_Label_3146
	mov	2717,r13		! source line 2717
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0SE",r10
!   _temp_2815 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2816 = _temp_2815 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0SE",r10
!   _temp_2817 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2818 = _temp_2817 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0RE",r10
	mov	2731,r13		! source line 2731
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2821 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2820  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_2819  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2819  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_2822
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2823
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2824
	.word	12
	.word	4
	.word	_Label_2825
	.word	16
	.word	4
	.word	_Label_2826
	.word	-16
	.word	4
	.word	_Label_2827
	.word	-20
	.word	4
	.word	_Label_2828
	.word	-9
	.word	1
	.word	_Label_2829
	.word	-24
	.word	4
	.word	_Label_2830
	.word	-28
	.word	4
	.word	_Label_2831
	.word	-32
	.word	4
	.word	_Label_2832
	.word	-36
	.word	4
	.word	_Label_2833
	.word	-40
	.word	4
	.word	0
_Label_2822:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2823:
	.ascii	"Pself\0"
	.align
_Label_2824:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2825:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2828:
	.byte	'C'
	.ascii	"_temp_2819\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2832:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2833:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3147:
	push	r0
	sub	r1,1,r1
	bne	_Label_3147
	mov	2736,r13		! source line 2736
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2741,r13		! source line 2741
	mov	"\0\0IF",r10
	mov	2741,r13		! source line 2741
	mov	"\0\0SE",r10
!   _temp_2837 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2838) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2837  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2836  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2836 then goto _Label_2835 else goto _Label_2834
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2834
	jmp	_Label_2835
_Label_2834:
! THEN...
	mov	2742,r13		! source line 2742
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2839 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2839  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2742,r13		! source line 2742
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2835:
! RETURN STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_2840
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2841
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2842
	.word	-16
	.word	4
	.word	_Label_2843
	.word	-20
	.word	4
	.word	_Label_2844
	.word	-24
	.word	4
	.word	_Label_2845
	.word	-9
	.word	1
	.word	_Label_2846
	.word	-28
	.word	4
	.word	0
_Label_2840:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2841:
	.ascii	"Pself\0"
	.align
_Label_2842:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2843:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2844:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2845:
	.byte	'C'
	.ascii	"_temp_2836\0"
	.align
_Label_2846:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3148:
	push	r0
	sub	r1,1,r1
	bne	_Label_3148
	mov	2749,r13		! source line 2749
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2775,r13		! source line 2775
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2850 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2849 = *_temp_2850  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2849) then goto _Label_2848
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2848
!	jmp	_Label_2847
_Label_2847:
! THEN...
	mov	2776,r13		! source line 2776
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2851 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2851  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2776,r13		! source line 2776
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2848:
! IF STATEMENT...
	mov	2780,r13		! source line 2780
	mov	"\0\0IF",r10
	mov	2780,r13		! source line 2780
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2855) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2854  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2854 == 1112300152 then goto _Label_2853		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2853
!	jmp	_Label_2852
_Label_2852:
! THEN...
	mov	2781,r13		! source line 2781
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2856 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2856  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2781,r13		! source line 2781
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2853:
! ASSIGNMENT STATEMENT...
	mov	2786,r13		! source line 2786
	mov	"\0\0AS",r10
	mov	2786,r13		! source line 2786
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2857) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0AS",r10
	mov	2787,r13		! source line 2787
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2858) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2788,r13		! source line 2788
	mov	"\0\0AS",r10
	mov	2788,r13		! source line 2788
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2859) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2789,r13		! source line 2789
	mov	"\0\0AS",r10
	mov	2789,r13		! source line 2789
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2860) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2790,r13		! source line 2790
	mov	"\0\0AS",r10
	mov	2790,r13		! source line 2790
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2861) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0AS",r10
	mov	2791,r13		! source line 2791
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2862) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2794,r13		! source line 2794
	mov	"\0\0IF",r10
!   _temp_2865 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2865) then goto _Label_2864
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2864
!	jmp	_Label_2863
_Label_2863:
! THEN...
	mov	2795,r13		! source line 2795
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2866 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2866  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2795,r13		! source line 2795
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2864:
! ASSIGNMENT STATEMENT...
	mov	2798,r13		! source line 2798
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2868
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2868
!	jmp	_Label_2867
_Label_2867:
! THEN...
	mov	2803,r13		! source line 2803
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2869 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2869  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2803,r13		! source line 2803
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2804,r13		! source line 2804
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2868:
! IF STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0IF",r10
!   _temp_2872 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2872) then goto _Label_2871
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2871
!	jmp	_Label_2870
_Label_2870:
! THEN...
	mov	2809,r13		! source line 2809
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2873 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2873  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2809,r13		! source line 2809
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2810,r13		! source line 2810
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2871:
! IF STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0IF",r10
!   _temp_2876 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2876 then goto _Label_2875		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2875
!	jmp	_Label_2874
_Label_2874:
! THEN...
	mov	2813,r13		! source line 2813
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2877 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2877  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2813,r13		! source line 2813
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2814,r13		! source line 2814
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2875:
! ASSIGNMENT STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2819,r13		! source line 2819
	mov	"\0\0IF",r10
!   _temp_2880 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2880) then goto _Label_2879
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2879
!	jmp	_Label_2878
_Label_2878:
! THEN...
	mov	2820,r13		! source line 2820
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2881 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2881  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2820,r13		! source line 2820
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2821,r13		! source line 2821
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2879:
! IF STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0IF",r10
!   _temp_2884 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2884 then goto _Label_2883		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2883
!	jmp	_Label_2882
_Label_2882:
! THEN...
	mov	2824,r13		! source line 2824
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2885 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2885  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2824,r13		! source line 2824
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2825,r13		! source line 2825
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2883:
! ASSIGNMENT STATEMENT...
	mov	2827,r13		! source line 2827
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2830,r13		! source line 2830
	mov	"\0\0AS",r10
!   _temp_2888 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2887 = _temp_2888 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2886 = _temp_2887 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2886 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2845,r13		! source line 2845
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2890		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2890
!	jmp	_Label_2889
_Label_2889:
! THEN...
	mov	2846,r13		! source line 2846
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2891 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2891  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2846,r13		! source line 2846
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2892 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2892  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2847,r13		! source line 2847
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2893 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2893  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2848,r13		! source line 2848
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2890:
! SEND STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0SE",r10
!   _temp_2894 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	2857,r13		! source line 2857
	mov	"\0\0IF",r10
	mov	2857,r13		! source line 2857
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2898) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2897  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2897 == 707406378 then goto _Label_2896		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2896
!	jmp	_Label_2895
_Label_2895:
! THEN...
	mov	2858,r13		! source line 2858
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2899 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2899  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2858,r13		! source line 2858
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2859,r13		! source line 2859
	mov	"\0\0SE",r10
!   _temp_2900 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2860,r13		! source line 2860
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2896:
! ASSIGNMENT STATEMENT...
	mov	2864,r13		! source line 2864
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2905 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2906 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2905  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2901:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2906 then goto _Label_2904		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2904
_Label_2902:
	mov	2865,r13		! source line 2865
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2866,r13		! source line 2866
	mov	"\0\0AS",r10
	mov	2866,r13		! source line 2866
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2869,r13		! source line 2869
	mov	"\0\0IF",r10
	mov	2869,r13		! source line 2869
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2910) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2909  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2909 then goto _Label_2908 else goto _Label_2907
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2907
	jmp	_Label_2908
_Label_2907:
! THEN...
	mov	2870,r13		! source line 2870
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2911 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2911  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2870,r13		! source line 2870
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2871,r13		! source line 2871
	mov	"\0\0SE",r10
!   _temp_2912 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2872,r13		! source line 2872
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2908:
! SEND STATEMENT...
	mov	2874,r13		! source line 2874
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2875,r13		! source line 2875
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2903:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2901
! END FOR
_Label_2904:
! IF STATEMENT...
	mov	2879,r13		! source line 2879
	mov	"\0\0IF",r10
	mov	2879,r13		! source line 2879
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2916) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2915  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2915 == 707406378 then goto _Label_2914		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2914
!	jmp	_Label_2913
_Label_2913:
! THEN...
	mov	2880,r13		! source line 2880
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2917 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2917  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2880,r13		! source line 2880
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2881,r13		! source line 2881
	mov	"\0\0SE",r10
!   _temp_2918 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2882,r13		! source line 2882
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2914:
! FOR STATEMENT...
	mov	2886,r13		! source line 2886
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2923 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2924 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2923  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2919:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2924 then goto _Label_2922		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2922
_Label_2920:
	mov	2886,r13		! source line 2886
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2887,r13		! source line 2887
	mov	"\0\0AS",r10
	mov	2887,r13		! source line 2887
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2890,r13		! source line 2890
	mov	"\0\0IF",r10
	mov	2890,r13		! source line 2890
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2928) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2927  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2927 then goto _Label_2926 else goto _Label_2925
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2925
	jmp	_Label_2926
_Label_2925:
! THEN...
	mov	2891,r13		! source line 2891
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2929 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2929  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2891,r13		! source line 2891
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2892,r13		! source line 2892
	mov	"\0\0SE",r10
!   _temp_2930 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2893,r13		! source line 2893
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2926:
! ASSIGNMENT STATEMENT...
	mov	2895,r13		! source line 2895
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2921:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2919
! END FOR
_Label_2922:
! IF STATEMENT...
	mov	2899,r13		! source line 2899
	mov	"\0\0IF",r10
	mov	2899,r13		! source line 2899
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2934) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2933  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2933 == 707406378 then goto _Label_2932		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2932
!	jmp	_Label_2931
_Label_2931:
! THEN...
	mov	2900,r13		! source line 2900
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2935 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2935  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2900,r13		! source line 2900
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2901,r13		! source line 2901
	mov	"\0\0SE",r10
!   _temp_2936 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2902,r13		! source line 2902
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2932:
! ASSIGNMENT STATEMENT...
	mov	2906,r13		! source line 2906
	mov	"\0\0AS",r10
	mov	2906,r13		! source line 2906
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	2910,r13		! source line 2910
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2913,r13		! source line 2913
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_2937
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2938
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2939
	.word	12
	.word	4
	.word	_Label_2940
	.word	-16
	.word	4
	.word	_Label_2941
	.word	-20
	.word	4
	.word	_Label_2942
	.word	-24
	.word	4
	.word	_Label_2943
	.word	-28
	.word	4
	.word	_Label_2944
	.word	-32
	.word	4
	.word	_Label_2945
	.word	-36
	.word	4
	.word	_Label_2946
	.word	-40
	.word	4
	.word	_Label_2947
	.word	-9
	.word	1
	.word	_Label_2948
	.word	-44
	.word	4
	.word	_Label_2949
	.word	-48
	.word	4
	.word	_Label_2950
	.word	-52
	.word	4
	.word	_Label_2951
	.word	-56
	.word	4
	.word	_Label_2952
	.word	-60
	.word	4
	.word	_Label_2953
	.word	-64
	.word	4
	.word	_Label_2954
	.word	-68
	.word	4
	.word	_Label_2955
	.word	-72
	.word	4
	.word	_Label_2956
	.word	-76
	.word	4
	.word	_Label_2957
	.word	-10
	.word	1
	.word	_Label_2958
	.word	-80
	.word	4
	.word	_Label_2959
	.word	-84
	.word	4
	.word	_Label_2960
	.word	-88
	.word	4
	.word	_Label_2961
	.word	-92
	.word	4
	.word	_Label_2962
	.word	-96
	.word	4
	.word	_Label_2963
	.word	-100
	.word	4
	.word	_Label_2964
	.word	-104
	.word	4
	.word	_Label_2965
	.word	-108
	.word	4
	.word	_Label_2966
	.word	-112
	.word	4
	.word	_Label_2967
	.word	-116
	.word	4
	.word	_Label_2968
	.word	-120
	.word	4
	.word	_Label_2969
	.word	-124
	.word	4
	.word	_Label_2970
	.word	-128
	.word	4
	.word	_Label_2971
	.word	-132
	.word	4
	.word	_Label_2972
	.word	-136
	.word	4
	.word	_Label_2973
	.word	-140
	.word	4
	.word	_Label_2974
	.word	-144
	.word	4
	.word	_Label_2975
	.word	-148
	.word	4
	.word	_Label_2976
	.word	-152
	.word	4
	.word	_Label_2977
	.word	-156
	.word	4
	.word	_Label_2978
	.word	-160
	.word	4
	.word	_Label_2979
	.word	-164
	.word	4
	.word	_Label_2980
	.word	-168
	.word	4
	.word	_Label_2981
	.word	-172
	.word	4
	.word	_Label_2982
	.word	-176
	.word	4
	.word	_Label_2983
	.word	-180
	.word	4
	.word	_Label_2984
	.word	-184
	.word	4
	.word	_Label_2985
	.word	-188
	.word	4
	.word	_Label_2986
	.word	-192
	.word	4
	.word	_Label_2987
	.word	-196
	.word	4
	.word	_Label_2988
	.word	-200
	.word	4
	.word	_Label_2989
	.word	-204
	.word	4
	.word	_Label_2990
	.word	-208
	.word	4
	.word	_Label_2991
	.word	-212
	.word	4
	.word	_Label_2992
	.word	-216
	.word	4
	.word	_Label_2993
	.word	-220
	.word	4
	.word	_Label_2994
	.word	-224
	.word	4
	.word	_Label_2995
	.word	-228
	.word	4
	.word	_Label_2996
	.word	-232
	.word	4
	.word	_Label_2997
	.word	-236
	.word	4
	.word	_Label_2998
	.word	-240
	.word	4
	.word	_Label_2999
	.word	-244
	.word	4
	.word	_Label_3000
	.word	-248
	.word	4
	.word	_Label_3001
	.word	-252
	.word	4
	.word	_Label_3002
	.word	-256
	.word	4
	.word	_Label_3003
	.word	-260
	.word	4
	.word	_Label_3004
	.word	-264
	.word	4
	.word	_Label_3005
	.word	-268
	.word	4
	.word	0
_Label_2937:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2938:
	.ascii	"Pself\0"
	.align
_Label_2939:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2936\0"
	.align
_Label_2941:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2929\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2928\0"
	.align
_Label_2947:
	.byte	'C'
	.ascii	"_temp_2927\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2910\0"
	.align
_Label_2957:
	.byte	'C'
	.ascii	"_temp_2909\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2906\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2905\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2898\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2891\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2880\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2984:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2859\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2858\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2994:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2995:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2996:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2997:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2998:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2999:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3000:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3001:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3002:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3003:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3004:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3005:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
