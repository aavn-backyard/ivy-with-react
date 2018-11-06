[Ivy]
166E9A9AB0FE5FE5 3.20 #module
>Proto >Proto Collection #zClass
sp0 startVotingApp Big #zClass
sp0 B #cInfo
sp0 #process
sp0 @TextInP .resExport .resExport #zField
sp0 @TextInP .type .type #zField
sp0 @TextInP .processKind .processKind #zField
sp0 @AnnotationInP-0n ai ai #zField
sp0 @MessageFlowInP-0n messageIn messageIn #zField
sp0 @MessageFlowOutP-0n messageOut messageOut #zField
sp0 @TextInP .xml .xml #zField
sp0 @TextInP .responsibility .responsibility #zField
sp0 @StartRequest f0 '' #zField
sp0 @EndTask f1 '' #zField
sp0 @RichDialog f3 '' #zField
sp0 @PushWFArc f4 '' #zField
sp0 @PushWFArc f2 '' #zField
>Proto sp0 sp0 startVotingApp #zField
sp0 f0 outLink start.ivp #txt
sp0 f0 type ch.axonivy.com.Data #txt
sp0 f0 inParamDecl '<> param;' #txt
sp0 f0 actionDecl 'ch.axonivy.com.Data out;
' #txt
sp0 f0 guid 166E9A9AB74C237D #txt
sp0 f0 requestEnabled true #txt
sp0 f0 triggerEnabled false #txt
sp0 f0 callSignature start() #txt
sp0 f0 caseData businessCase.attach=true #txt
sp0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
    </language>
</elementInfo>
' #txt
sp0 f0 @C|.responsibility Everybody #txt
sp0 f0 81 49 30 30 -21 17 #rect
sp0 f0 @|StartRequestIcon #fIcon
sp0 f1 type ch.axonivy.com.Data #txt
sp0 f1 337 49 30 30 0 15 #rect
sp0 f1 @|EndIcon #fIcon
sp0 f3 targetWindow NEW #txt
sp0 f3 targetDisplay TOP #txt
sp0 f3 richDialogId ch.axonivy.com.VotingPage #txt
sp0 f3 startMethod start() #txt
sp0 f3 type ch.axonivy.com.Data #txt
sp0 f3 requestActionDecl '<> param;' #txt
sp0 f3 responseActionDecl 'ch.axonivy.com.Data out;
' #txt
sp0 f3 responseMappingAction 'out=in;
' #txt
sp0 f3 isAsynch false #txt
sp0 f3 isInnerRd false #txt
sp0 f3 userContext '* ' #txt
sp0 f3 168 42 112 44 0 -8 #rect
sp0 f3 @|RichDialogIcon #fIcon
sp0 f4 expr out #txt
sp0 f4 111 64 168 64 #arcP
sp0 f2 expr out #txt
sp0 f2 280 64 337 64 #arcP
>Proto sp0 .type ch.axonivy.com.Data #txt
>Proto sp0 .processKind NORMAL #txt
>Proto sp0 0 0 32 24 18 0 #rect
>Proto sp0 @|BIcon #fIcon
sp0 f0 mainOut f4 tail #connect
sp0 f4 head f3 mainIn #connect
sp0 f3 mainOut f2 tail #connect
sp0 f2 head f1 mainIn #connect
