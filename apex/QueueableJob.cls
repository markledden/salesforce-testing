public without sharing class QueueableJob implements Queueable {

    public void execute(QueueableContext context) {

        System.debug('Queable Job has run');
    }
}

