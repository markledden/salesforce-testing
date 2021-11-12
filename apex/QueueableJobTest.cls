@isTest
public class QueueableJobTest {

    @isTest
    static void validateJob() {

        Test.startTest();

            ID apexJobId = System.enqueueJob(new QueueableJob());
            AsyncApexJob[] jobs = [Select Id FROM AsyncApexJob WHERE ApexClass.Name = 'QueueableJob'];
            System.assert(jobs.size()!=0,'Queueable Job should be created');
        
        Test.stopTest();

    }

}


