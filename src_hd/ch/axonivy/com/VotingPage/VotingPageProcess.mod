[Ivy]
166E9A202B049213 3.20 #module
>Proto >Proto Collection #zClass
Vs0 VotingPageProcess Big #zClass
Vs0 RD #cInfo
Vs0 #process
Vs0 @TextInP .ui2RdDataAction .ui2RdDataAction #zField
Vs0 @TextInP .rdData2UIAction .rdData2UIAction #zField
Vs0 @TextInP .resExport .resExport #zField
Vs0 @TextInP .type .type #zField
Vs0 @TextInP .processKind .processKind #zField
Vs0 @AnnotationInP-0n ai ai #zField
Vs0 @MessageFlowInP-0n messageIn messageIn #zField
Vs0 @MessageFlowOutP-0n messageOut messageOut #zField
Vs0 @TextInP .xml .xml #zField
Vs0 @TextInP .responsibility .responsibility #zField
Vs0 @RichDialogInitStart f0 '' #zField
Vs0 @RichDialogProcessEnd f1 '' #zField
Vs0 @PushWFArc f2 '' #zField
Vs0 @RichDialogProcessStart f3 '' #zField
Vs0 @RichDialogEnd f4 '' #zField
Vs0 @PushWFArc f5 '' #zField
Vs0 @RichDialogMethodStart f6 '' #zField
Vs0 @GridStep f7 '' #zField
Vs0 @PushWFArc f8 '' #zField
Vs0 @RichDialogProcessEnd f9 '' #zField
Vs0 @PushWFArc f10 '' #zField
>Proto Vs0 Vs0 VotingPageProcess #zField
Vs0 f0 guid 166E9A205C33B5F2 #txt
Vs0 f0 type ch.axonivy.com.VotingPage.VotingPageData #txt
Vs0 f0 method start() #txt
Vs0 f0 disableUIEvents true #txt
Vs0 f0 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<> param = methodEvent.getInputArguments();
' #txt
Vs0 f0 outParameterDecl '<> result;
' #txt
Vs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Vs0 f0 83 51 26 26 -16 15 #rect
Vs0 f0 @|RichDialogInitStartIcon #fIcon
Vs0 f1 type ch.axonivy.com.VotingPage.VotingPageData #txt
Vs0 f1 211 51 26 26 0 12 #rect
Vs0 f1 @|RichDialogProcessEndIcon #fIcon
Vs0 f2 expr out #txt
Vs0 f2 109 64 211 64 #arcP
Vs0 f3 guid 166E9A2064CDD8E1 #txt
Vs0 f3 type ch.axonivy.com.VotingPage.VotingPageData #txt
Vs0 f3 actionDecl 'ch.axonivy.com.VotingPage.VotingPageData out;
' #txt
Vs0 f3 actionTable 'out=in;
' #txt
Vs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Vs0 f3 83 147 26 26 -15 12 #rect
Vs0 f3 @|RichDialogProcessStartIcon #fIcon
Vs0 f4 type ch.axonivy.com.VotingPage.VotingPageData #txt
Vs0 f4 guid 166E9A2064E86DE5 #txt
Vs0 f4 211 147 26 26 0 12 #rect
Vs0 f4 @|RichDialogEndIcon #fIcon
Vs0 f5 expr out #txt
Vs0 f5 109 160 211 160 #arcP
Vs0 f6 guid 166EDB28FEA661C4 #txt
Vs0 f6 type ch.axonivy.com.VotingPage.VotingPageData #txt
Vs0 f6 method submit(String) #txt
Vs0 f6 disableUIEvents false #txt
Vs0 f6 inParameterDecl 'ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent methodEvent = event as ch.ivyteam.ivy.richdialog.exec.RdMethodCallEvent;
<java.lang.String products> param = methodEvent.getInputArguments();
' #txt
Vs0 f6 inActionCode 'import ch.axonivy.react.util.JSonUtil;
ivy.log.info(param.products);
out.products =  JSonUtil.convertToProductFromJson(param.products);
for( int i = 0; i <out.products.size(); i++){
	ivy.log.info("Product:" + out.products.get(i).title + "==Description:"+ out.products.get(i).getDescription() + "==votes:" + out.products.get(i).votes);
}' #txt
Vs0 f6 outParameterDecl '<java.lang.Integer totalVote> result;
' #txt
Vs0 f6 outParameterMapAction 'result.totalVote=in.totalVote;
' #txt
Vs0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>submit(String)</name>
        <nameStyle>14,5,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f6 83 259 26 26 -39 15 #rect
Vs0 f6 @|RichDialogMethodStartIcon #fIcon
Vs0 f7 actionDecl 'ch.axonivy.com.VotingPage.VotingPageData out;
' #txt
Vs0 f7 actionTable 'out=in;
' #txt
Vs0 f7 actionCode 'in.totalVote = 0;
for( int i = 0; i <in.products.size(); i++){
	in.totalVote += in.products.get(i).votes;
}' #txt
Vs0 f7 type ch.axonivy.com.VotingPage.VotingPageData #txt
Vs0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>sum votes</name>
        <nameStyle>9,7
</nameStyle>
    </language>
</elementInfo>
' #txt
Vs0 f7 152 250 112 44 -28 -8 #rect
Vs0 f7 @|StepIcon #fIcon
Vs0 f8 expr out #txt
Vs0 f8 109 272 152 272 #arcP
Vs0 f9 type ch.axonivy.com.VotingPage.VotingPageData #txt
Vs0 f9 355 259 26 26 0 12 #rect
Vs0 f9 @|RichDialogProcessEndIcon #fIcon
Vs0 f10 expr out #txt
Vs0 f10 264 272 355 272 #arcP
>Proto Vs0 .type ch.axonivy.com.VotingPage.VotingPageData #txt
>Proto Vs0 .processKind HTML_DIALOG #txt
>Proto Vs0 -8 -8 16 16 16 26 #rect
>Proto Vs0 '' #fIcon
Vs0 f0 mainOut f2 tail #connect
Vs0 f2 head f1 mainIn #connect
Vs0 f3 mainOut f5 tail #connect
Vs0 f5 head f4 mainIn #connect
Vs0 f6 mainOut f8 tail #connect
Vs0 f8 head f7 mainIn #connect
Vs0 f7 mainOut f10 tail #connect
Vs0 f10 head f9 mainIn #connect
