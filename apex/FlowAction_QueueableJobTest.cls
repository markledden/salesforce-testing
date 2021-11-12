@isTest
private class FlowAction_QueueableJobTest {

    @isTest
    static void validateAction() {
        
        String myString = 'abcdefg';
        
        List<FlowAction_QueueableJob.Input> testInputList = new List<FlowAction_QueueableJob.Input>();
        FlowAction_QueueableJob.Input testInput = new FlowAction_QueueableJob.Input();
        testInput.someString = myString;
        testInputList.add(testInput);

        Test.startTest();

            FlowAction_QueueableJob.flowAction(
                new List<FlowAction_QueueableJob.Input> (testInputList)
            );

        Test.stopTest();     
                
    }
     
}