<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>自动出题</title>
</head>
	<%!
	public String putong(){
		char [] a=new char[4];
		a[0]='+';a[1]='-';a[2]='×';a[3]='÷';
		int num1=(int)(Math.random()*10+1);
		int num2=(int)(Math.random()*10+1);
		int num=(int)(Math.random()*4+0);
		String s=num1+" "+a[num]+" "+num2+" = ?";
		return s;
	}
	%>
	<%!
	public String zhenfenshu(){
		char [] a=new char[4];String m,n="";
		a[0]='+';a[1]='-';a[2]='×';a[3]='÷';
		int num1=(int)(Math.random()*10+1);
		int num2=(int)(Math.random()*10+1);
		for(;num1==num2;num1=(int)(Math.random()*10+1),num2=(int)(Math.random()*10+1)){}
			if(num1<num2){
				m=num1+"/"+num2;
			}
			else
				m=num2+"/"+num1;
			
		for(num1=(int)(Math.random()*10+1),num2=(int)(Math.random()*10+1);num1==num2;num1=(int)(Math.random()*10+1),num2=(int)(Math.random()*10+1)){}	
		
			if(num1<num2){
				n=num1+"/"+num2;
			}
			else 
				n=num2+"/"+num1;
			
		int num=(int)(Math.random()*4+0);
		String s=m+" "+a[num]+" "+n+" = ?";
		
		return s;
	}%>
	
<body>
	<%
	String type = (String)request.getParameter("type");
	int chutishu=Integer.parseInt(request.getParameter("chutishu"));
	int j=0;
 	String []a=new String [chutishu];
	
	for(j=0;j<chutishu;j++){
		if(type.equals("zhengshu"))
			a[j]=putong();
		else if(type.equals("zhenfenshu"))
			a[j]=zhenfenshu();
		else if(type.equals("douyou")){
			int m=(int)(Math.random()*2+1);
			if(m==1)
				a[j]=putong();
			else if(m==2)
				a[j]=zhenfenshu();
		}
		
		for(int k=0;k<j;k++){
			if(a[k].equals(a[j]))
				{j--;break;}
			else
				continue;
		 	}	%>
	<%=j+1+"、  "+a[j]%><br>
	<%} %>
	
</body>
</html>