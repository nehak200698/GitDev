trigger AccConRollUp on Contact (after insert ,after update, after delete,after undelete) {
    
    if(trigger.isafter){
        if(trigger.isInsert){
            AccConRollUpHelper.InsertHandler(trigger.new);
        }
        else if(trigger.isUpdate){
            AccConRollUpHelper.UpdateHandler(trigger.new,trigger.oldmap);
        }
        else if(trigger.isDelete){
            system.debug('test');
            AccConRollUpHelper.DeleteHandler(trigger.old);
        }
    }

}