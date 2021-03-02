package SRC;

public aspect TraceAspectHobday {
	 pointcut classToTrace(): within(ComponentApp) || within(DataApp) || within(ServiceApp);
	   pointcut methodToTrace():  classToTrace() &&  execution(String getName());
	   
	   before(): methodToTrace()
	   {
		   System.out.println(thisJoinPointStaticPart.getSignature() + ", " + thisJoinPointStaticPart.getSourceLocation().getLine());
	   }
	   after(): methodToTrace()
	   {
		   System.out.println(thisJoinPointStaticPart.getSourceLocation().getFileName());
	   }
}
