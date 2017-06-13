package xianxian;

public class Calculator {
	double numberOne,numberTwo,result;
	String operator = "+";
	public void setNumberOne(double n){
		numberOne = n;

	}
	public double getNumberOne(){
		return numberOne;
	}
	public void setNumberTwo(double n){
		numberTwo = n;

	}
	public double getNumberTwo(){
		return numberTwo;
	}
	public void setoperator(String s){
		operator=s.trim();
	}
	public String getOperator(){
		return operator;
	}
	public double getResult(){
		if(operator.equals("+"))
			result=numberOne + numberTwo;
		else if (operator.equals("-"))
			result=numberOne-numberTwo;
		else if(operator.equals("*"))
			result=numberOne*numberTwo;
		else if (operator.equals("/"))
			result=numberOne/numberTwo;
		return result;
	}
}
