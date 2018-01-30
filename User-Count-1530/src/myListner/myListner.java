package myListner;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class myListner implements HttpSessionListener {

    public myListner() {
    }
    
    ServletContext ctx=null;  
    static int total=0,uc=0;  
    
    public void sessionCreated(HttpSessionEvent se)  { 
    	total++;  
          
        ctx=se.getSession().getServletContext();  
        ctx.setAttribute("totalusers", total);   
    	System.out.println("Created");
        
        ServletContext sc =se.getSession().getServletContext();
        
       try{ 
    	   uc = Integer.parseInt(sc.getAttribute("usercount").toString());
       	}
       catch(Exception e)
       {
    	   uc++;
    	   sc.setAttribute("usercount", uc);
       }   
    }

    public void sessionDestroyed(HttpSessionEvent e)  { 
        uc--;  
        ctx.setAttribute("usercount",uc);  
    	System.out.println("Destroyed");
    }
}
