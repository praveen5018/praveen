package Com.java;

import java.util.List;

public interface ClientDao 


{
	
	
	public void insert(Clients client);
	
	public List<Clients>fetch();
	
	public void update (Clients client);
	
	public void delete(Clients client);
	
	

}
