trigger dc3CaseTrigger on Case (after delete, after insert, after undelete, after update, before insert, before update) { 

    dupcheck.dc3TriggerProcessGlobal triggerTool = new dupcheck.dc3TriggerProcessGlobal(trigger.isBefore, trigger.isAfter, trigger.isInsert, trigger.isUpdate, trigger.isDelete, trigger.isUndelete, 'dc3DisableDuplicateCheck__c');
    String errorString = triggerTool.execute(trigger.new, trigger.oldMap); 

    if (String.isNotEmpty(errorString)) { trigger.new[0].addError(errorString,false); } 
}