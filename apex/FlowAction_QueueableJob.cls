public with sharing class FlowAction_QueueableJob {

    public class Input { 

        @invocableVariable (label='Some String from the Flow' required=true)
        public String someString;
    }

    public class Output {
        
        @invocableVariable (label='Return a Number')
        public String jobId;
    }

    @invocableMethod(label='Queueable Job' description='' category='')
    public static List<Output> flowAction(List<Input> inputList) {

        Output output = new Output();
        List<Output> outputWrapper = new List<Output>();

        for (Input i : inputList) {

            String someString = i.someString;

            ID apexJobId = System.enqueueJob(new QueueableJob());

            output.jobId = apexJobId;
            outputWrapper.add(output);

        }

        return outputWrapper;
    }  
}
