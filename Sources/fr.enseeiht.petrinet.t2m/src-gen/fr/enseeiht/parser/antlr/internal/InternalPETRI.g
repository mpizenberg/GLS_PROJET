/*
* generated by Xtext
*/
grammar InternalPETRI;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package fr.enseeiht.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package fr.enseeiht.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import fr.enseeiht.services.PETRIGrammarAccess;

}

@parser::members {

 	private PETRIGrammarAccess grammarAccess;
 	
    public InternalPETRIParser(TokenStream input, PETRIGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "PetriNet";	
   	}
   	
   	@Override
   	protected PETRIGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRulePetriNet
entryRulePetriNet returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getPetriNetRule()); }
	 iv_rulePetriNet=rulePetriNet 
	 { $current=$iv_rulePetriNet.current; } 
	 EOF 
;

// Rule PetriNet
rulePetriNet returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='petrinet' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getPetriNetAccess().getPetrinetKeyword_0());
    }
(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getPetriNetAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPetriNetRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getPetriNetAccess().getLeftCurlyBracketKeyword_2());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getPetriNetAccess().getPetriNetElementsPetriNetElementParserRuleCall_3_0()); 
	    }
		lv_petriNetElements_3_0=rulePetriNetElement		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getPetriNetRule());
	        }
       		add(
       			$current, 
       			"petriNetElements",
        		lv_petriNetElements_3_0, 
        		"PetriNetElement");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_4='}' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getPetriNetAccess().getRightCurlyBracketKeyword_4());
    }
)
;





// Entry rule entryRulePetriNetElement
entryRulePetriNetElement returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getPetriNetElementRule()); }
	 iv_rulePetriNetElement=rulePetriNetElement 
	 { $current=$iv_rulePetriNetElement.current; } 
	 EOF 
;

// Rule PetriNetElement
rulePetriNetElement returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getPetriNetElementAccess().getNodeParserRuleCall_0()); 
    }
    this_Node_0=ruleNode
    { 
        $current = $this_Node_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getPetriNetElementAccess().getArcParserRuleCall_1()); 
    }
    this_Arc_1=ruleArc
    { 
        $current = $this_Arc_1.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleNode
entryRuleNode returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getNodeRule()); }
	 iv_ruleNode=ruleNode 
	 { $current=$iv_ruleNode.current; } 
	 EOF 
;

// Rule Node
ruleNode returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getNodeAccess().getPlaceParserRuleCall_0()); 
    }
    this_Place_0=rulePlace
    { 
        $current = $this_Place_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getNodeAccess().getTransitionParserRuleCall_1()); 
    }
    this_Transition_1=ruleTransition
    { 
        $current = $this_Transition_1.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRulePlace
entryRulePlace returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getPlaceRule()); }
	 iv_rulePlace=rulePlace 
	 { $current=$iv_rulePlace.current; } 
	 EOF 
;

// Rule Place
rulePlace returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='place' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getPlaceAccess().getPlaceKeyword_0());
    }
(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getPlaceAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPlaceRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
)(	otherlv_2='(' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getPlaceAccess().getLeftParenthesisKeyword_2_0());
    }
(
(
		lv_marking_3_0=RULE_INT
		{
			newLeafNode(lv_marking_3_0, grammarAccess.getPlaceAccess().getMarkingINTTerminalRuleCall_2_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getPlaceRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"marking",
        		lv_marking_3_0, 
        		"INT");
	    }

)
)	otherlv_4=')' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getPlaceAccess().getRightParenthesisKeyword_2_2());
    }
)?)
;





// Entry rule entryRuleTransition
entryRuleTransition returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getTransitionRule()); }
	 iv_ruleTransition=ruleTransition 
	 { $current=$iv_ruleTransition.current; } 
	 EOF 
;

// Rule Transition
ruleTransition returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='transition' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getTransitionAccess().getTransitionKeyword_0());
    }
(
(
		lv_name_1_0=RULE_ID
		{
			newLeafNode(lv_name_1_0, grammarAccess.getTransitionAccess().getNameIDTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getTransitionRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"ID");
	    }

)
))
;





// Entry rule entryRuleArc
entryRuleArc returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getArcRule()); }
	 iv_ruleArc=ruleArc 
	 { $current=$iv_ruleArc.current; } 
	 EOF 
;

// Rule Arc
ruleArc returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='arc' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getArcAccess().getArcKeyword_0());
    }
(	otherlv_1='(' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getArcAccess().getLeftParenthesisKeyword_1_0());
    }
(
(
		lv_multiplicity_2_0=RULE_INT
		{
			newLeafNode(lv_multiplicity_2_0, grammarAccess.getArcAccess().getMultiplicityINTTerminalRuleCall_1_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getArcRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"multiplicity",
        		lv_multiplicity_2_0, 
        		"INT");
	    }

)
)	otherlv_3=')' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getArcAccess().getRightParenthesisKeyword_1_2());
    }
)?(
(
		lv_readOnly_4_0=	'r' 
    {
        newLeafNode(lv_readOnly_4_0, grammarAccess.getArcAccess().getReadOnlyRKeyword_2_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getArcRule());
	        }
       		setWithLastConsumed($current, "readOnly", true, "r");
	    }

)
)?	otherlv_5='from' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getArcAccess().getFromKeyword_3());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getArcRule());
	        }
        }
	otherlv_6=RULE_ID
	{
		newLeafNode(otherlv_6, grammarAccess.getArcAccess().getPredecessorNodeCrossReference_4_0()); 
	}

)
)	otherlv_7='to' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getArcAccess().getToKeyword_5());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getArcRule());
	        }
        }
	otherlv_8=RULE_ID
	{
		newLeafNode(otherlv_8, grammarAccess.getArcAccess().getSuccessorNodeCrossReference_6_0()); 
	}

)
))
;





RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'u'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


