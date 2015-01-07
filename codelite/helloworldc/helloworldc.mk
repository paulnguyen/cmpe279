##
## Auto Generated makefile, please do not edit
##
ProjectName:=helloworldc

## Debug
ConfigurationName :=Debug
IntermediateDirectory :=./Debug
OutDir := $(IntermediateDirectory)
LinkerName:=gcc
ArchiveTool :=ar rcus
SharedObjectLinkerName :=gcc -shared -fPIC
ObjectSuffix :=.o
DependSuffix :=.o.d
PreprocessSuffix :=
DebugSwitch :=-g 
IncludeSwitch :=-I
LibrarySwitch :=-l
OutputSwitch :=-o 
LibraryPathSwitch :=-L
PreprocessorSwitch :=-D
SourceSwitch :=-c 
CompilerName :=gcc
OutputFile :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors :=
ObjectSwitch :=-o 
ArchiveOutputSwitch := 
PreprocessOnlySwitch :=
CmpOptions :=-g $(Preprocessors)
LinkOptions := 
IncludePath :=  "$(IncludeSwitch)." 
RcIncludePath :=
Libs :=
LibPath := 


Objects=$(IntermediateDirectory)/main$(ObjectSuffix) 

##
## Main Build Tragets 
##
all: $(OutputFile)

$(OutputFile): makeDirStep  $(Objects)
	@mkdir -p $(@D)
	$(LinkerName) $(OutputSwitch)$(OutputFile) $(Objects) $(LibPath) $(Libs) $(LinkOptions)

makeDirStep:
	@test -d ./Debug || mkdir -p ./Debug

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main$(ObjectSuffix): main.c $(IntermediateDirectory)/main$(DependSuffix)
	@test -d ./Debug || mkdir -p ./Debug
	$(CompilerName) $(SourceSwitch) "/home/seed/CMPE279/c/codelite/helloworldc/main.c" $(CmpOptions) $(ObjectSwitch)$(IntermediateDirectory)/main$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main$(DependSuffix): main.c
	@test -d ./Debug || mkdir -p ./Debug
	@$(CompilerName) $(CmpOptions) $(IncludePath) -MT$(IntermediateDirectory)/main$(ObjectSuffix) -MF$(IntermediateDirectory)/main$(DependSuffix) -MM "/home/seed/CMPE279/c/codelite/helloworldc/main.c"

##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/main$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/main$(DependSuffix)
	$(RM) $(IntermediateDirectory)/main$(PreprocessSuffix)
	$(RM) $(OutputFile)

-include $(IntermediateDirectory)/*$(DependSuffix)


