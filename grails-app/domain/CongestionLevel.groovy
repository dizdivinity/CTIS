class CongestionLevel {
	static hasMany = [congestion_level:Report]
	Integer level
	String info
	String toString()
	{
		return "$info"
	}
    static constraints = {  
	level(unique:true,blank:false) 
	info(blank:true)   
	 }
  
}
